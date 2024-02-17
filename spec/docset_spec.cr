require "./spec_helper"

describe Docset do
  it "normalize and fixes wrong kind values" do
    # This loads all docsets and raise an exception if something went wrong.
    docsets = DocsetRepository.instance.map(&.docset)
    docsets.size.should_not eq(0)
  end
end
