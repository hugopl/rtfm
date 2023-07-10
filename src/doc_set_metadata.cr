require "json"

class DocSetMetadata
  include JSON::Serializable

  getter revision : String
  getter title : String
  getter version : String

  @[JSON::Field(ignore: true)]
  property path : Path = Path.new("")

  def_equals @title, @version, @revision

  def label : String
    "#{@title} v#{@version}"
  end

  def id : String
    String.build do |str|
      str << @title << "-" << @version << "r" << @revision
    end
  end
end
