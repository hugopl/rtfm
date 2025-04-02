require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeListRow < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TreeListRowClass), class_init,
        sizeof(LibGtk::TreeListRow), instance_init, 0)
    end

    GICrystal.declare_new_method(TreeListRow, g_object_get_qdata)

    # Initialize a new `TreeListRow`.
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

    def initialize(*, children : Gio::ListModel? = nil, depth : UInt32? = nil, expandable : Bool? = nil, expanded : Bool? = nil, item : GObject::Object? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !children.nil?
        (_names.to_unsafe + _n).value = "children".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, children)
        _n += 1
      end
      if !depth.nil?
        (_names.to_unsafe + _n).value = "depth".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, depth)
        _n += 1
      end
      if !expandable.nil?
        (_names.to_unsafe + _n).value = "expandable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, expandable)
        _n += 1
      end
      if !expanded.nil?
        (_names.to_unsafe + _n).value = "expanded".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, expanded)
        _n += 1
      end
      if !item.nil?
        (_names.to_unsafe + _n).value = "item".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item)
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
      @@g_type ||= LibGtk.gtk_tree_list_row_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeListRow.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def children : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "children", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def depth : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "depth", pointerof(value), Pointer(Void).null)
      value
    end

    def expandable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "expandable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def expanded=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "expanded", unsafe_value, Pointer(Void).null)
      value
    end

    def expanded? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "expanded", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def item : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "item", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def child_row(position : UInt32) : Gtk::TreeListRow?
      # gtk_tree_list_row_get_child_row: (Method)
      # @position:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_list_row_get_child_row(to_unsafe, position)

      # Return value handling
      Gtk::TreeListRow.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def children : Gio::ListModel?
      # gtk_tree_list_row_get_children: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_list_row_get_children(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def depth : UInt32
      # gtk_tree_list_row_get_depth: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_list_row_get_depth(to_unsafe)

      # Return value handling
      _retval
    end

    def expanded : Bool
      # gtk_tree_list_row_get_expanded: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_list_row_get_expanded(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def item : GObject::Object?
      # gtk_tree_list_row_get_item: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_list_row_get_item(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def parent : Gtk::TreeListRow?
      # gtk_tree_list_row_get_parent: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_list_row_get_parent(to_unsafe)

      # Return value handling
      Gtk::TreeListRow.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def position : UInt32
      # gtk_tree_list_row_get_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_list_row_get_position(to_unsafe)

      # Return value handling
      _retval
    end

    def is_expandable? : Bool
      # gtk_tree_list_row_is_expandable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_list_row_is_expandable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def expanded=(expanded : Bool) : Nil
      # gtk_tree_list_row_set_expanded: (Method | Setter)
      # @expanded:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_list_row_set_expanded(to_unsafe, expanded)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
