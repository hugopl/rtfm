require "../g_object-2.0/object"
require "./icon"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ThemedIcon < GObject::Object
    include Icon

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ThemedIconClass), class_init,
        sizeof(LibGio::ThemedIcon), instance_init, 0)
    end

    GICrystal.declare_new_method(ThemedIcon, g_object_get_qdata)

    # Initialize a new `ThemedIcon`.
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

    def initialize(*, name : ::String? = nil, names : Enumerable(::String)? = nil, use_default_fallbacks : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !names.nil?
        (_names.to_unsafe + _n).value = "names".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, names)
        _n += 1
      end
      if !use_default_fallbacks.nil?
        (_names.to_unsafe + _n).value = "use-default-fallbacks".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_default_fallbacks)
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
      @@g_type ||= LibGio.g_themed_icon_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ThemedIcon.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    def names=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "names", unsafe_value, Pointer(Void).null)
      value
    end

    def names : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "names", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def use_default_fallbacks=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-default-fallbacks", unsafe_value, Pointer(Void).null)
      value
    end

    def use_default_fallbacks? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-default-fallbacks", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(iconname : ::String) : self
      # g_themed_icon_new: (Constructor)
      # @iconname:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_themed_icon_new(iconname)

      # Return value handling
      Gio::ThemedIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_names(iconnames : Enumerable(::String)) : self
      # g_themed_icon_new_from_names: (Constructor)
      # @iconnames: (array length=len element-type Utf8)
      # @len:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      len = iconnames.size
      # Generator::ArrayArgPlan
      iconnames = iconnames.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGio.g_themed_icon_new_from_names(iconnames, len)

      # Return value handling
      Gio::ThemedIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_names(*iconnames : ::String)
      self.new_from_names(iconnames)
    end

    def self.new_with_default_fallbacks(iconname : ::String) : self
      # g_themed_icon_new_with_default_fallbacks: (Constructor)
      # @iconname:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_themed_icon_new_with_default_fallbacks(iconname)

      # Return value handling
      Gio::ThemedIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def append_name(iconname : ::String) : Nil
      # g_themed_icon_append_name: (Method)
      # @iconname:
      # Returns: (transfer none)

      # C call
      LibGio.g_themed_icon_append_name(to_unsafe, iconname)

      # Return value handling
    end

    def names : Enumerable(::String)
      # g_themed_icon_get_names: (Method | Getter)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_themed_icon_get_names(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def prepend_name(iconname : ::String) : Nil
      # g_themed_icon_prepend_name: (Method)
      # @iconname:
      # Returns: (transfer none)

      # C call
      LibGio.g_themed_icon_prepend_name(to_unsafe, iconname)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
