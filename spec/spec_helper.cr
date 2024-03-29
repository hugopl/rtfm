require "log"
require "spec"
require "gtk4"

require "../src/docset_repository"
require "../src/rtfm_log_format"

DocsetRepository.lookup_dirs.unshift(Path.new("./data"))

class Docset
  def initialize(@entries)
    @metadata = DocsetMetadata.new
    @documents_dir = Path.new(Dir.tempdir)
    build_hierarchy(@entries)
  end
end

def create_docs(docs)
  docs.sort!.map do |doc_name|
    kind = doc_name.includes?('.') ? Doc::Kind::Method : Doc::Kind::Class
    Doc.new(doc_name, kind, "/#{doc_name.underscore}.html")
  end
end

def crystal_docset : Docset
  DocsetRepository.instance.get("Crystal").not_nil!.docset
end
