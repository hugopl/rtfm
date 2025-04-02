require "./spec_helper"

module Foo
  VersionFromShard.declare
end

module Bar
  VersionFromShard.declare(__DIR__)
end

describe VersionFromShard do
  it "works" do
    # If we are not exactly in the tagged commit, the VERSION value are going
    # to be like `git describe --tags`. A complete test would call `crystal init`
    # somewhere, add some commits then test it...
    Foo::VERSION.should start_with("1.2.5")
  end

  it "works with libs" do
    Bar::VERSION.should start_with("6.6.6")
  end

  it "can build semantic version from git describe output" do
    to_semver("1.2.3", "v1.2.3-23-g2ab8c7").should eq("1.2.3+23.g2ab8c7")
    to_semver("1.2.3", "1.2.3-23-g2ab8c7").should eq("1.2.3+23.g2ab8c7")
  end
end
