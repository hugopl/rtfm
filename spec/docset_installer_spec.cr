require "file_utils"

require "./spec_helper"
require "../src/docset_installer"

private def create_docset(dir : Path, name : String, version : String) : DocsetMetadata
  Dir.mkdir_p(dir)
  File.write(dir.join("meta.json"), {name: name, title: name, version: version, revision: 0}.to_json)
  metadata = DocsetMetadata.from_json(File.read(dir.join("meta.json")))
  metadata.path = dir
  metadata
end

describe DocsetMetadata do
  it "knows the docsets the user can uninstall" do
    dir = Path.new(Dir.tempdir, "rtfm-spec-#{Random.rand(0xffff)}")
    metadata = create_docset(dir.join("Foo.docset"), "Foo", "1.0")
    metadata.removable?.should eq(true)

    # Docsets shipped by the distro live in a directory the user can't write to.
    File.chmod(dir, 0o500)
    metadata.removable?.should eq(false)
  ensure
    if dir
      File.chmod(dir, 0o700)
      FileUtils.rm_rf(dir)
    end
  end
end

describe DocsetRepository do
  it "knows about the docsets installed while running" do
    old_lookup_dirs = DocsetRepository.lookup_dirs
    dir = Path.new(Dir.tempdir, "rtfm-spec-#{Random.rand(0xffff)}")
    DocsetRepository.lookup_dirs = [dir]
    DocsetRepository.reset
    repo = DocsetRepository.instance
    added = [] of DocsetMetadata
    removed = [] of DocsetMetadata
    repo.on_added = ->(metadata : DocsetMetadata) { added << metadata; nil }
    repo.on_removed = ->(metadata : DocsetMetadata) { removed << metadata; nil }

    metadata = create_docset(dir.join("Foo-1.0.docset"), "Foo", "1.0")
    repo.add(metadata)
    repo.installed?("Foo").should eq(true)
    repo.installed?("Foo", "1.0").should eq(true)
    repo.installed?("Foo", "2.0").should eq(false)
    repo.find("Foo", "1.0").should eq(metadata)
    added.should eq([metadata])

    repo.remove(metadata)
    repo.installed?("Foo").should eq(false)
    repo.find("Foo").should be_nil
    removed.should eq([metadata])
  ensure
    FileUtils.rm_rf(dir) if dir
    DocsetRepository.lookup_dirs = old_lookup_dirs if old_lookup_dirs
    DocsetRepository.reset
  end
end
