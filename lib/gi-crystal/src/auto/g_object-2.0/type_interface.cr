module GObject
  struct TypeInterface
    @data : LibGObject::TypeInterface

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypeInterface)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(g_type : UInt64? = nil, g_instance_type : UInt64? = nil)
      @data = LibGObject::TypeInterface.new
      @data.g_type = g_type unless g_type.nil?
      @data.g_instance_type = g_instance_type unless g_instance_type.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypeInterface)).zero?
    end

    delegate :g_type, to: @data
    delegate :g_type=, to: @data
    delegate :g_instance_type, to: @data
    delegate :g_instance_type=, to: @data

    def peek_parent : GObject::TypeInterface?
      # g_type_interface_peek_parent: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_type_interface_peek_parent(to_unsafe)

      # Return value handling
      GObject::TypeInterface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
