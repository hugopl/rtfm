require "http/client"
require "uri"

require "./dash_docset"
require "./rtfm_error"

class DashFeedError < RtfmError
end

# List of docsets available for download.
#
# The list is fetched from the Dash feeds, but from the JSON index maintained by
# the Zeal project, since Kapeli only publishes one XML feed per docset and
# downloading a thousand of them isn't an option. The index is cached on disk so
# the dialog doesn't hit the network every time it's opened.
class DashFeed
  Log = ::Log.for(DashFeed)

  URL = "https://api.zealdocs.org/v1/docsets"

  # Feed is refreshed when the cached copy is older than this.
  MAX_CACHE_AGE   = 1.day
  MAX_REDIRECTS   = 5
  CONNECT_TIMEOUT = 15.seconds
  READ_TIMEOUT    = 30.seconds

  class_property url : String = URL
  class_property cache_file : Path = GLib.user_cache_dir.join("rtfm", "dash-feed.json")

  # Fetches the list of docsets available for download, this blocks the calling
  # fiber, so call it from a fiber other than the one running the main loop.
  #
  # Raises `DashFeedError` if the feed can't be fetched nor read from the cache.
  def self.fetch(force_refresh : Bool = false) : Array(DashDocset)
    json = if !force_refresh && cache_fresh?
             Log.info { "Using the docset feed cached at #{cache_file}." }
             File.read(cache_file)
           else
             download
           end

    parse(json)
  rescue e : JSON::ParseException
    raise DashFeedError.new("Docset list is corrupted: #{e.message}")
  end

  def self.parse(json : String) : Array(DashDocset)
    Array(DashDocset).from_json(json).sort!
  end

  def self.cache_fresh? : Bool
    File.exists?(cache_file) && (Time.utc - File.info(cache_file).modification_time) < MAX_CACHE_AGE
  rescue File::Error
    false
  end

  private def self.download : String
    Log.info { "Downloading docset list from #{url}." }
    json = get(url)
    save_cache(json)
    json
  rescue e : IO::Error | Socket::Error | OpenSSL::Error
    # Network is down but there's an old cache around? Better stale than nothing.
    if File.exists?(cache_file)
      Log.warn(exception: e) { "Unable to download the docset list, using the cached one." }
      return File.read(cache_file)
    end
    raise DashFeedError.new("Unable to download the list of docsets: #{e.message}")
  end

  # `HTTP::Client.get` doesn't follow redirects and the feed is behind one.
  private def self.get(url : String) : String
    MAX_REDIRECTS.times do
      uri = URI.parse(url)
      response = HTTP::Client.new(uri) do |client|
        client.connect_timeout = CONNECT_TIMEOUT
        client.read_timeout = READ_TIMEOUT
        client.compress = true
        client.get(uri.request_target)
      end

      unless response.status.redirection?
        raise DashFeedError.new("Server answered #{response.status_code} #{response.status.description}.") unless response.success?
        return response.body
      end

      location = response.headers["Location"]?
      raise DashFeedError.new("Server answered a redirection without a location.") if location.nil?

      url = uri.resolve(location).to_s
      Log.debug { "Redirected to #{url}." }
    end
    raise DashFeedError.new("Too many redirections while downloading the docset list.")
  end

  private def self.save_cache(json : String) : Nil
    Dir.mkdir_p(cache_file.dirname)
    File.write(cache_file, json)
  rescue e : File::Error
    Log.warn(exception: e) { "Unable to cache the docset list at #{cache_file}." }
  end
end
