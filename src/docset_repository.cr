require "./docset_metadata"

class DocsetRepository
  INSTANCE = new

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

  delegate each, to: @metadatas

  private def load_metadatas
    metadata_files = [] of String
    @@lookup_dirs.each do |path|
      metadata_files.concat(Dir[path.join("*.docset/meta.json")])
    end

    metadata_files.map do |path|
      metadata = DocsetMetadata.from_json(File.read(path))
      metadata.path = Path.new(Path.new(path).dirname)
      metadata
    end.sort!
  end

  def get(name : String, version : String? = nil, revision : String? = nil) : Docset?
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

  def default_docset : Docset
    get("Crystal").not_nil!
  end
end
