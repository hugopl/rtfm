require "json"

require "./docset_builder"

module Doc2Dash
  class CrystalDocsetBuilder < DocsetBuilder
    def initialize(doc_source)
      super("Crystal", doc_source)
    end

    def metadata : String
      <<-EOD
      {
          "name": "Crystal",
          "revision": 0,
          "title": "Crystal",
          "version": "#{Crystal::VERSION}"
      }
      EOD
    end

    def create_index
      json = File.open(doc_source.join("index.json"))
      repository = Doc2Dash::CrystalRepository.from_json(json)

      repository.dump(self, "")
      hide_sidebar(copy_doc("css/style.css", "api/css/style.css"))
      save_metadata
    end
  end

  class Callable
    include JSON::Serializable

    getter html_id : String
    getter name : String

    def dump(docset : DocsetBuilder, kind : Doc::Kind, namespace : String, path : String)
      name = if namespace.empty?
               @name
             else
               "#{namespace}.#{@name}"
             end
      docset.insert(name, kind, "api/#{path}##{@html_id}")
    end
  end

  class Constant
    include JSON::Serializable

    getter id : String
    getter name : String

    def dump(docset : DocsetBuilder, namespace : String, path : String)
      name = namespace.empty? ? @name : "#{namespace}::#{@name}"
      docset.insert(name, :constant, "api/#{path}##{@id}")
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

    def dump(docset : DocsetBuilder, namespace : String)
      name = if @program
               ""
             else
               namespace.empty? ? @name : "#{namespace}::#{@name}"
             end
      constants.try(&.each(&.dump(docset, name, path)))
      constructors.try(&.each(&.dump(docset, :constructor, name, @path)))
      class_methods.try(&.each(&.dump(docset, :method, name, @path)))
      instance_methods.try(&.each(&.dump(docset, :method, name, @path)))
      macros.try(&.each(&.dump(docset, :macro, name, path)))
      types.try(&.each(&.dump(docset, name)))

      kind = if @kind == "alias"
               Doc::Kind::Class
             else
               Doc::Kind.parse(@kind)
             end

      docset.insert(name, kind, docset.copy_doc(@path, "api/#{path}"))
    end
  end

  class CrystalRepository
    include JSON::Serializable

    getter program : Type

    delegate dump, to: program
  end
end

# Main

doc_source = Path.new(ARGV[0]? || "/usr/share/doc/crystal/api")
docset = Doc2Dash::CrystalDocsetBuilder.new(doc_source)
docset.create_index

puts "#{docset.count} entries indexed!"
