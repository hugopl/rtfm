require "base64"
require "json"

# A docset available for download, as described by the Dash feeds.
#
# Docsets are provided by Dash (https://kapeli.com/dash), Kapeli kindly allowed
# rtfm to use them.
class DashDocset < GObject::Object
  include Comparable(DashDocset)

  # Feed name, it's also the name used to download the docset, e.g. `Python_3`.
  getter name : String = ""
  # Human readable name, e.g. `Python 3`.
  getter title : String = ""
  getter revision : String = "0"
  # All the versions available for download, newest first. Docsets that ship a
  # single unversioned build have no versions at all.
  getter versions = [] of String
  # Size of the docset archive in bytes.
  getter size : UInt64 = 0
  # Extra terms the docset can be searched by, e.g. `python3` for `Python 3`.
  getter keywords = [] of String
  # Who maintains the docset and where to find them, only user contributed
  # docsets carry this info, the ones maintained by Dash have no author.
  getter author : String = ""
  getter author_url : String = ""

  # Icon shipped in the feed, saved along the docset when it's installed.
  getter icon_data : Bytes?
  @icon : Gdk::Texture?
  @icon_decoded = false

  def initialize(pull : JSON::PullParser)
    super()

    icon = nil
    icon2x = nil
    pull.read_object do |key|
      case key
      when "name"     then @name = pull.read_string
      when "title"    then @title = pull.read_string
      when "revision" then @revision = pull.read_string
      when "size"     then @size = pull.read_int.to_u64
      when "versions" then @versions = read_versions(pull)
      when "icon"     then icon = pull.read_string
      when "icon2x"   then icon2x = pull.read_string
      when "extra"    then read_extra(pull)
      when "author"   then read_author(pull)
      else                 pull.skip
      end
    end
    @title = @name if @title.empty?
    # Icons are base64 encoded PNGs embedded in the feed, prefer the hidpi one.
    base64_icon = icon2x || icon
    @icon_data = Base64.decode(base64_icon) if base64_icon
  rescue e : Base64::Error
    @icon_data = nil
  end

  def initialize(@name, @title = @name, @versions = [] of String, @revision = "0", @size = 0_u64)
    super()
  end

  # Some entries have `null` mixed with the version strings.
  private def read_versions(pull : JSON::PullParser) : Array(String)
    versions = [] of String
    pull.read_array do
      version = pull.read_string_or_null
      versions << version if version && !version.empty?
    end
    versions
  end

  private def read_extra(pull : JSON::PullParser) : Nil
    pull.read_object do |key|
      case key
      when "keywords" then @keywords = Array(String).new(pull)
      when "author"   then read_author(pull)
      else                 pull.skip
      end
    end
  rescue JSON::ParseException
    # The feed uses `extra` for whatever Dash needs, we only care about
    # keywords and the author.
  end

  private def read_author(pull : JSON::PullParser) : Nil
    pull.read_object do |key|
      case key
      when "name" then @author = pull.read_string
      when "link" then @author_url = pull.read_string
      else             pull.skip
      end
    end
  rescue JSON::ParseException
    # Author is optional and Dash uses it only on user contributed docsets.
  end

  # The version that gets installed when the user doesn't pick one.
  def latest_version : String?
    @versions.first?
  end

  # Only docsets with more than one version let the user pick which one to install.
  def multiple_versions? : Bool
    @versions.size > 1
  end

  def label : String
    version = latest_version
    version ? "#{@title} v#{version}" : @title
  end

  # What's available for download, e.g. `12 versions` or `v1.0.0`. It's empty for
  # the docsets that ship a single unversioned build.
  def versions_summary : String
    if multiple_versions?
      "#{@versions.size} versions"
    else
      latest_version.try { |version| "v#{version}" } || ""
    end
  end

  # Human readable size of the docset archive, e.g. `18.9MB`.
  def human_size : String
    @size.humanize_bytes(format: :JEDEC)
  end

  # Short description of what's available for download, e.g. `12 versions · 18.9MB`.
  def summary : String
    versions = versions_summary
    versions.empty? ? human_size : "#{versions} · #{human_size}"
  end

  # Text used to fuzzy search the docset.
  def search_key : String
    @keywords.empty? ? @title : "#{@title} #{@keywords.join(' ')}"
  end

  # Icon shipped in the feed, decoded on demand since it needs GDK, so it must
  # be called from the main loop thread.
  def icon : Gdk::Texture?
    return @icon if @icon_decoded

    @icon_decoded = true
    data = @icon_data
    @icon = if data && !data.empty?
              Gdk::Texture.new_from_bytes(GLib::Bytes.new(data.to_unsafe, data.size))
            end
  rescue e : GLib::Error
    Log.for(DashDocset).warn { "Unable to decode #{@name} icon: #{e.message}" }
    @icon = nil
  end

  def <=>(other : self)
    title.compare(other.title, case_insensitive: true)
  end
end
