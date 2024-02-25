require "fzy"
require "sqlite3"

require "./doc"
require "./docset_metadata"
require "./rtfm_error.cr"

class DocsetError < RtfmError
end

class Docset
  Log = ::Log.for(Docset)

  getter metadata : DocsetMetadata
  getter entries = [] of Doc
  @documents_dir : Path

  def initialize(@metadata : DocsetMetadata)
    @documents_dir = @metadata.path.join("Contents", "Resources", "Documents").expand
    load_docset
  end

  delegate title, to: @metadata
  delegate id, to: @metadata

  def uri(doc : Doc) : String
    "file://#{@documents_dir.join(doc.path)}"
  end

  # CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
  private def load_docset
    db_file = @metadata.path.join("Contents", "Resources", "docSet.dsidx")
    Log.info { "Loading #{@metadata.title} database from #{db_file}." }
    start_time = Time.monotonic

    DB.open "sqlite3://#{db_file}" do |db|
      db.query "select name, type, path from searchIndex order by name;" do |rs|
        rs.each do
          name = rs.read(String)
          kind = rs.read(String)
          path = rs.read(String)
          # Ugly hack to remove dash tags on some docsets, e.g. the redis one
          path = path.gsub(/<dash[^>]+>/, "") if path.includes?('<')
          key = key_for(name, kind)

          @entries << Doc.new(key, name, kind, path.to_s)
        end
      end
    end

    elapsed = Time.monotonic - start_time
    Log.info { "Loaded #{@entries.size} entries in #{elapsed}" }
  end

  private def key_for(name : String, kind : String) : String
    if kind.in?("method", "attribute", "constant") && !name.ends_with?(".")
      index = name.rindex('.')
      index ? name[(index + 1)...] : name
    elsif kind == "class_method" && !name.ends_with?("#")
      index = name.rindex('#')
      index ? name[index..] : name
    else
      name
    end
  end
end
