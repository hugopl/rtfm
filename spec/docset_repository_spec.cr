require "./spec_helper"
require "../src/docset_repository"

describe DocsetRepository do
  it "can list docsets" do
    DocsetRepository.lookup_dirs = [Path.new("./data")]
    repo = DocsetRepository::INSTANCE
    repo.reload
    repo.n_items.should eq(2)
    repo.get_item(0).not_nil!.name.should eq("Crystal")
    repo.get_item(1).not_nil!.name.should eq("Gtk")
    repo.get_item(1).not_nil!.title.should eq("Gtk libraries")
  end
end
