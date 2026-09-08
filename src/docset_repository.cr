require "./docset_metadata"

class DocsetRepository
  Log = ::Log.for(DocsetRepository)
  include Enumerable(DocsetMetadata)

  @metadatas : Array(DocsetMetadata)
  # Called when a docset is installed/uninstalled, so the search providers can
  # be kept in sync without the repository knowing anything about the UI.
  property on_added : Proc(DocsetMetadata, Nil)?
  property on_removed : Proc(DocsetMetadata, Nil)?

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

  # Versions of *name* currently installed, e.g. all the installed Python 3 versions.
  def installed_versions(name : String) : Array(String)
    @metadatas.compact_map do |metadata|
      metadata.version if metadata.name == name
    end
  end

  # Metadata of the installed *name* *version*, `nil` when it's not installed.
  def find(name : String, version : String? = nil) : DocsetMetadata?
    @metadatas.find do |metadata|
      metadata.name == name && (version.nil? || version.empty? || metadata.version == version)
    end
  end

  def installed?(name : String, version : String? = nil) : Bool
    !find(name, version).nil?
  end

  # Called when a docset is installed, so it can be searched without
  # restarting the application.
  def add(metadata : DocsetMetadata) : Nil
    remove(find(metadata.name, metadata.version))
    @metadatas << metadata
    @metadatas.sort!
    @on_added.try(&.call(metadata))
  end

  def remove(metadata : DocsetMetadata?) : Nil
    return if metadata.nil? || !@metadatas.includes?(metadata)

    @metadatas.delete(metadata)
    @on_removed.try(&.call(metadata))
  end

  def default_docset : DocsetMetadata
    get("Crystal").not_nil!
  end
end
