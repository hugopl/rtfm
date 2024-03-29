require "./spec_helper"

describe Doc do
  it "doesn't have parenthesis on key" do
    doc = Doc.new("Foo.foobar(hey, ho)", :method, "")
    doc.key.should eq("foobar")

    doc = Doc.new("foobar(hey, ho)", :method, "")
    doc.key.should eq("foobar")

    doc = Doc.new("Foo.foobar", :method, "")
    doc.key.should eq("foobar")

    doc = Doc.new("foobar", :method, "")
    doc.key.should eq("foobar")

    doc = Doc.new("(foobar)", :method, "")
    doc.key.should eq("(foobar)")

    doc = Doc.new(".foobar", :method, "")
    doc.key.should eq("foobar")
  end

  # The correct thing to do would be to understand why these dash tags exists
  it "strip dash tags from path" do
    doc = Doc.new("foo", :method, "path<dash bla bla>with<dash asdasd>tags")
    doc.path.should eq("pathwithtags")
  end

  pending "can iterate over docs" do
    docs = create_docs(%w(Abc Class Class.new Class2).sort!)
    docset = Docset.new(docs)
    items = [] of Doc
    docset.each do |doc|
      items << doc
    end
    items.should eq(docs)
  end
end
