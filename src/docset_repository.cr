require "./docset_metadata"

class DocsetRepository
  Log = ::Log.for(DocsetRepository)
  include Enumerable(DocsetMetadata)

  @metadatas : Array(DocsetMetadata)

  class_property lookup_dirs = [
    GLib.user_data_dir.join("rtfm/docsets"),
    GLib.user_data_dir.join("Zeal/Zeal/docsets"),
    Path.new("#{Path.new(Process.executable_path || "/usr/bin/rtfm").dirname}/../share/rtfm/docsets"),
  ]

  private def initialize
    super
    @metadatas = load_metadatas
  end

  def self.instance
    @@instance ||= new
  end

  def self.reset
    @@instance = nil
  end

  delegate each, to: @metadatas
  delegate size, to: @metadatas

  private def load_metadatas
    Log.info { "Loading docsets from: #{DocsetRepository.lookup_dirs.map(&.to_s)}" }
    metadata_files = [] of String
    @@lookup_dirs.each do |path|
      metadata_files.concat(Dir[path.join("*.docset/meta.json")])
    end

    metadata_files.map do |path|
      Log.info { "Loading metadata of #{path}" }
      metadata = DocsetMetadata.from_json(File.read(path))
      metadata.path = Path.new(Path.new(path).dirname)
      metadata
    end.sort!
  end

  def get(name : String, version : String? = nil, revision : String? = nil) : DocsetMetadata?
    candidate : DocsetMetadata? = nil
    @metadatas.each do |metadata|
      if metadata.name == name
        candidate ||= metadata
        if metadata.version == version
          candidate ||= metadata
          return metadata if metadata.revision == revision
        end
      end
    end
    candidate
  end

  def default_docset : DocsetMetadata
    get("Crystal").not_nil!
  end
end
