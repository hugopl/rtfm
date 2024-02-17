require "./docset_locator_provider"

class LocatorProvidersModel < GObject::Object
  include Gio::ListModel

  @providers = Array(LocatorProvider).new

  private def initialize
    super()

    DocsetRepository.instance.each do |metadata|
      @providers << DocsetLocatorProvider.new(metadata)
    end
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
