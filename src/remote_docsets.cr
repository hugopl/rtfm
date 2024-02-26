require "compress/zip"
require "http/client"
require "xml"
require "json"
require "colorize"

class RemoteDocset
  include JSON::Serializable

  getter title : String
  getter version : String
  getter other_versions : Array(String)
  getter urls : Array(String)

  def initialize(@title, @version, @other_versions, @urls)
  end
end

class RemoteDocsetRepository
  include JSON::Serializable

  Log        = ::Log.for(self)
  CACHE_FILE = "remote_docsets.json"
  FEED_URL   = "https://github.com/Kapeli/feeds/archive/refs/heads/master.zip"

  getter etag : String?
  getter docsets : Array(RemoteDocset)
  getter last_updated : Time?

  def initialize
    @docsets = Array(RemoteDocset).new
  end

  def self.new
    File.open(cache_file_path) do |file|
      from_json(file)
    end
  rescue
    Log.error { "Unable to read cache at: #{cache_file_path}" }
    instance = allocate
    instance.initialize
    instance
  end

  def self.cache_file_path
    cache_dir = GLib.user_cache_dir
    File.join(cache_dir, CACHE_FILE)
  end

  def save
    File.open(RemoteDocsetRepository.cache_file_path, "w") do |file|
      to_json(file)
    end
  end

  def update : Nil
    etag = @etag
    headers = HTTP::Headers{"If-None-Match" => etag} if etag
    update(FEED_URL, headers)
    @last_updated = Time.utc
  end

  private def update(url : String, headers : HTTP::Headers?) : Nil
    Log.info { "Fetching update from #{url} with #{headers}" }
    HTTP::Client.get(url, headers) do |response|
      if response.status.found? || response.status.moved_permanently?
        return update(response.headers["Location"], headers)
      elsif response.status.not_modified?
        Log.info { "Not modified!" }
        return
      end

      etag = response.headers["ETag"]
      docsets = Array(RemoteDocset).new

      file = File.tempfile("docsets", ".zip")
      IO.copy(response.body_io, file)
      file.close
      Compress::Zip::File.new(file.path).entries.each do |entry|
        next unless entry.filename.ends_with?(".xml")

        title = Path[entry.filename].basename.tr("_", " ")[0...-4]
        entry.open do |io|
          doc = XML.parse(io)
          version = doc.xpath_string("string(/entry/version/text())")
          other_versions = Array(String).new
          urls = Array(String).new

          doc.xpath_nodes("/entry/url").each do |node|
            urls << node.text
          end

          doc.xpath_nodes("/entry/other-versions/version/name").each do |node|
            other_versions << node.text
          end
          @docsets << RemoteDocset.new(title, version, other_versions, urls)
        end
      end
      @etag = etag
      Log.info { "Got etag: #{etag}" }
      @docsets = docsets
    end
  end
end
