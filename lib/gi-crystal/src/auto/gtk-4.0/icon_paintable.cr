require "../g_object-2.0/object"
require "../gdk-4.0/paintable"

require "./symbolic_paintable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class IconPaintable < GObject::Object
    include Gdk::Paintable
    include SymbolicPaintable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::IconPaintableClass), class_init,
        sizeof(LibGtk::IconPaintable), instance_init, 0)
    end

    GICrystal.declare_new_method(IconPaintable, g_object_get_qdata)

    # Initialize a new `IconPaintable`.
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

    def initialize(*, file : Gio::File? = nil, icon_name : ::String? = nil, is_symbolic : Bool? = nil, scale : Int32? = nil, size : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !file.nil?
        (_names.to_unsafe + _n).value = "file".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, file)
        _n += 1
      end
      if !icon_name.nil?
        (_names.to_unsafe + _n).value = "icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_name)
        _n += 1
      end
      if !is_symbolic.nil?
        (_names.to_unsafe + _n).value = "is-symbolic".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_symbolic)
        _n += 1
      end
      if !scale.nil?
        (_names.to_unsafe + _n).value = "scale".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale)
        _n += 1
      end
      if !size.nil?
        (_names.to_unsafe + _n).value = "size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, size)
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
      @@g_type ||= LibGtk.gtk_icon_paintable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::IconPaintable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def file=(value : Gio::File?) : Gio::File?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "file", unsafe_value, Pointer(Void).null)
      value
    end

    def file : Gio::File?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "file", pointerof(value), Pointer(Void).null)
      Gio::AbstractFile.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def icon_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "icon-name", unsafe_value, Pointer(Void).null)
      value
    end

    def icon_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#icon_name` property to nil.
    def icon_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "icon-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#icon_name`, but can return nil.
    def icon_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def is_symbolic=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-symbolic", unsafe_value, Pointer(Void).null)
      value
    end

    def is_symbolic? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-symbolic", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def scale=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "scale", unsafe_value, Pointer(Void).null)
      value
    end

    def scale : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "scale", pointerof(value), Pointer(Void).null)
      value
    end

    def size=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "size", unsafe_value, Pointer(Void).null)
      value
    end

    def size : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "size", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new_for_file(file : Gio::File, size : Int32, scale : Int32) : self
      # gtk_icon_paintable_new_for_file: (Constructor)
      # @file:
      # @size:
      # @scale:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_icon_paintable_new_for_file(file, size, scale)

      # Return value handling
      Gtk::IconPaintable.new(_retval, GICrystal::Transfer::Full)
    end

    def file : Gio::File?
      # gtk_icon_paintable_get_file: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_icon_paintable_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def icon_name : ::Path?
      # gtk_icon_paintable_get_icon_name: (Method | Getter)
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGtk.gtk_icon_paintable_get_icon_name(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    @[Deprecated]
    def is_symbolic? : Bool
      # gtk_icon_paintable_is_symbolic: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_paintable_is_symbolic(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
