require "json"
require "./docset"

class DocsetMetadata < GObject::Object
  include Comparable(DocsetMetadata)

  getter revision : String = ""
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
      when "name"     then @name = pull.read_string
      when "title"    then @title = pull.read_string
      when "version"  then @version = pull.read_string
      when "revision" then @revision = pull.read_string
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
    @icon_path = @path.join("icon@2x.png").to_s
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
