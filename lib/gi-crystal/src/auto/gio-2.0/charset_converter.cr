require "../g_object-2.0/object"
require "./converter"

require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class CharsetConverter < GObject::Object
    include Converter
    include Initable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::CharsetConverterClass), class_init,
        sizeof(LibGio::CharsetConverter), instance_init, 0)
    end

    GICrystal.declare_new_method(CharsetConverter, g_object_get_qdata)

    # Initialize a new `CharsetConverter`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    def initialize(*, from_charset : ::String? = nil, to_charset : ::String? = nil, use_fallback : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !from_charset.nil?
        (_names.to_unsafe + _n).value = "from-charset".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, from_charset)
        _n += 1
      end
      if !to_charset.nil?
        (_names.to_unsafe + _n).value = "to-charset".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, to_charset)
        _n += 1
      end
      if !use_fallback.nil?
        (_names.to_unsafe + _n).value = "use-fallback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_fallback)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_charset_converter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::CharsetConverter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def from_charset=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "from-charset", unsafe_value, Pointer(Void).null)
      value
    end

    def from_charset : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "from-charset", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#from_charset` property to nil.
    def from_charset=(value : Nil) : Nil
      LibGObject.g_object_set(self, "from-charset", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#from_charset`, but can return nil.
    def from_charset? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "from-charset", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def to_charset=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "to-charset", unsafe_value, Pointer(Void).null)
      value
    end

    def to_charset : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "to-charset", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#to_charset` property to nil.
    def to_charset=(value : Nil) : Nil
      LibGObject.g_object_set(self, "to-charset", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#to_charset`, but can return nil.
    def to_charset? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "to-charset", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def use_fallback=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-fallback", unsafe_value, Pointer(Void).null)
      value
    end

    def use_fallback? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-fallback", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(to_charset : ::String, from_charset : ::String) : self
      # g_charset_converter_new: (Constructor | Throws)
      # @to_charset:
      # @from_charset:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_charset_converter_new(to_charset, from_charset, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::CharsetConverter.new(_retval, GICrystal::Transfer::Full)
    end

    def num_fallbacks : UInt32
      # g_charset_converter_get_num_fallbacks: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_charset_converter_get_num_fallbacks(to_unsafe)

      # Return value handling
      _retval
    end

    def use_fallback : Bool
      # g_charset_converter_get_use_fallback: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_charset_converter_get_use_fallback(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def use_fallback=(use_fallback : Bool) : Nil
      # g_charset_converter_set_use_fallback: (Method | Setter)
      # @use_fallback:
      # Returns: (transfer none)

      # C call
      LibGio.g_charset_converter_set_use_fallback(to_unsafe, use_fallback)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
