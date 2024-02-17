require "./spec_helper"
require "../src/docset_repository"

describe DocsetRepository do
  it "can list docsets" do
    old_lookup_dirs = DocsetRepository.lookup_dirs
    DocsetRepository.lookup_dirs = [Path.new("./data")]
    DocsetRepository.reset
    repo = DocsetRepository.instance
    repo.size.should eq(2)
    repo.default_docset.should_not eq(nil)
    repo.get("Gtk").should_not eq(nil)
  ensure
    DocsetRepository.lookup_dirs = old_lookup_dirs if old_lookup_dirs
  end
end
