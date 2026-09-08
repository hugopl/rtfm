require "./spec_helper"
require "../src/dash_feed"

private FEED = <<-JSON
  [
    {
      "name": "Python_3",
      "title": "Python 3",
      "sourceId": "com.kapeli",
      "revision": "0",
      "versions": ["3.14.6", null, "3.13.7"],
      "icon": "",
      "icon2x": "",
      "extra": { "keywords": ["python3", "python"], "isJavaScriptEnabled": true },
      "size": 19840456,
      "tarix": true
    },
    {
      "name": "Ack_Cheatsheet",
      "title": "Ack (cheatsheet)",
      "sourceId": "com.kapeli",
      "revision": "1",
      "versions": ["1.0.0"],
      "size": 115622,
      "tarix": true
    }
  ]
  JSON

describe DashFeed do
  it "parses the docset feed sorted by title" do
    docsets = DashFeed.parse(FEED)
    docsets.map(&.name).should eq(%w(Ack_Cheatsheet Python_3))
  end

  it "parses docset metadata" do
    docset = DashFeed.parse(FEED).last
    docset.name.should eq("Python_3")
    docset.title.should eq("Python 3")
    docset.revision.should eq("0")
    docset.size.should eq(19_840_456)
    docset.keywords.should eq(%w(python3 python))
  end

  it "ignores the null versions found on some feed entries" do
    docset = DashFeed.parse(FEED).last
    docset.versions.should eq(%w(3.14.6 3.13.7))
    docset.latest_version.should eq("3.14.6")
    docset.multiple_versions?.should eq(true)
  end

  it "knows docsets with a single version" do
    docset = DashFeed.parse(FEED).first
    docset.multiple_versions?.should eq(false)
    docset.latest_version.should eq("1.0.0")
    docset.label.should eq("Ack (cheatsheet) v1.0.0")
  end

  it "searches docsets by their keywords" do
    docset = DashFeed.parse(FEED).last
    docset.search_key.should eq("Python 3 python3 python")
  end
end

describe DocsetRepository do
  it "knows what's installed" do
    repo = DocsetRepository.instance
    repo.installed?("Crystal").should eq(true)
    repo.installed?("Python_3").should eq(false)
    repo.installed_versions("Gtk").should eq(["4"])
  end
end
