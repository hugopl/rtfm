require "file_utils"

require "./spec_helper"

private CORE_DATA_SCHEMA = [
  "CREATE TABLE ZTOKEN (Z_PK INTEGER PRIMARY KEY, ZTOKENNAME TEXT, ZTOKENTYPE INTEGER, ZMETAINFORMATION INTEGER)",
  "CREATE TABLE ZTOKENTYPE (Z_PK INTEGER PRIMARY KEY, ZTYPENAME TEXT)",
  "CREATE TABLE ZTOKENMETAINFORMATION (Z_PK INTEGER PRIMARY KEY, ZANCHOR TEXT, ZFILE INTEGER)",
  "CREATE TABLE ZFILEPATH (Z_PK INTEGER PRIMARY KEY, ZPATH TEXT)",
  "INSERT INTO ZTOKENTYPE VALUES (1, 'Class'), (2, 'Method')",
  "INSERT INTO ZFILEPATH VALUES (1, 'api/foo.html')",
  "INSERT INTO ZTOKENMETAINFORMATION VALUES (1, NULL, 1), (2, '//apple_ref/Method/bar', 1)",
  "INSERT INTO ZTOKEN VALUES (1, 'Foo', 1, 1), (2, 'Foo.bar', 2, 2)",
]

# Docsets generated from Apple docs have no `searchIndex` table.
private def create_core_data_docset(dir : Path) : DocsetMetadata
  Dir.mkdir_p(dir.join("Contents", "Resources"))
  DB.open("sqlite3://#{dir.join("Contents", "Resources", "docSet.dsidx")}") do |db|
    CORE_DATA_SCHEMA.each { |sql| db.exec(sql) }
  end

  metadata = DocsetMetadata.new("Core Data", "1.0")
  metadata.path = dir
  metadata
end

describe Docset do
  it "loads docsets using the Core Data schema" do
    dir = Path.new(Dir.tempdir, "rtfm-spec-#{Random.rand(0xffff)}.docset")
    docset = Docset.new(create_core_data_docset(dir))
    docset.entries.map { |doc| {doc.kind, doc.name, doc.path} }.should eq([
      {Doc::Kind::Class, "Foo", "api/foo.html"},
      {Doc::Kind::Method, "Foo.bar", "api/foo.html#//apple_ref/Method/bar"},
    ])
  ensure
    FileUtils.rm_rf(dir) if dir
  end

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
    crystal_docset
    # puts docset.print_doc_tree
  end
end
