require "./layout_child"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FixedLayoutChild < LayoutChild
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FixedLayoutChildClass), class_init,
        sizeof(LibGtk::FixedLayoutChild), instance_init, 0)
    end

    GICrystal.declare_new_method(FixedLayoutChild, g_object_get_qdata)

    # Initialize a new `FixedLayoutChild`.
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

    def initialize(*, child_widget : Gtk::Widget? = nil, layout_manager : Gtk::LayoutManager? = nil, transform : Gsk::Transform? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
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
      if !transform.nil?
        (_names.to_unsafe + _n).value = "transform".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transform)
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
      @@g_type ||= LibGtk.gtk_fixed_layout_child_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FixedLayoutChild.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def transform=(value : Gsk::Transform?) : Gsk::Transform?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "transform", unsafe_value, Pointer(Void).null)
      value
    end

    def transform : Gsk::Transform?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "transform", pointerof(value), Pointer(Void).null)
      Gsk::Transform.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def transform : Gsk::Transform?
      # gtk_fixed_layout_child_get_transform: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_fixed_layout_child_get_transform(to_unsafe)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def transform=(transform : Gsk::Transform) : Nil
      # gtk_fixed_layout_child_set_transform: (Method | Setter)
      # @transform:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_fixed_layout_child_set_transform(to_unsafe, transform)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
