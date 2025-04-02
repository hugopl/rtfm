require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class EnumListItem < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(EnumListItem, g_object_get_qdata)

    # Initialize a new `EnumListItem`.
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

    def initialize(*, name : ::String? = nil, nick : ::String? = nil, value : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !nick.nil?
        (_names.to_unsafe + _n).value = "nick".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, nick)
        _n += 1
      end
      if !value.nil?
        (_names.to_unsafe + _n).value = "value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value)
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
      @@g_type ||= LibAdw.adw_enum_list_item_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::EnumListItem.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def nick : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "nick", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#nick`, but can return nil.
    def nick? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "nick", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def value : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "value", pointerof(value), Pointer(Void).null)
      value
    end

    def name : ::String
      # adw_enum_list_item_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_enum_list_item_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def nick : ::String
      # adw_enum_list_item_get_nick: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_enum_list_item_get_nick(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def value : Int32
      # adw_enum_list_item_get_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_enum_list_item_get_value(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
