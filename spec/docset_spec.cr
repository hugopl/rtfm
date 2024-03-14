require "./spec_helper"

describe Docset do
  it "normalize and fixes wrong kind values" do
    # This loads all docsets and raise an exception if something went wrong.
    # So this test depends on installed docsets
    docsets = DocsetRepository.instance.map(&.docset)
    docsets.size.should_not eq(0)
  end

  it "build the docset tree" do
    docs = create_docs(%w(Abc Class Class.new Class2).sort!)
    docset = Docset.new(docs)
    docset.doc_count.should eq(4)

    docs[0].parent.should eq(docset.root)
    docs[1].parent.should eq(docset.root)
    docs[2].parent.should eq(docs[1])
    docs[3].parent.should eq(docset.root)

    docset.root.children.map(&.name).should eq(%w(Abc Class Class2))
    docs[0].children.should eq(nil)
    docs[1].children.should eq([docs[2]])
    docs[2].children.should eq(nil)
    docs[3].children.should eq(nil)
  end
end
