require "./layout_child"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class OverlayLayoutChild < LayoutChild
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::OverlayLayoutChildClass), class_init,
        sizeof(LibGtk::OverlayLayoutChild), instance_init, 0)
    end

    GICrystal.declare_new_method(OverlayLayoutChild, g_object_get_qdata)

    # Initialize a new `OverlayLayoutChild`.
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

    def initialize(*, child_widget : Gtk::Widget? = nil, clip_overlay : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, measure : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !child_widget.nil?
        (_names.to_unsafe + _n).value = "child-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child_widget)
        _n += 1
      end
      if !clip_overlay.nil?
        (_names.to_unsafe + _n).value = "clip-overlay".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, clip_overlay)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !measure.nil?
        (_names.to_unsafe + _n).value = "measure".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, measure)
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
      @@g_type ||= LibGtk.gtk_overlay_layout_child_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::OverlayLayoutChild.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def clip_overlay=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "clip-overlay", unsafe_value, Pointer(Void).null)
      value
    end

    def clip_overlay? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "clip-overlay", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def measure=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "measure", unsafe_value, Pointer(Void).null)
      value
    end

    def measure? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "measure", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def clip_overlay : Bool
      # gtk_overlay_layout_child_get_clip_overlay: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_overlay_layout_child_get_clip_overlay(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def measure : Bool
      # gtk_overlay_layout_child_get_measure: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_overlay_layout_child_get_measure(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def clip_overlay=(clip_overlay : Bool) : Nil
      # gtk_overlay_layout_child_set_clip_overlay: (Method | Setter)
      # @clip_overlay:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_overlay_layout_child_set_clip_overlay(to_unsafe, clip_overlay)

      # Return value handling
    end

    def measure=(measure : Bool) : Nil
      # gtk_overlay_layout_child_set_measure: (Method | Setter)
      # @measure:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_overlay_layout_child_set_measure(to_unsafe, measure)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
