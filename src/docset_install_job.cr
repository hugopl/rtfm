require "./dash_docset"
require "./docset_metadata"

# One docset install/uninstall in progress, or waiting in the installer queue.
#
# Jobs are created by `DocsetInstaller` and only touched from the main loop
# thread, but for the `progress` and `state` updates the worker fiber pushes
# into it via `GLib.idle_add`.
class DocsetInstallJob
  enum Kind
    Install
    Uninstall
  end

  enum State
    Queued
    Downloading
    Extracting
    Removing
    Done
    Failed
    Cancelled
  end

  getter kind : Kind
  # Feed name of the docset, e.g. `Python_3`.
  getter name : String
  # Version being installed/removed, empty for docsets shipping a single
  # unversioned build.
  getter version : String
  getter title : String
  # Docset being installed, `nil` on uninstall jobs, since those only need the
  # metadata of what's already on disk.
  getter docset : DashDocset?
  getter metadata : DocsetMetadata?
  property state : State = State::Queued
  # How much of the download is done, from 0.0 to 1.0, or `nil` when the server
  # doesn't tell the archive size.
  property progress : Float64? = nil
  # Bytes already downloaded and, when the server tells it, how many are
  # expected. Used to tell the user how much of the archive is left.
  property downloaded : UInt64 = 0_u64
  property total : UInt64? = nil
  property error : String? = nil
  @cancelled = false

  def self.install(docset : DashDocset, version : String?) : self
    new(:install, docset.name, version || "", docset.title, docset: docset)
  end

  def self.uninstall(metadata : DocsetMetadata) : self
    new(:uninstall, metadata.name, metadata.version, metadata.title, metadata: metadata)
  end

  private def initialize(@kind : Kind, @name : String, @version : String, @title : String,
                         @docset : DashDocset? = nil, @metadata : DocsetMetadata? = nil)
  end

  def cancel : Nil
    @cancelled = true
  end

  def cancelled? : Bool
    @cancelled
  end

  # Jobs are identified by the docset version they act on, so the rows of the
  # dialog can tell whether they are the one being installed.
  def acts_on?(name : String, version : String?) : Bool
    @name == name && @version == (version || "")
  end

  def running? : Bool
    !@state.done? && !@state.failed? && !@state.cancelled?
  end

  # Human readable name of what the job acts on, e.g. `Python 3 v3.13.7`.
  def label : String
    @version.empty? ? @title : "#{@title} v#{@version}"
  end

  # How far the download went, e.g. `12.4MB of 45.0MB`, or just `12.4MB` when
  # the server doesn't tell the archive size. `nil` before the first byte
  # arrives, there's nothing worth showing yet.
  def download_summary : String?
    return if @downloaded.zero?

    total = @total
    downloaded = @downloaded.humanize_bytes(format: :JEDEC)
    return downloaded if total.nil? || total.zero?

    "#{downloaded} of #{total.humanize_bytes(format: :JEDEC)}"
  end
end
