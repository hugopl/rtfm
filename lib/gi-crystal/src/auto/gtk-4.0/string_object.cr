require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class StringObject < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::StringObjectClass), class_init,
        sizeof(LibGtk::StringObject), instance_init, 0)
    end

    GICrystal.declare_new_method(StringObject, g_object_get_qdata)

    # Initialize a new `StringObject`.
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

    def initialize(*, string : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !string.nil?
        (_names.to_unsafe + _n).value = "string".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, string)
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
      @@g_type ||= LibGtk.gtk_string_object_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::StringObject.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def string : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "string", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#string`, but can return nil.
    def string? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "string", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(string : ::String) : self
      # gtk_string_object_new: (Constructor)
      # @string:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_string_object_new(string)

      # Return value handling
      Gtk::StringObject.new(_retval, GICrystal::Transfer::Full)
    end

    def string : ::String
      # gtk_string_object_get_string: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_string_object_get_string(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
