require "./list_item"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ColumnViewCell < ListItem
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ColumnViewCellClass), class_init,
        sizeof(LibGtk::ColumnViewCell), instance_init, 0)
    end

    GICrystal.declare_new_method(ColumnViewCell, g_object_get_qdata)

    # Initialize a new `ColumnViewCell`.
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

    def initialize(*, accessible_description : ::String? = nil, accessible_label : ::String? = nil, activatable : Bool? = nil, child : Gtk::Widget? = nil, focusable : Bool? = nil, item : GObject::Object? = nil, position : UInt32? = nil, selectable : Bool? = nil, selected : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !accessible_description.nil?
        (_names.to_unsafe + _n).value = "accessible-description".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_description)
        _n += 1
      end
      if !accessible_label.nil?
        (_names.to_unsafe + _n).value = "accessible-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_label)
        _n += 1
      end
      if !activatable.nil?
        (_names.to_unsafe + _n).value = "activatable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, activatable)
        _n += 1
      end
      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
        _n += 1
      end
      if !focusable.nil?
        (_names.to_unsafe + _n).value = "focusable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focusable)
        _n += 1
      end
      if !item.nil?
        (_names.to_unsafe + _n).value = "item".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item)
        _n += 1
      end
      if !position.nil?
        (_names.to_unsafe + _n).value = "position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, position)
        _n += 1
      end
      if !selectable.nil?
        (_names.to_unsafe + _n).value = "selectable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selectable)
        _n += 1
      end
      if !selected.nil?
        (_names.to_unsafe + _n).value = "selected".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected)
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
      @@g_type ||= LibGtk.gtk_column_view_cell_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ColumnViewCell.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def child=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "child", unsafe_value, Pointer(Void).null)
      value
    end

    def child : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "child", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def focusable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "focusable", unsafe_value, Pointer(Void).null)
      value
    end

    def focusable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "focusable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def item : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "item", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def position : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "position", pointerof(value), Pointer(Void).null)
      value
    end

    def selected? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "selected", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def child : Gtk::Widget?
      # gtk_column_view_cell_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_cell_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def focusable : Bool
      # gtk_column_view_cell_get_focusable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_cell_get_focusable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def item : GObject::Object?
      # gtk_column_view_cell_get_item: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_cell_get_item(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def position : UInt32
      # gtk_column_view_cell_get_position: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_cell_get_position(to_unsafe)

      # Return value handling
      _retval
    end

    def selected : Bool
      # gtk_column_view_cell_get_selected: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_cell_get_selected(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child=(child : Gtk::Widget?) : Nil
      # gtk_column_view_cell_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibGtk.gtk_column_view_cell_set_child(to_unsafe, child)

      # Return value handling
    end

    def focusable=(focusable : Bool) : Nil
      # gtk_column_view_cell_set_focusable: (Method | Setter)
      # @focusable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_cell_set_focusable(to_unsafe, focusable)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
