require "fzy"
require "sqlite3"

require "./doc"
require "./doc_set_metadata"

class DocSet
  class_property lookup_dirs = [
    GLib.user_data_dir.join("rtfm/docsets"),
    GLib.user_data_dir.join("Zeal/Zeal/docsets"),
    Path.new("#{Path.new(Process.executable_path || "/usr/bin/rtfm").dirname}/../share/rtfm/docsets"),
  ]

  getter metadata : DocSetMetadata
  @entries = [] of Doc
  @haystack : Fzy::PreparedHaystack?
  @documents_dir : Path

  @@available_docsets : Hash(String, DocSetMetadata)?
  @@loaded_docsets = Hash(String, DocSet).new

  def initialize(id : String)
    @metadata = DocSet.available_docsets[id]
    @documents_dir = @metadata.path.join("Contents", "Resources", "Documents").expand
    load_docset
  end

  def self.new(id : String = default_id) : DocSet
    docset = @@loaded_docsets[id]?
    return docset unless docset.nil?

    instance = DocSet.allocate
    instance.initialize(id)
    @@loaded_docsets[id] = instance
    instance
  end

  delegate title, to: @metadata
  delegate id, to: @metadata

  def self.default_id : String
    "Crystal-#{Crystal::VERSION}r0"
  end

  def self.available_docsets : Hash(String, DocSetMetadata)
    @@available_docsets ||= load_metadatas
  end

  private def self.load_metadatas : Hash(String, DocSetMetadata)
    metadata_files = [] of String
    @@lookup_dirs.each do |path|
      metadata_files.concat(Dir[path.join("*.docset/meta.json")])
    end

    metadatas = metadata_files.map do |path|
      metadata = DocSetMetadata.from_json(File.read(path))
      metadata.path = Path.new(Path.new(path).dirname)
      metadata
    end.uniq

    hash = Hash(String, DocSetMetadata).new
    metadatas.each do |metadata|
      hash[metadata.id] = metadata
    end
    hash
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

  # CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
  private def load_docset
    db_file = @metadata.path.join("Contents", "Resources", "docSet.dsidx")
    contents_base_path = @metadata.path.join("Contents", "Resources", "Documents")
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
