module GObject
  struct TypeClass
    @data : LibGObject::TypeClass

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypeClass)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(g_type : UInt64? = nil)
      @data = LibGObject::TypeClass.new
      @data.g_type = g_type unless g_type.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypeClass)).zero?
    end

    delegate :g_type, to: @data
    delegate :g_type=, to: @data

    @[Deprecated]
    def add_private(private_size : UInt64) : Nil
      # g_type_class_add_private: (Method)
      # @private_size:
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_class_add_private(to_unsafe, private_size)

      # Return value handling
    end

    def private(private_type : UInt64) : Pointer(Void)?
      # g_type_class_get_private: (Method)
      # @private_type:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_type_class_get_private(to_unsafe, private_type)

      # Return value handling
      _retval unless _retval.null?
    end

    def peek_parent : GObject::TypeClass
      # g_type_class_peek_parent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_type_class_peek_parent(to_unsafe)

      # Return value handling
      GObject::TypeClass.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def unref : Nil
      # g_type_class_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_class_unref(to_unsafe)

      # Return value handling
    end

    def self.get(type : UInt64) : GObject::TypeClass
      # g_type_class_get: (None)
      # @type:
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_type_class_get(type)

      # Return value handling
      GObject::TypeClass.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
