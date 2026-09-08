require "./docset_locator_provider"

class LocatorProvidersModel < GObject::Object
  include Gio::ListModel

  @providers = Array(LocatorProvider).new

  private def initialize
    super()

    repository = DocsetRepository.instance
    repository.each do |metadata|
      @providers << DocsetLocatorProvider.new(metadata)
    end
    repository.on_added = ->add(DocsetMetadata)
    repository.on_removed = ->remove(DocsetMetadata)
  end

  # Docsets installed while the application is running are searchable right
  # away, no need to restart it.
  def add(metadata : DocsetMetadata) : Nil
    @providers << DocsetLocatorProvider.new(metadata)
    items_changed(@providers.size.to_u32 - 1, 0, 1)
  end

  def remove(metadata : DocsetMetadata) : Nil
    index = @providers.index do |provider|
      provider.is_a?(DocsetLocatorProvider) && provider.metadata == metadata
    end
    return if index.nil?

    @providers.delete_at(index)
    items_changed(index.to_u32, 1, 0)
  end

  def self.instance
    @@instance ||= new
  end

  def default
    @providers.first
  end

  def index_of(provider : LocatorProvider) : UInt32
    index = @providers.index(provider)
    raise IndexError.new("LocatorProvider not in LocatorProvidersModel") if index.nil?

    index.to_u32
  end

  @[GObject::Virtual]
  def get_n_items : UInt32
    @providers.size.to_u32
  end

  @[GObject::Virtual]
  def get_item(pos : UInt32) : GObject::Object?
    @providers[pos]?
  end

  @[GObject::Virtual]
  def get_item_type : UInt64
    LocatorProvider.g_type
  end
end
