require "fzy"
require "sqlite3"

require "./doc"
require "./docset_metadata"
require "./rtfm_error.cr"

class DocsetError < RtfmError
end

class Docset
  include Iterable(Doc)

  Log = ::Log.for(Docset)

  getter metadata : DocsetMetadata
  getter entries : Array(Doc)
  getter root : RootDoc = RootDoc.new
  @documents_dir : Path

  def initialize(@metadata : DocsetMetadata)
    @documents_dir = @metadata.path.join("Contents", "Resources", "Documents").expand
    @entries = load_docset
    build_hierarchy(@entries)
  end

  delegate title, to: @metadata
  delegate id, to: @metadata
  delegate size, to: @entries
  delegate print_doc_tree, to: @root

  private def uri_prefix : String
    @uri_prefix ||= "file://#{@documents_dir}/"
  end

  def uri(doc : Doc) : String
    uri_prefix + doc.path
  end

  def find_by_uri(uri : String) : Doc?
    return if uri.size < uri_prefix.size

    path = uri[uri_prefix.size..]
    # O(n) 😱
    @entries.find do |doc|
      doc.path == path
    end
  end

  private def build_hierarchy(entries)
    prev_doc = @root
    entries.each do |doc|
      add_doc(prev_doc, doc)
      prev_doc = doc
    end
  end

  private def add_doc(prev_doc : Doc, doc : Doc) : Doc
    parent_doc = prev_doc

    if !parent_doc.parent_of?(doc)
      while parent_doc != @root && !parent_doc.parent_of?(doc)
        parent_doc = parent_doc.parent
      end
    end
    parent_doc.add_child(doc)
    parent_doc
  end

  def each
    @entries.each
  end

  # CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
  private def load_docset : Array(Doc)
    db_file = @metadata.path.join("Contents", "Resources", "docSet.dsidx")
    Log.info { "Loading #{@metadata.title} database from #{db_file}." }
    start_time = Time.monotonic

    entries = nil
    DB.open "sqlite3://#{db_file}" do |db|
      n_docs = db.scalar("SELECT COUNT(*) FROM searchIndex").as(Int64)
      entries = Array(Doc).new(n_docs)
      db.query("select name, type, path from searchIndex order by name;") do |rs|
        rs.each do
          name = rs.read(String)
          kind = Doc::Kind.parse(rs.read(String))
          path = rs.read(String)
          entries << Doc.new(name, kind, path.to_s)
        end
      end
    end
    entries ||= [] of Doc
    elapsed = Time.monotonic - start_time
    Log.info { "Loaded #{entries.size} entries in #{elapsed}" }
    entries
  end
end
