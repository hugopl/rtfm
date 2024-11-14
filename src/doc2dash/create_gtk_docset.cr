require "json"

require "./docset_builder"

private MODULES = {"glib-2.0", "gobject-2.0", "gio-2.0", "gdk4", "gsk4", "gtk4", "libadwaita-1", "Pango", "webkit2gtk-4.0"}

module Doc2Dash
  class GtkDocsetBuilder < DocsetBuilder
    def initialize
      super("Gtk", Path.new)
    end

    def create_index(repo : Doc2Dash::GtkDocRepository)
      namespace = repo.meta.ns
      insert(namespace, :section, copy_doc("index.html", "api/#{namespace}/index.html"))

      copy_html_extras(namespace)
      repo.symbols.each do |symbol|
        save_symbol(repo, symbol)
        hide_sidebar(copy_doc("style.css", "api/#{namespace}/style.css"))
      end
    end

    private def copy_html_extras(namespace : String)
      sources = [] of String
      Dir.cd(doc_source) do
        {"*.png", "*.css", "*.woff"}.each do |glob|
          sources.concat(Dir[glob])
        end
      end
      sources.each do |source|
        copy_doc(source, "api/#{namespace}/#{source}")
      end
    end

    def metadata : String
      <<-EOD
      {
          "name": "Gtk",
          "revision": 0,
          "title": "Gtk libraries",
          "version": "4"
      }
      EOD
    end

    def save_symbol(repo, symbol : GtkDocSymbol)
      name : String? = nil
      kind : Doc::Kind? = nil
      source : String? = nil
      namespace = repo.meta.ns

      type = symbol.type
      case type
      when "class", "record", "constant", "interface", "function", "enum", "alias", "function_macro", "bitfield", "callback", "domain", "union"
        name = "#{namespace}::#{symbol.name}"
        kind = gtkdoc_type_to_kind(type)
        prefix = type_to_prefix(type)
        source = "#{prefix}.#{symbol.name}.html"
      when "method", "property", "vfunc", "signal", "ctor", "class_method", "type_func"
        name = if type.in?("type_func", "class_method")
                 "#{namespace}::#{symbol.type_name}.#{symbol.name}"
               else
                 "#{namespace}::#{symbol.type_name}##{symbol.name}"
               end
        kind = gtkdoc_type_to_kind(type)
        prefix = type_to_prefix(type)
        source = "#{prefix}.#{symbol.type_name}.#{symbol.name}.html"
      when "content"
        name = symbol.name
        kind = :guide
      else
        STDERR.puts("Unknown symbol type: #{symbol.type}.")
      end

      if name && kind && source
        begin
          insert(name, kind, copy_doc(source, "api/#{namespace}/#{source}"))
        rescue e : File::NotFoundError
          # WidgetClass methods are in Widget page.
          source = source.gsub(/Class\./, ".")
          insert(name, kind, copy_doc(source, "api/#{namespace}/#{source}"))
        end
      end
    rescue e : File::NotFoundError
      STDERR.puts(e.message)
    end

    private def gtkdoc_type_to_kind(type : String) : Doc::Kind
      case type
      when "function_macro"                     then Doc::Kind::Macro
      when "record"                             then Doc::Kind::Struct
      when "ctor"                               then Doc::Kind::Constructor
      when "bitfield"                           then Doc::Kind::Enum
      when "class_method", "vfunc", "type_func" then Doc::Kind::Method
      when "domain", "alias"                    then Doc::Kind::Class
      else
        Doc::Kind.parse(type)
      end
    end

    private def type_to_prefix(type)
      return "const" if type == "constant"
      return "struct" if type == "record"
      return "iface" if type == "interface"
      return "func" if type.in?("function", "function_macro")
      return "flags" if type == "bitfield"
      return "error" if type == "domain"
      type
    end
  end

  class GtkDocMeta
    include JSON::Serializable
    getter ns : String
    getter version : String
  end

  class GtkDocSymbol
    include JSON::Serializable

    getter type : String
    getter name : String
    getter type_name : String?
    getter href : String?
  end

  class GtkDocRepository
    include JSON::Serializable

    getter meta : GtkDocMeta
    getter symbols : Array(GtkDocSymbol)
  end
end

def find_modules : Array(Path)
  basedir = Path.new("/usr/share/doc")
  MODULES.compact_map do |mod|
    print "#{mod.ljust(20, '.')}"
    mod_dir = basedir.join(mod)
    if Dir.exists?(mod_dir)
      puts "ok"
      mod_dir
    else
      puts "not found!"
    end
  end
end

# Main
docset = Doc2Dash::GtkDocsetBuilder.new
find_modules.each do |mod_path|
  File.open(mod_path.join("index.json")) do |file|
    repo = Doc2Dash::GtkDocRepository.from_json(file)
    docset.doc_source = Path.new(mod_path)
    docset.create_index(repo)
  end
end

docset.save_metadata
puts "#{docset.count} entries indexed!"
