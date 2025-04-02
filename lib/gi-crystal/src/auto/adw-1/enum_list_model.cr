require "../g_object-2.0/object"
require "../gio-2.0/list_model"

module Adw
  @[GICrystal::GeneratedWrapper]
  class EnumListModel < GObject::Object
    include Gio::ListModel

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(EnumListModel, g_object_get_qdata)

    # Initialize a new `EnumListModel`.
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

    def initialize(*, enum_type : UInt64? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !enum_type.nil?
        (_names.to_unsafe + _n).value = "enum-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enum_type)
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
      @@g_type ||= LibAdw.adw_enum_list_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::EnumListModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def enum_type=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "enum-type", unsafe_value, Pointer(Void).null)
      value
    end

    def enum_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "enum-type", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(enum_type : UInt64) : self
      # adw_enum_list_model_new: (Constructor)
      # @enum_type:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_enum_list_model_new(enum_type)

      # Return value handling
      Adw::EnumListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def find_position(value : Int32) : UInt32
      # adw_enum_list_model_find_position: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_enum_list_model_find_position(to_unsafe, value)

      # Return value handling
      _retval
    end

    def enum_type : UInt64
      # adw_enum_list_model_get_enum_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_enum_list_model_get_enum_type(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
