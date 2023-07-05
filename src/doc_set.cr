require "fzy"
require "sqlite3"

require "./doc"

class DocSet
  class_property lookup_dirs = [
    GLib.user_data_dir.join("rtfm/docsets"),
    GLib.user_data_dir.join("Zeal/Zeal/docsets"),
    Path.new("#{Path.new(Process.executable_path || "/usr/bin/rtfm").dirname}/../share/rtfm/docsets"),
  ]

  getter name : String
  @entries = [] of Doc
  @haystack : Fzy::PreparedHaystack?
  @documents_dir : Path

  def initialize(@name = DocSet.default)
    docset_dir = find_docset_dir
    @documents_dir = docset_dir.join("Contents", "Resources", "Documents").expand
    load_docset(docset_dir)
  end

  def self.default : String
    @@default ||= "Crystal"
  end

  def self.available_docsets : Array(String)
    docsets = [] of String
    @@lookup_dirs.each do |path|
      docsets.concat(Dir[path.join("*.docset")])
    end
    docsets.map! do |docset|
      docset[%r{([^\/]*)\.docset$}, 1]
    end.uniq
  end

  protected def prepare_haystack : Fzy::PreparedHaystack
    @haystack = Fzy::PreparedHaystack.new(@entries.map(&.name))
  end

  def path(doc : Doc) : String
    @documents_dir.join(doc.path).to_s
  end

  def search(term : String) : Array(Doc)
    haystack = @haystack
    haystack = prepare_haystack if haystack.nil?

    Fzy.search(term, haystack).map do |match|
      @entries[match.index]
    end
  end

  private def find_docset_dir : Path
    dir_name = "#{name}.docset"
    @@lookup_dirs.each do |path|
      candidate = path.join(dir_name)
      return candidate if Dir.exists?(candidate)
    end
    raise "can't find any docset"
  end

  # CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
  private def load_docset(path : Path)
    db_file = path.join("Contents", "Resources", "docSet.dsidx")
    contents_base_path = path.join("Contents", "Resources", "Documents")
    DB.open "sqlite3://#{db_file}" do |db|
      db.query "select name, type, path from searchIndex order by name;" do |rs|
        rs.each do
          name = rs.read(String)
          type = rs.read(String)
          path = rs.read(String)

          @entries << Doc.new(type, name, path.to_s)
        end
      end
    end
  end
end
