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

  it "#can_be_parent?" do
    Doc.new("name", :class, "").can_be_parent?.should eq(true)
    Doc.new("name", :enum, "").can_be_parent?.should eq(true)
    Doc.new("name", :mixin, "").can_be_parent?.should eq(true)
    Doc.new("name", :module, "").can_be_parent?.should eq(true)
    Doc.new("name", :namespace, "").can_be_parent?.should eq(true)
    Doc.new("name", :struct, "").can_be_parent?.should eq(true)
    RootDoc.new.can_be_parent?.should eq(true)

    Doc.new("name", :function, "").can_be_parent?.should eq(false)
    Doc.new("name", :method, "").can_be_parent?.should eq(false)
  end
end
