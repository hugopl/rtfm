require "sqlite3"
require "json"

module CrystalDoc2Dash
  class DocSet
    getter count = 0
    @db : DB::Database
    @doc_source : Path

    DOCSET_PATH = Path.new("data/Crystal.docset/Contents/Resources/Documents/api")

    def initialize(@doc_source : Path)
      Dir.mkdir_p(DOCSET_PATH)
      @db = DB.open "sqlite3://./data/Crystal.docset/Contents/Resources/docSet.dsidx"
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

      copy_html_extras
    end

    private def copy_html_extras
      Dir.mkdir_p(DOCSET_PATH.join("css"))
      css_src = @doc_source.join("css", "style.css")
      css_dest = DOCSET_PATH.join("css", "style.css")
      File.copy(css_src, css_dest)

      # Hide sidebar
      File.open(css_dest, "a") do |file|
        file.seek(0, :end)
        file.puts("\n.sidebar { display: none; }")
      end
    end

    def insert(name : String, kind : Kind, path : String)
      path = "api/#{path}"
      @db.exec("INSERT INTO searchIndex (name, type, path) VALUES(?, ?, ?)", name, kind.to_s.downcase, path)
      @count += 1
    end

    def copy_html(source : String)
      original = @doc_source.join(source)
      raise "Invalid doc" unless File.exists?(original)

      dest = DOCSET_PATH.join(source)
      Dir.mkdir_p(dest.dirname) if source.includes?(File::SEPARATOR)
      File.copy(original, dest)
    end
  end

  enum Kind
    Class
    Method
    ClassMethod
    Constant
    Constructor
    Macro
    Struct
    Module
    Alias
    Enum
    Annotation
  end

  class Callable
    include JSON::Serializable

    getter html_id : String
    getter name : String

    def dump(docset : DocSet, kind : Kind, namespace : String, path : String)
      name = if namespace.empty?
               @name
             else
               separator = kind.class_method? ? '.' : '#'
               "#{namespace}#{separator}#{@name}"
             end
      docset.insert(name, kind, "#{path}##{@html_id}")
    end
  end

  class Constant
    include JSON::Serializable

    getter id : String
    getter name : String

    def dump(docset : DocSet, namespace : String, path : String)
      name = namespace.empty? ? @name : "#{namespace}::#{@name}"
      docset.insert(name, :constant, "#{path}##{@id}")
    end
  end

  class Type
    include JSON::Serializable

    getter name : String
    getter path : String
    getter kind : String
    getter? program : Bool

    getter constants : Array(Constant)?
    getter constructors : Array(Callable)?
    getter class_methods : Array(Callable)?
    getter instance_methods : Array(Callable)?
    getter macros : Array(Callable)?
    getter types : Array(Type)?

    def dump(docset : DocSet, namespace : String)
      if @program
        name = ""
      else
        name = namespace.empty? ? @name : "#{namespace}::#{@name}"
        docset.insert(name, Kind.parse(@kind), @path)
      end

      constants.try(&.each(&.dump(docset, name, path)))
      constructors.try(&.each(&.dump(docset, :constructor, name, @path)))
      class_methods.try(&.each(&.dump(docset, :class_method, name, @path)))
      instance_methods.try(&.each(&.dump(docset, :method, name, @path)))
      macros.try(&.each(&.dump(docset, :macro, name, path)))
      types.try(&.each(&.dump(docset, name)))

      docset.copy_html(@path)
    end
  end

  class Repository
    include JSON::Serializable

    getter program : Type

    delegate dump, to: program
  end

  def create_docset(doc_source : Path)
    json = File.open(doc_source.join("index.json"))
    repository = Repository.from_json(json)

    docset = DocSet.new(doc_source)
    repository.dump(docset, "")
    puts "#{docset.count} entries indexed!"
  end

  def insert(db, *triple)
    puts triple
  end

  def main
    crystal_doc_dir = ARGV[0]? || "/usr/share/doc/crystal/api"
    create_docset(Path.new(crystal_doc_dir))
  end

  extend self
end

CrystalDoc2Dash.main if PROGRAM_NAME == __FILE__ ||
                        PROGRAM_NAME.ends_with?("/crystal-run-create_crystal_docset.tmp")
