require "./layout_manager"
require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class BoxLayout < LayoutManager
    include Orientable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::BoxLayoutClass), class_init,
        sizeof(LibGtk::BoxLayout), instance_init, 0)
    end

    GICrystal.declare_new_method(BoxLayout, g_object_get_qdata)

    # Initialize a new `BoxLayout`.
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

    def initialize(*, baseline_child : Int32? = nil, baseline_position : Gtk::BaselinePosition? = nil, homogeneous : Bool? = nil, orientation : Gtk::Orientation? = nil, spacing : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !baseline_child.nil?
        (_names.to_unsafe + _n).value = "baseline-child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, baseline_child)
        _n += 1
      end
      if !baseline_position.nil?
        (_names.to_unsafe + _n).value = "baseline-position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, baseline_position)
        _n += 1
      end
      if !homogeneous.nil?
        (_names.to_unsafe + _n).value = "homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, homogeneous)
        _n += 1
      end
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
        _n += 1
      end
      if !spacing.nil?
        (_names.to_unsafe + _n).value = "spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, spacing)
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
      @@g_type ||= LibGtk.gtk_box_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::BoxLayout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def baseline_child=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "baseline-child", unsafe_value, Pointer(Void).null)
      value
    end

    def baseline_child : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "baseline-child", pointerof(value), Pointer(Void).null)
      value
    end

    def baseline_position=(value : Gtk::BaselinePosition) : Gtk::BaselinePosition
      unsafe_value = value

      LibGObject.g_object_set(self, "baseline-position", unsafe_value, Pointer(Void).null)
      value
    end

    def baseline_position : Gtk::BaselinePosition
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "baseline-position", pointerof(value), Pointer(Void).null)
      Gtk::BaselinePosition.new(value)
    end

    def homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "homogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(orientation : Gtk::Orientation) : self
      # gtk_box_layout_new: (Constructor)
      # @orientation:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_box_layout_new(orientation)

      # Return value handling
      Gtk::BoxLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def baseline_child : Int32
      # gtk_box_layout_get_baseline_child: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_box_layout_get_baseline_child(to_unsafe)

      # Return value handling
      _retval
    end

    def baseline_position : Gtk::BaselinePosition
      # gtk_box_layout_get_baseline_position: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_box_layout_get_baseline_position(to_unsafe)

      # Return value handling
      Gtk::BaselinePosition.new(_retval)
    end

    def homogeneous : Bool
      # gtk_box_layout_get_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_box_layout_get_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def spacing : UInt32
      # gtk_box_layout_get_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_box_layout_get_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def baseline_child=(child : Int32) : Nil
      # gtk_box_layout_set_baseline_child: (Method | Setter)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_box_layout_set_baseline_child(to_unsafe, child)

      # Return value handling
    end

    def baseline_position=(position : Gtk::BaselinePosition) : Nil
      # gtk_box_layout_set_baseline_position: (Method | Setter)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_box_layout_set_baseline_position(to_unsafe, position)

      # Return value handling
    end

    def homogeneous=(homogeneous : Bool) : Nil
      # gtk_box_layout_set_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_box_layout_set_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def spacing=(spacing : UInt32) : Nil
      # gtk_box_layout_set_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_box_layout_set_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
