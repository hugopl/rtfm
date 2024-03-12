require "log"
require "spec"
require "gtk4"

require "../src/docset_repository"
require "../src/rtfm_log_format"

{% raise "Run \"make docsets\" first." unless file_exists?("data/Crystal.docset/Contents/Resources/docSet.dsidx") %}
DocsetRepository.lookup_dirs.unshift(Path.new("./data"))

def crystal_docset : Docset
  DocsetRepository.instance.get("Crystal").not_nil!.docset
end

class Docset
  # This is used on tests to test load_doc method
  @🐒️🩹️_docs : Array(Doc) = [] of Doc

  def initialize(@🐒️🩹️_docs)
    @documents_dir = Path.new
    @metadata = DocsetMetadata.new
    load_docs
  end

  def load_docs
    parent_doc = @root
    prev_doc = nil
    @🐒️🩹️_docs.each do |doc|
      parent_doc = load_doc(parent_doc, prev_doc, doc)
      prev_doc = doc
    end
  end
end

def create_docs(docs)
  docs.map do |doc_name|
    kind = doc_name.includes?('.') ? Doc::Kind::Function : Doc::Kind::Class
    Doc.new(doc_name, kind, "/#{doc_name.underscore}.html")
  end
end
