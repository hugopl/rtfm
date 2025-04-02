require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class LayoutChild < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::LayoutChildClass), class_init,
        sizeof(LibGtk::LayoutChild), instance_init, 0)
    end

    GICrystal.declare_new_method(LayoutChild, g_object_get_qdata)

    # Initialize a new `LayoutChild`.
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

    def initialize(*, child_widget : Gtk::Widget? = nil, layout_manager : Gtk::LayoutManager? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !child_widget.nil?
        (_names.to_unsafe + _n).value = "child-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child_widget)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
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
      @@g_type ||= LibGtk.gtk_layout_child_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::LayoutChild.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def child_widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "child-widget", unsafe_value, Pointer(Void).null)
      value
    end

    def child_widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "child-widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def layout_manager=(value : Gtk::LayoutManager?) : Gtk::LayoutManager?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "layout-manager", unsafe_value, Pointer(Void).null)
      value
    end

    def layout_manager : Gtk::LayoutManager?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "layout-manager", pointerof(value), Pointer(Void).null)
      Gtk::LayoutManager.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def child_widget : Gtk::Widget
      # gtk_layout_child_get_child_widget: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_layout_child_get_child_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    def layout_manager : Gtk::LayoutManager
      # gtk_layout_child_get_layout_manager: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_layout_child_get_layout_manager(to_unsafe)

      # Return value handling
      Gtk::LayoutManager.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
