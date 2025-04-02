require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TextMark < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TextMarkClass), class_init,
        sizeof(LibGtk::TextMark), instance_init, 0)
    end

    GICrystal.declare_new_method(TextMark, g_object_get_qdata)

    # Initialize a new `TextMark`.
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

    def initialize(*, left_gravity : Bool? = nil, name : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !left_gravity.nil?
        (_names.to_unsafe + _n).value = "left-gravity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, left_gravity)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
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
      @@g_type ||= LibGtk.gtk_text_mark_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TextMark.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def left_gravity=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "left-gravity", unsafe_value, Pointer(Void).null)
      value
    end

    def left_gravity? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "left-gravity", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(name : ::String?, left_gravity : Bool) : self
      # gtk_text_mark_new: (Constructor)
      # @name: (nullable)
      # @left_gravity:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_text_mark_new(name, left_gravity)

      # Return value handling
      Gtk::TextMark.new(_retval, GICrystal::Transfer::Full)
    end

    def buffer : Gtk::TextBuffer?
      # gtk_text_mark_get_buffer: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_text_mark_get_buffer(to_unsafe)

      # Return value handling
      Gtk::TextBuffer.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def deleted : Bool
      # gtk_text_mark_get_deleted: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_mark_get_deleted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def left_gravity : Bool
      # gtk_text_mark_get_left_gravity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_mark_get_left_gravity(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def name : ::String?
      # gtk_text_mark_get_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_text_mark_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def visible : Bool
      # gtk_text_mark_get_visible: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_mark_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def visible=(setting : Bool) : Nil
      # gtk_text_mark_set_visible: (Method)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_mark_set_visible(to_unsafe, setting)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
