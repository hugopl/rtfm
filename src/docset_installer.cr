require "compress/gzip"
require "crystar"
require "file_utils"
require "http/client"
require "json"
require "uri"

require "./dash_docset"
require "./docset_install_job"
require "./docset_repository"
require "./rtfm_error"

class DocsetInstallError < RtfmError
end

# Installs and uninstalls docsets.
#
# Jobs are queued and run one at a time in a background fiber, so a handful of
# clicks on the install buttons doesn't saturate the network nor the disk. The
# callbacks are always called from the main loop thread, so the dialog can
# touch widgets from them.
class DocsetInstaller
  Log = ::Log.for(DocsetInstaller)

  # Zeal's redirect server picks the closest Kapeli mirror and knows how the
  # archive of every docset version is named, e.g.
  # `.../d/com.kapeli/Python_3/3.13.7` redirects to
  # `https://newyork.kapeli.com/feeds/zzz/versions/Python/3.13.7/Python.tgz`.
  URL_TEMPLATE = "https://go.zealdocs.org/d/com.kapeli/%s/%s"

  MAX_REDIRECTS   = 5
  CONNECT_TIMEOUT = 15.seconds
  READ_TIMEOUT    = 60.seconds
  DOWNLOAD_BUFFER = 64 * 1024
  # How much must be downloaded to pulse the progress bar of a download with an
  # unknown size.
  PULSE_EVERY = 2 * 1024 * 1024
  # Docsets are always installed in the user data dir, the other lookup dirs
  # belong to the distro/Zeal.
  class_property install_dir : Path = GLib.user_data_dir.join("rtfm", "docsets")

  # Called whenever a job is queued, changes state, or finishes, so the dialog
  # can refresh itself. It's the dialog's job to look at `#current_job`/`#jobs`.
  property on_changed : Proc(Nil)?
  # Called on every download progress update, apart from `on_changed` because
  # it's called a hundred times per download and the lists don't change.
  property on_progress : Proc(Nil)?
  # Called when a job finishes, with a message to show to the user.
  property on_message : Proc(String, Nil)?

  # Jobs are only touched from the main loop thread, the worker fibers get the
  # job they must run as an argument.
  @jobs = Deque(DocsetInstallJob).new
  # Only one job runs at a time, so a handful of clicks on the install buttons
  # doesn't saturate the network nor the disk.
  @mutex = Mutex.new

  def self.instance : self
    @@instance ||= new
  end

  # Jobs waiting or in progress, the first one is the one being worked on.
  def jobs : Enumerable(DocsetInstallJob)
    @jobs
  end

  # Job being worked on, i.e. the first one that isn't waiting in the queue.
  def current_job : DocsetInstallJob?
    @jobs.find { |job| !job.state.queued? } || @jobs.first?
  end

  def busy? : Bool
    !@jobs.empty?
  end

  # Job acting on the given docset version, used by the rows to show what's
  # going on instead of yet another install button.
  def job_for(name : String, version : String?) : DocsetInstallJob?
    @jobs.find(&.acts_on?(name, version))
  end

  def install(docset : DashDocset, version : String?) : Nil
    enqueue(DocsetInstallJob.install(docset, version))
  end

  def uninstall(metadata : DocsetMetadata) : Nil
    enqueue(DocsetInstallJob.uninstall(metadata))
  end

  private def enqueue(job : DocsetInstallJob) : Nil
    return if job_for(job.name, job.version)

    @jobs << job
    changed

    spawn(name: "docset-#{job.kind}") do
      begin
        @mutex.synchronize { run(job) }
      ensure
        # The job must always leave the queue, otherwise the dialog would show
        # a progress bar forever.
        GLib.idle_add do
          finish(job)
          false
        end
      end
    end
  end

  # Runs a job outside of the main loop thread.
  private def run(job : DocsetInstallJob) : Nil
    return if job.cancelled?

    if job.kind.install?
      install_job(job)
    else
      uninstall_job(job)
    end
    change_state(job, :done) unless job.cancelled?
    # Anything may go wrong while messing with the network and the disk, and a
    # failed install must not take the whole application down.


  rescue e : Exception
    Log.error(exception: e) { "Unable to #{job.kind} #{job.label}." }
    GLib.idle_add do
      job.error = e.message
      job.state = :failed
      false
    end
  end

  private def install_job(job : DocsetInstallJob) : Nil
    docset = job.docset
    raise DocsetInstallError.new("Docset to install is unknown.") if docset.nil?

    dir = DocsetInstaller.install_dir
    Dir.mkdir_p(dir)
    archive = File.tempfile("rtfm-docset", ".tgz", dir: dir.to_s)
    begin
      change_state(job, :downloading)
      download(url_of(job), archive, job)
      archive.flush
      return if job.cancelled?

      change_state(job, :extracting)
      target = dir.join(docset_dir_name(job))
      extract(archive.path, target, job)
      return if job.cancelled?

      write_metadata(docset, job.version, target)
    ensure
      archive.close
      archive.delete
    end
  end

  private def uninstall_job(job : DocsetInstallJob) : Nil
    metadata = job.metadata
    raise DocsetInstallError.new("Docset to uninstall is unknown.") if metadata.nil?
    raise DocsetInstallError.new("#{metadata.path} can't be removed.") unless metadata.removable?

    change_state(job, :removing)
    Log.info { "Removing #{metadata.path}." }
    FileUtils.rm_rf(metadata.path)
  end

  # Docsets are installed one directory per version, so different versions of
  # the same docset can live side by side.
  private def docset_dir_name(job : DocsetInstallJob) : String
    job.version.empty? ? "#{job.name}.docset" : "#{job.name}-#{job.version}.docset"
  end

  private def url_of(job : DocsetInstallJob) : String
    version = job.version.empty? ? "latest" : job.version
    URL_TEMPLATE % {URI.encode_path_segment(job.name), URI.encode_path_segment(version)}
  end

  private def download(url : String, io : IO, job : DocsetInstallJob) : Nil
    MAX_REDIRECTS.times do
      Log.info { "Downloading #{url}." }
      uri = URI.parse(url)
      redirect : String? = nil
      HTTP::Client.new(uri) do |client|
        client.connect_timeout = CONNECT_TIMEOUT
        client.read_timeout = READ_TIMEOUT
        client.get(uri.request_target) do |response|
          if response.status.redirection?
            location = response.headers["Location"]?
            raise DocsetInstallError.new("Server answered a redirection without a location.") if location.nil?

            redirect = uri.resolve(location).to_s
          else
            raise DocsetInstallError.new("Server answered #{response.status_code} #{response.status.description}.") unless response.success?

            copy(response.body_io, io, response.headers["Content-Length"]?.try(&.to_u64?), job)
          end
        end
      end
      location = redirect
      return if location.nil?

      url = location
    end
    raise DocsetInstallError.new("Too many redirections while downloading the docset.")
  end

  private def copy(source : IO, target : IO, total : UInt64?, job : DocsetInstallJob) : Nil
    buffer = Bytes.new(DOWNLOAD_BUFFER)
    downloaded = 0_u64
    last_percent = -1
    last_pulse = 0_u64
    loop do
      return if job.cancelled?

      read = source.read(buffer)
      break if read.zero?

      target.write(buffer[0, read])
      downloaded += read

      if total.nil? || total.zero?
        # Servers that don't tell how big the archive is leave the progress bar
        # with nothing to show but a pulse.
        next if downloaded - last_pulse < PULSE_EVERY

        last_pulse = downloaded
        report(job, nil, downloaded, total)
      else
        # Downloads are dozens of megabytes long, updating the progress bar on
        # every chunk read would be just wasted main loop iterations.
        percent = (downloaded * 100 // total).to_i
        next if percent == last_percent

        last_percent = percent
        report(job, percent / 100.0, downloaded, total)
      end
    end
  end

  # Docsets are `.tgz` archives holding a single `Foo.docset` directory, they
  # are unpacked in process instead of shelling out to `tar`.
  private def extract(archive : Path | String, target : Path, job : DocsetInstallJob) : Nil
    Log.info { "Extracting #{archive} into #{target}." }
    FileUtils.rm_rf(target)
    Dir.mkdir_p(target)

    File.open(archive) do |file|
      Compress::Gzip::Reader.open(file) do |gzip|
        Crystar::Reader.open(gzip) do |tar|
          tar.each_entry do |entry|
            return if job.cancelled?

            extract_entry(entry, target)
          end
        end
      end
    end
  rescue e : Compress::Gzip::Error | Crystar::Error
    FileUtils.rm_rf(target)
    raise DocsetInstallError.new("Docset archive is corrupted: #{e.message}")
  end

  # The leading `Foo.docset` directory of the archive is stripped, so the docset
  # lands in the directory named after the version being installed.
  private def extract_entry(entry : Crystar::Header, target : Path) : Nil
    name = entry.name.split('/', 2)[1]?
    return if name.nil? || name.empty?
    # Never write outside the docset directory, no matter what the archive says.
    raise DocsetInstallError.new("Unsafe path in the docset archive: #{entry.name}") if name.starts_with?('/') || name.split('/').includes?("..")

    destination = target.join(name)
    case entry.flag.chr
    when Crystar::DIR
      Dir.mkdir_p(destination)
    when Crystar::REG
      Dir.mkdir_p(destination.dirname)
      File.open(destination, "w") { |io| IO.copy(entry.io, io) }
    when Crystar::SYMLINK
      Dir.mkdir_p(destination.dirname)
      File.symlink(entry.link_name, destination)
    else
      Log.warn { "Skipped #{entry.name}, unsupported archive entry type '#{entry.flag.chr}'." }
    end
  end

  # Docsets downloaded from the Dash feeds have no `meta.json`, the one Rtfm
  # uses to find them is written from what the feed says about the docset.
  private def write_metadata(docset : DashDocset, version : String, target : Path) : Nil
    meta = {name: docset.name, title: docset.title, version: version, revision: docset.revision}
    File.write(target.join("meta.json"), meta.to_json)

    icon = docset.icon_data
    return if icon.nil? || icon.empty?
    # Some docsets ship their own icon, no need to overwrite it with the
    # (possibly smaller) one from the feed.
    return if %w(icon.svg icon@2x.png icon.png).any? { |name| File.exists?(target.join(name)) }

    File.write(target.join("icon.png"), icon)
  end

  # Called from the worker fiber, hops into the main loop to touch the job.
  private def change_state(job : DocsetInstallJob, state : DocsetInstallJob::State) : Nil
    GLib.idle_add do
      job.state = state
      job.progress = nil
      job.downloaded = 0_u64
      job.total = nil
      changed
      false
    end
  end

  private def report(job : DocsetInstallJob, progress : Float64?, downloaded : UInt64, total : UInt64?) : Nil
    GLib.idle_add do
      job.progress = progress
      job.downloaded = downloaded
      job.total = total
      @on_progress.try(&.call)
      false
    end
  end

  # Wraps up a finished job: the docset list is updated and the user is told
  # what happened.
  private def finish(job : DocsetInstallJob) : Nil
    if job.cancelled?
      Log.info { "#{job.kind} of #{job.label} cancelled." }
    elsif job.state.failed?
      notify("Unable to #{job.kind.install? ? "install" : "uninstall"} #{job.label}: #{job.error}")
    elsif job.kind.install?
      register(job)
    else
      job.metadata.try { |metadata| DocsetRepository.instance.remove(metadata) }
      notify("#{job.label} uninstalled.")
    end

    @jobs.delete(job)
    changed
  end

  private def register(job : DocsetInstallJob) : Nil
    path = DocsetInstaller.install_dir.join(docset_dir_name(job))
    metadata = DocsetMetadata.from_json(File.read(path.join("meta.json")))
    metadata.path = path
    DocsetRepository.instance.add(metadata)
    notify("#{job.label} installed.")
  rescue e : File::Error | JSON::ParseException
    Log.error(exception: e) { "Docset installed at #{path} but its metadata can't be read." }
    job.state = :failed
    notify("#{job.label} was installed but its metadata can't be read.")
  end

  private def changed : Nil
    @on_changed.try(&.call)
  end

  private def notify(message : String) : Nil
    Log.info { message }
    @on_message.try(&.call(message))
  end
end
