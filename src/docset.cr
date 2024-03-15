require "fzy"
require "sqlite3"

require "./doc"
require "./docset_metadata"
require "./rtfm_error.cr"

class DocsetError < RtfmError
end

class Docset
  include Enumerable(Doc)

  Log = ::Log.for(Docset)

  getter metadata : DocsetMetadata
  @documents_dir : Path
  getter root = RootDoc.new
  getter doc_count = 0

  def initialize(@metadata : DocsetMetadata)
    start_time = Time.monotonic
    @documents_dir = @metadata.path.join("Contents", "Resources", "Documents").expand

    load_docs

    elapsed = Time.monotonic - start_time
    Log.info { "Loaded #{@doc_count} entries from #{@metadata.title} docset in #{elapsed}." }
  end

  delegate title, to: @metadata
  delegate id, to: @metadata

  def uri(doc : Doc) : String
    "file://#{@documents_dir.join(doc.path)}"
  end

  #def each(&block : Doc->)
  #  each(@root, &block)
  #end

  def each(doc : Doc = @root, &block : Doc->)
    block.call(doc) if doc != @root

    children = doc.children
    return if children.nil?

    children.each do |child|
      each(child, &block)
    end
  end

  private def load_docs
    parent_doc = @root
    prev_doc = nil
    query_database do |rs|
      doc = rs.read(Doc)
      parent_doc = load_doc(parent_doc, prev_doc, doc)
      prev_doc = doc
    end
  end

  # Returns the parent of the added doc.
  private def load_doc(parent_doc : Doc, prev_doc : Nil, doc : Doc) : Doc
    parent_doc.add_child(doc)
    @doc_count += 1
    parent_doc
  end

  # Returns the parent of the added doc.
  private def load_doc(parent_doc : Doc, prev_doc : Doc, doc : Doc) : Doc
    # Is a child doc?
    if prev_doc.parent_of?(doc)
      prev_doc.add_child(doc)
    else
      # find parent
      while parent_doc != @root && !parent_doc.parent_of?(doc)
        parent_doc = parent_doc.parent.not_nil!
      end
      parent_doc.add_child(doc)
    end
    @doc_count += 1
    parent_doc
  end

  private def query_database : Nil
    db_file = @metadata.path.join("Contents", "Resources", "docSet.dsidx")
    Log.info { "Loading #{@metadata.title} database from #{db_file}." }

    DB.open("sqlite3://#{db_file}") do |db|
      # CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
      db.query("select name, type AS kind, path from searchIndex order by name;") do |rs|
        yield(rs)
      end
    end
  end
end
