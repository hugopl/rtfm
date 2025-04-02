module GLib
  class VariantType
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(VariantType.g_type, pointer)
                 else
                   pointer
                 end
    end

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(VariantType.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_variant_type_get_gtype
    end

    def self.new(type_string : ::String) : self
      # g_variant_type_new: (Constructor)
      # @type_string:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_type_new(type_string)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_array(element : GLib::VariantType) : self
      # g_variant_type_new_array: (Constructor)
      # @element:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_type_new_array(element)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_dict_entry(key : GLib::VariantType, value : GLib::VariantType) : self
      # g_variant_type_new_dict_entry: (Constructor)
      # @key:
      # @value:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_type_new_dict_entry(key, value)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_maybe(element : GLib::VariantType) : self
      # g_variant_type_new_maybe: (Constructor)
      # @element:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_type_new_maybe(element)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_tuple(items : Enumerable(GLib::VariantType)) : self
      # g_variant_type_new_tuple: (Constructor)
      # @items: (array length=length element-type Interface)
      # @length:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      length = items.size
      # Generator::ArrayArgPlan
      items = items.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGLib::VariantType)))

      # C call
      _retval = LibGLib.g_variant_type_new_tuple(items, length)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_tuple(*items : GLib::VariantType)
      self.new_tuple(items)
    end

    def copy : GLib::VariantType
      # g_variant_type_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_type_copy(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::Full)
    end

    def dup_string : ::String
      # g_variant_type_dup_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_type_dup_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def element : GLib::VariantType
      # g_variant_type_element: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_element(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None)
    end

    def equal(type2 : GLib::VariantType) : Bool
      # g_variant_type_equal: (Method)
      # @type2:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_equal(to_unsafe, type2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def first : GLib::VariantType?
      # g_variant_type_first: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_variant_type_first(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def free : Nil
      # g_variant_type_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_variant_type_free(to_unsafe)

      # Return value handling
    end

    def string_length : UInt64
      # g_variant_type_get_string_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_get_string_length(to_unsafe)

      # Return value handling
      _retval
    end

    def hash : UInt32
      # g_variant_type_hash: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_hash(to_unsafe)

      # Return value handling
      _retval
    end

    def is_array : Bool
      # g_variant_type_is_array: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_array(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_basic : Bool
      # g_variant_type_is_basic: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_basic(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_container : Bool
      # g_variant_type_is_container: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_container(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_definite : Bool
      # g_variant_type_is_definite: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_definite(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_dict_entry : Bool
      # g_variant_type_is_dict_entry: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_dict_entry(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_maybe : Bool
      # g_variant_type_is_maybe: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_maybe(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_subtype_of(supertype : GLib::VariantType) : Bool
      # g_variant_type_is_subtype_of: (Method)
      # @supertype:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_subtype_of(to_unsafe, supertype)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_tuple : Bool
      # g_variant_type_is_tuple: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_tuple(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_variant : Bool
      # g_variant_type_is_variant: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_is_variant(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def key : GLib::VariantType
      # g_variant_type_key: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_key(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None)
    end

    def n_items : UInt64
      # g_variant_type_n_items: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_n_items(to_unsafe)

      # Return value handling
      _retval
    end

    def next : GLib::VariantType?
      # g_variant_type_next: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_variant_type_next(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def value : GLib::VariantType
      # g_variant_type_value: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_value(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None)
    end

    def self.checked_(type_string : ::String) : GLib::VariantType
      # g_variant_type_checked_: (None)
      # @type_string:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_checked_(type_string)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None)
    end

    def self.string_get_depth_(type_string : ::String) : UInt64
      # g_variant_type_string_get_depth_: (None)
      # @type_string:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_string_get_depth_(type_string)

      # Return value handling
      _retval
    end

    def self.string_is_valid(type_string : ::String) : Bool
      # g_variant_type_string_is_valid: (None)
      # @type_string:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_type_string_is_valid(type_string)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.string_scan(string : ::String, limit : ::String?) : Bool
      # g_variant_type_string_scan: (None)
      # @string:
      # @limit: (nullable)
      # @endptr: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      limit = if limit.nil?
                Pointer(LibC::Char).null
              else
                limit.to_unsafe
              end
      # Generator::OutArgUsedInReturnPlan
      endptr = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGLib.g_variant_type_string_scan(string, limit, endptr)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
