require "gi-crystal/gobject"
require "json"
require "./docset"

class DocsetMetadata < GObject::Object
  include Comparable(DocsetMetadata)

  getter revision : Int32 = 0
  getter name : String = ""
  getter title : String = ""
  getter version : String = ""
  getter icon_path : String = ""
  getter path : Path = Path.new("")

  @docset : Docset?

  def_equals @title, @version, @revision

  def initialize(pull : JSON::PullParser)
    super()
    pull.read_object do |key|
      case key
      when "name"
        @name = pull.read_string
      when "title"
        @title = pull.read_string
      when "version"
        @version = pull.read_string
      when "revision"
        @revision = pull.read?(Int32) || pull.read_string.to_i32
      else
        pull.skip
      end
    end
  end

  def initialize(@title = "", @version = "", @revision = "")
    super()
  end

  def label : String
    "#{@title} v#{@version}"
  end

  def id : String
    "#{@name}-#{@version}r#{@revision}"
  end

  def path=(@path)
    icon_path : String? = nil
    %w(icon.svg icon@2x.png icon.png).each do |name|
      path = @path.join(name)
      if File.exists?(path)
        icon_path = path.to_s
        break
      end
    end
    @icon_path = icon_path || ""
  end

  def docset
    @docset ||= Docset.new(self)
  end

  def <=>(other : self)
    cmp = title <=> other.title
    if cmp.zero?
      cmp = version <=> other.version
      if cmp.zero?
        cmp = revision <=> other.revision
      end
    end
    cmp
  end
end
