require "sqlite3"

class DashDocSet < DocSet
  class_property lookup_dirs = [
    GLib.user_data_dir.join("rtfm/docsets"),
    Path.new("/usr/local/share/rtfm/docsets"),
    Path.new("/usr/share/rtfm/docsets"),
    GLib.user_data_dir.join("Zeal/Zeal/docsets"), # Read Zeal docsets too
  ]

  @documents_dir : Path

  def initialize(name : String)
    super(name)

    docset_dir = find_docset_dir
    @documents_dir = docset_dir.join("Contents", "Resources", "Documents").expand
    load_docset(docset_dir)
    prepare_haystack
  end

  def path(doc : Doc) : String
    @documents_dir.join(doc.path).to_s
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
