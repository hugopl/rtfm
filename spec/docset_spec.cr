require "./spec_helper"

describe Docset do
  it "normalize and fixes wrong kind values" do
    # This loads all docsets and raise an exception if something went wrong.
    docsets = DocsetRepository.instance.map(&.docset)
    docsets.size.should_not eq(0)
  end

  it "build the doc hierarchy (I)" do
    docs = create_docs(%w(Abc Class Class.new Class2))
    docset = Docset.new(docs)
    docset.print_doc_tree.strip.should eq(<<-EOT
    Class Abc
    Class Class
      Method Class.new
    Class Class2
    EOT
    )
  end

  it "build the doc hierarchy (II)" do
    docs = create_docs(%w(Abc Abc.bar Abc.foo))
    docset = Docset.new(docs)

    docset.print_doc_tree.strip.should eq(<<-EOT
    Class Abc
      Method Abc.bar
      Method Abc.foo
    EOT
    )
  end

  it "can iterate over docs using an iterator" do
    docs = create_docs(%w(Abc Class Class.new Class2).sort!)
    docset = Docset.new(docs)
    items = [] of Doc
    it = docset.each
    while doc = it.next
      break if doc.is_a?(Iterator::Stop)

      items << doc
    end
    items.should eq(docs)
  end

  it "load crystal docset" do
    docset = crystal_docset
    # puts docset.print_doc_tree
  end
end
