require "./layout_manager"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CenterLayout < LayoutManager
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CenterLayoutClass), class_init,
        sizeof(LibGtk::CenterLayout), instance_init, 0)
    end

    GICrystal.declare_new_method(CenterLayout, g_object_get_qdata)

    # Initialize a new `CenterLayout`.
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

    def initialize(*, shrink_center_last : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !shrink_center_last.nil?
        (_names.to_unsafe + _n).value = "shrink-center-last".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, shrink_center_last)
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
      @@g_type ||= LibGtk.gtk_center_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CenterLayout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def shrink_center_last=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "shrink-center-last", unsafe_value, Pointer(Void).null)
      value
    end

    def shrink_center_last? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "shrink-center-last", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # gtk_center_layout_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_center_layout_new

      # Return value handling
      Gtk::CenterLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def baseline_position : Gtk::BaselinePosition
      # gtk_center_layout_get_baseline_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_center_layout_get_baseline_position(to_unsafe)

      # Return value handling
      Gtk::BaselinePosition.new(_retval)
    end

    def center_widget : Gtk::Widget?
      # gtk_center_layout_get_center_widget: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_center_layout_get_center_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def end_widget : Gtk::Widget?
      # gtk_center_layout_get_end_widget: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_center_layout_get_end_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def orientation : Gtk::Orientation
      # gtk_center_layout_get_orientation: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_center_layout_get_orientation(to_unsafe)

      # Return value handling
      Gtk::Orientation.new(_retval)
    end

    def shrink_center_last : Bool
      # gtk_center_layout_get_shrink_center_last: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_center_layout_get_shrink_center_last(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def start_widget : Gtk::Widget?
      # gtk_center_layout_get_start_widget: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_center_layout_get_start_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def baseline_position=(baseline_position : Gtk::BaselinePosition) : Nil
      # gtk_center_layout_set_baseline_position: (Method)
      # @baseline_position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_center_layout_set_baseline_position(to_unsafe, baseline_position)

      # Return value handling
    end

    def center_widget=(widget : Gtk::Widget?) : Nil
      # gtk_center_layout_set_center_widget: (Method)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_center_layout_set_center_widget(to_unsafe, widget)

      # Return value handling
    end

    def end_widget=(widget : Gtk::Widget?) : Nil
      # gtk_center_layout_set_end_widget: (Method)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_center_layout_set_end_widget(to_unsafe, widget)

      # Return value handling
    end

    def orientation=(orientation : Gtk::Orientation) : Nil
      # gtk_center_layout_set_orientation: (Method)
      # @orientation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_center_layout_set_orientation(to_unsafe, orientation)

      # Return value handling
    end

    def shrink_center_last=(shrink_center_last : Bool) : Nil
      # gtk_center_layout_set_shrink_center_last: (Method | Setter)
      # @shrink_center_last:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_center_layout_set_shrink_center_last(to_unsafe, shrink_center_last)

      # Return value handling
    end

    def start_widget=(widget : Gtk::Widget?) : Nil
      # gtk_center_layout_set_start_widget: (Method)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_center_layout_set_start_widget(to_unsafe, widget)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
