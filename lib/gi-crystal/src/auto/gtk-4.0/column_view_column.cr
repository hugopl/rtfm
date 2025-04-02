require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ColumnViewColumn < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ColumnViewColumnClass), class_init,
        sizeof(LibGtk::ColumnViewColumn), instance_init, 0)
    end

    GICrystal.declare_new_method(ColumnViewColumn, g_object_get_qdata)

    # Initialize a new `ColumnViewColumn`.
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

    def initialize(*, column_view : Gtk::ColumnView? = nil, expand : Bool? = nil, factory : Gtk::ListItemFactory? = nil, fixed_width : Int32? = nil, header_menu : Gio::MenuModel? = nil, id : ::String? = nil, resizable : Bool? = nil, sorter : Gtk::Sorter? = nil, title : ::String? = nil, visible : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !column_view.nil?
        (_names.to_unsafe + _n).value = "column-view".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column_view)
        _n += 1
      end
      if !expand.nil?
        (_names.to_unsafe + _n).value = "expand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, expand)
        _n += 1
      end
      if !factory.nil?
        (_names.to_unsafe + _n).value = "factory".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, factory)
        _n += 1
      end
      if !fixed_width.nil?
        (_names.to_unsafe + _n).value = "fixed-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fixed_width)
        _n += 1
      end
      if !header_menu.nil?
        (_names.to_unsafe + _n).value = "header-menu".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, header_menu)
        _n += 1
      end
      if !id.nil?
        (_names.to_unsafe + _n).value = "id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, id)
        _n += 1
      end
      if !resizable.nil?
        (_names.to_unsafe + _n).value = "resizable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resizable)
        _n += 1
      end
      if !sorter.nil?
        (_names.to_unsafe + _n).value = "sorter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sorter)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
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
      @@g_type ||= LibGtk.gtk_column_view_column_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ColumnViewColumn.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def column_view : Gtk::ColumnView?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "column-view", pointerof(value), Pointer(Void).null)
      Gtk::ColumnView.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def expand=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "expand", unsafe_value, Pointer(Void).null)
      value
    end

    def expand? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "expand", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def factory=(value : Gtk::ListItemFactory?) : Gtk::ListItemFactory?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "factory", unsafe_value, Pointer(Void).null)
      value
    end

    def factory : Gtk::ListItemFactory?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "factory", pointerof(value), Pointer(Void).null)
      Gtk::ListItemFactory.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def fixed_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "fixed-width", unsafe_value, Pointer(Void).null)
      value
    end

    def fixed_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "fixed-width", pointerof(value), Pointer(Void).null)
      value
    end

    def header_menu=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "header-menu", unsafe_value, Pointer(Void).null)
      value
    end

    def header_menu : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "header-menu", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "id", unsafe_value, Pointer(Void).null)
      value
    end

    def id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#id` property to nil.
    def id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#id`, but can return nil.
    def id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def resizable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "resizable", unsafe_value, Pointer(Void).null)
      value
    end

    def resizable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "resizable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sorter=(value : Gtk::Sorter?) : Gtk::Sorter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "sorter", unsafe_value, Pointer(Void).null)
      value
    end

    def sorter : Gtk::Sorter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sorter", pointerof(value), Pointer(Void).null)
      Gtk::Sorter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def title=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "title", unsafe_value, Pointer(Void).null)
      value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#title` property to nil.
    def title=(value : Nil) : Nil
      LibGObject.g_object_set(self, "title", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "visible", unsafe_value, Pointer(Void).null)
      value
    end

    def visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(title : ::String?, factory : Gtk::ListItemFactory?) : self
      # gtk_column_view_column_new: (Constructor)
      # @title: (nullable)
      # @factory: (transfer full) (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end
      # Generator::TransferFullArgPlan
      GICrystal.ref(factory)
      # Generator::NullableArrayPlan
      factory = if factory.nil?
                  Pointer(Void).null
                else
                  factory.to_unsafe
                end

      # C call
      _retval = LibGtk.gtk_column_view_column_new(title, factory)

      # Return value handling
      Gtk::ColumnViewColumn.new(_retval, GICrystal::Transfer::Full)
    end

    def column_view : Gtk::ColumnView?
      # gtk_column_view_column_get_column_view: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_column_view(to_unsafe)

      # Return value handling
      Gtk::ColumnView.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def expand : Bool
      # gtk_column_view_column_get_expand: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_expand(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def factory : Gtk::ListItemFactory?
      # gtk_column_view_column_get_factory: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_factory(to_unsafe)

      # Return value handling
      Gtk::ListItemFactory.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def fixed_width : Int32
      # gtk_column_view_column_get_fixed_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_fixed_width(to_unsafe)

      # Return value handling
      _retval
    end

    def header_menu : Gio::MenuModel?
      # gtk_column_view_column_get_header_menu: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_header_menu(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def id : ::String?
      # gtk_column_view_column_get_id: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def resizable : Bool
      # gtk_column_view_column_get_resizable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_resizable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def sorter : Gtk::Sorter?
      # gtk_column_view_column_get_sorter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_sorter(to_unsafe)

      # Return value handling
      Gtk::Sorter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def title : ::String?
      # gtk_column_view_column_get_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def visible : Bool
      # gtk_column_view_column_get_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_column_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def expand=(expand : Bool) : Nil
      # gtk_column_view_column_set_expand: (Method | Setter)
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_column_set_expand(to_unsafe, expand)

      # Return value handling
    end

    def factory=(factory : Gtk::ListItemFactory?) : Nil
      # gtk_column_view_column_set_factory: (Method | Setter)
      # @factory: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      factory = if factory.nil?
                  Pointer(Void).null
                else
                  factory.to_unsafe
                end

      # C call
      LibGtk.gtk_column_view_column_set_factory(to_unsafe, factory)

      # Return value handling
    end

    def fixed_width=(fixed_width : Int32) : Nil
      # gtk_column_view_column_set_fixed_width: (Method | Setter)
      # @fixed_width:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_column_set_fixed_width(to_unsafe, fixed_width)

      # Return value handling
    end

    def header_menu=(menu : Gio::MenuModel?) : Nil
      # gtk_column_view_column_set_header_menu: (Method | Setter)
      # @menu: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      menu = if menu.nil?
               Pointer(Void).null
             else
               menu.to_unsafe
             end

      # C call
      LibGtk.gtk_column_view_column_set_header_menu(to_unsafe, menu)

      # Return value handling
    end

    def id=(id : ::String?) : Nil
      # gtk_column_view_column_set_id: (Method | Setter)
      # @id: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      id = if id.nil?
             Pointer(LibC::Char).null
           else
             id.to_unsafe
           end

      # C call
      LibGtk.gtk_column_view_column_set_id(to_unsafe, id)

      # Return value handling
    end

    def resizable=(resizable : Bool) : Nil
      # gtk_column_view_column_set_resizable: (Method | Setter)
      # @resizable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_column_set_resizable(to_unsafe, resizable)

      # Return value handling
    end

    def sorter=(sorter : Gtk::Sorter?) : Nil
      # gtk_column_view_column_set_sorter: (Method | Setter)
      # @sorter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sorter = if sorter.nil?
                 Pointer(Void).null
               else
                 sorter.to_unsafe
               end

      # C call
      LibGtk.gtk_column_view_column_set_sorter(to_unsafe, sorter)

      # Return value handling
    end

    def title=(title : ::String?) : Nil
      # gtk_column_view_column_set_title: (Method | Setter)
      # @title: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end

      # C call
      LibGtk.gtk_column_view_column_set_title(to_unsafe, title)

      # Return value handling
    end

    def visible=(visible : Bool) : Nil
      # gtk_column_view_column_set_visible: (Method | Setter)
      # @visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_column_set_visible(to_unsafe, visible)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
