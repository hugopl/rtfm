require "sqlite3"
require "../doc"

module Doc2Dash
  # A helper class to create docsets.
  abstract class DocsetBuilder
    getter count = 0
    @name : String
    @db : DB::Database
    property doc_source : Path
    getter html_dest : Path

    def initialize(@name : String, @doc_source : Path)
      @html_dest = Path.new("data/#{@name}.docset/Contents/Resources/Documents")
      Dir.mkdir_p(@html_dest)

      @db = DB.open "sqlite3://./data/#{@name}.docset/Contents/Resources/docSet.dsidx"
      @db.exec("DROP TABLE IF EXISTS searchIndex;")
      sql = <<-EOT
      CREATE TABLE searchIndex(
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        type TEXT NOT NULL,
        path TEXT NOT NULL
      );
      EOT
      @db.exec("BEGIN TRANSACTION;")
      @db.exec(sql)
      at_exit do
        @db.exec("COMMIT;")
        @db.close
      end
    end

    def insert(name : String, kind : Doc::Kind, path : String)
      @db.exec("INSERT INTO searchIndex (name, type, path) VALUES(?, ?, ?)", name, kind.to_s.downcase, path)
      @count += 1
    end

    def copy_doc(source : String, dest : String? = nil) : String
      original = @doc_source.join(source)
      raise File::NotFoundError.new("Source not found: #{source}", file: source) unless File.exists?(original)

      real_dest = @html_dest.join(dest || source)
      Dir.mkdir_p(Path.new(real_dest).dirname)
      File.copy(original, real_dest)
      dest || source
    end

    def hide_sidebar(css : String)
      File.open(@html_dest.join(css), "a") do |file|
        file.seek(0, :end)
        file.puts("\n.sidebar { display: none; }")
      end
    end

    abstract def metadata

    def save_metadata
      File.write("data/#{@name}.docset/meta.json", metadata)
      File.copy("data/#{@name}.svg", "data/#{@name}.docset/icon.svg")
    end
  end
end
