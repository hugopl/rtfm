require "../g_object-2.0/initially_unowned"
require "./buildable"

require "./cell_layout"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CellArea < GObject::InitiallyUnowned
    include Buildable
    include CellLayout

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CellAreaClass), class_init,
        sizeof(LibGtk::CellArea), instance_init, 0)
    end

    GICrystal.declare_new_method(CellArea, g_object_get_qdata)

    # Initialize a new `CellArea`.
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

    def initialize(*, edit_widget : Gtk::CellEditable? = nil, edited_cell : Gtk::CellRenderer? = nil, focus_cell : Gtk::CellRenderer? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !edit_widget.nil?
        (_names.to_unsafe + _n).value = "edit-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, edit_widget)
        _n += 1
      end
      if !edited_cell.nil?
        (_names.to_unsafe + _n).value = "edited-cell".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, edited_cell)
        _n += 1
      end
      if !focus_cell.nil?
        (_names.to_unsafe + _n).value = "focus-cell".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_cell)
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
      @@g_type ||= LibGtk.gtk_cell_area_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CellArea.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def edit_widget : Gtk::CellEditable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "edit-widget", pointerof(value), Pointer(Void).null)
      Gtk::AbstractCellEditable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def edited_cell : Gtk::CellRenderer?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "edited-cell", pointerof(value), Pointer(Void).null)
      Gtk::CellRenderer.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def focus_cell=(value : Gtk::CellRenderer?) : Gtk::CellRenderer?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "focus-cell", unsafe_value, Pointer(Void).null)
      value
    end

    def focus_cell : Gtk::CellRenderer?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "focus-cell", pointerof(value), Pointer(Void).null)
      Gtk::CellRenderer.new(value, GICrystal::Transfer::None) unless value.null?
    end

    @[Deprecated]
    def activate(context : Gtk::CellAreaContext, widget : Gtk::Widget, cell_area : Gdk::Rectangle, flags : Gtk::CellRendererState, edit_only : Bool) : Bool
      # gtk_cell_area_activate: (Method)
      # @context:
      # @widget:
      # @cell_area:
      # @flags:
      # @edit_only:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_activate(to_unsafe, context, widget, cell_area, flags, edit_only)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def activate_cell(widget : Gtk::Widget, renderer : Gtk::CellRenderer, event : Gdk::Event, cell_area : Gdk::Rectangle, flags : Gtk::CellRendererState) : Bool
      # gtk_cell_area_activate_cell: (Method)
      # @widget:
      # @renderer:
      # @event:
      # @cell_area:
      # @flags:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_activate_cell(to_unsafe, widget, renderer, event, cell_area, flags)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def add(renderer : Gtk::CellRenderer) : Nil
      # gtk_cell_area_add: (Method)
      # @renderer:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_add(to_unsafe, renderer)

      # Return value handling
    end

    @[Deprecated]
    def add_focus_sibling(renderer : Gtk::CellRenderer, sibling : Gtk::CellRenderer) : Nil
      # gtk_cell_area_add_focus_sibling: (Method)
      # @renderer:
      # @sibling:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_add_focus_sibling(to_unsafe, renderer, sibling)

      # Return value handling
    end

    @[Deprecated]
    def apply_attributes(tree_model : Gtk::TreeModel, iter : Gtk::TreeIter, is_expander : Bool, is_expanded : Bool) : Nil
      # gtk_cell_area_apply_attributes: (Method)
      # @tree_model:
      # @iter:
      # @is_expander:
      # @is_expanded:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_apply_attributes(to_unsafe, tree_model, iter, is_expander, is_expanded)

      # Return value handling
    end

    @[Deprecated]
    def attribute_connect(renderer : Gtk::CellRenderer, attribute : ::String, column : Int32) : Nil
      # gtk_cell_area_attribute_connect: (Method)
      # @renderer:
      # @attribute:
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_attribute_connect(to_unsafe, renderer, attribute, column)

      # Return value handling
    end

    @[Deprecated]
    def attribute_disconnect(renderer : Gtk::CellRenderer, attribute : ::String) : Nil
      # gtk_cell_area_attribute_disconnect: (Method)
      # @renderer:
      # @attribute:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_attribute_disconnect(to_unsafe, renderer, attribute)

      # Return value handling
    end

    @[Deprecated]
    def attribute_get_column(renderer : Gtk::CellRenderer, attribute : ::String) : Int32
      # gtk_cell_area_attribute_get_column: (Method)
      # @renderer:
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_attribute_get_column(to_unsafe, renderer, attribute)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def cell_get_property(renderer : Gtk::CellRenderer, property_name : ::String, value : _) : Nil
      # gtk_cell_area_cell_get_property: (Method)
      # @renderer:
      # @property_name:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGtk.gtk_cell_area_cell_get_property(to_unsafe, renderer, property_name, value)

      # Return value handling
    end

    @[Deprecated]
    def cell_set_property(renderer : Gtk::CellRenderer, property_name : ::String, value : _) : Nil
      # gtk_cell_area_cell_set_property: (Method)
      # @renderer:
      # @property_name:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGtk.gtk_cell_area_cell_set_property(to_unsafe, renderer, property_name, value)

      # Return value handling
    end

    @[Deprecated]
    def copy_context(context : Gtk::CellAreaContext) : Gtk::CellAreaContext
      # gtk_cell_area_copy_context: (Method)
      # @context:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_cell_area_copy_context(to_unsafe, context)

      # Return value handling
      Gtk::CellAreaContext.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def create_context : Gtk::CellAreaContext
      # gtk_cell_area_create_context: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_cell_area_create_context(to_unsafe)

      # Return value handling
      Gtk::CellAreaContext.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def event(context : Gtk::CellAreaContext, widget : Gtk::Widget, event : Gdk::Event, cell_area : Gdk::Rectangle, flags : Gtk::CellRendererState) : Int32
      # gtk_cell_area_event: (Method)
      # @context:
      # @widget:
      # @event:
      # @cell_area:
      # @flags:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_event(to_unsafe, context, widget, event, cell_area, flags)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def focus(direction : Gtk::DirectionType) : Bool
      # gtk_cell_area_focus: (Method)
      # @direction:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_focus(to_unsafe, direction)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def foreach(callback : Gtk::CellCallback, callback_data : Pointer(Void)?) : Nil
      # gtk_cell_area_foreach: (Method)
      # @callback:
      # @callback_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      callback_data = if callback_data.nil?
                        Pointer(Void).null
                      else
                        callback_data.to_unsafe
                      end

      # C call
      LibGtk.gtk_cell_area_foreach(to_unsafe, callback, callback_data)

      # Return value handling
    end

    def foreach_alloc(context : Gtk::CellAreaContext, widget : Gtk::Widget, cell_area : Gdk::Rectangle, background_area : Gdk::Rectangle, callback : Gtk::CellAllocCallback, callback_data : Pointer(Void)?) : Nil
      # gtk_cell_area_foreach_alloc: (Method)
      # @context:
      # @widget:
      # @cell_area:
      # @background_area:
      # @callback:
      # @callback_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      callback_data = if callback_data.nil?
                        Pointer(Void).null
                      else
                        callback_data.to_unsafe
                      end

      # C call
      LibGtk.gtk_cell_area_foreach_alloc(to_unsafe, context, widget, cell_area, background_area, callback, callback_data)

      # Return value handling
    end

    @[Deprecated]
    def cell_allocation(context : Gtk::CellAreaContext, widget : Gtk::Widget, renderer : Gtk::CellRenderer, cell_area : Gdk::Rectangle) : Gdk::Rectangle
      # gtk_cell_area_get_cell_allocation: (Method)
      # @context:
      # @widget:
      # @renderer:
      # @cell_area:
      # @allocation: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      allocation = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_cell_area_get_cell_allocation(to_unsafe, context, widget, renderer, cell_area, allocation)

      # Return value handling
      allocation
    end

    @[Deprecated]
    def cell_at_position(context : Gtk::CellAreaContext, widget : Gtk::Widget, cell_area : Gdk::Rectangle, x : Int32, y : Int32) : Gdk::Rectangle
      # gtk_cell_area_get_cell_at_position: (Method)
      # @context:
      # @widget:
      # @cell_area:
      # @x:
      # @y:
      # @alloc_area: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      alloc_area = Pointer(Void).null # Generator::CallerAllocatesPlan
      alloc_area = Gdk::Rectangle.new
      # C call
      _retval = LibGtk.gtk_cell_area_get_cell_at_position(to_unsafe, context, widget, cell_area, x, y, alloc_area)

      # Return value handling
      alloc_area
    end

    def current_path_string : ::String
      # gtk_cell_area_get_current_path_string: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_get_current_path_string(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def edit_widget : Gtk::CellEditable?
      # gtk_cell_area_get_edit_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_cell_area_get_edit_widget(to_unsafe)

      # Return value handling
      Gtk::AbstractCellEditable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def edited_cell : Gtk::CellRenderer?
      # gtk_cell_area_get_edited_cell: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_cell_area_get_edited_cell(to_unsafe)

      # Return value handling
      Gtk::CellRenderer.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def focus_cell : Gtk::CellRenderer?
      # gtk_cell_area_get_focus_cell: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_cell_area_get_focus_cell(to_unsafe)

      # Return value handling
      Gtk::CellRenderer.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def focus_from_sibling(renderer : Gtk::CellRenderer) : Gtk::CellRenderer?
      # gtk_cell_area_get_focus_from_sibling: (Method)
      # @renderer:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_cell_area_get_focus_from_sibling(to_unsafe, renderer)

      # Return value handling
      Gtk::CellRenderer.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def focus_siblings(renderer : Gtk::CellRenderer) : GLib::List
      # gtk_cell_area_get_focus_siblings: (Method)
      # @renderer:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_get_focus_siblings(to_unsafe, renderer)

      # Return value handling
      GLib::List(Gtk::CellRenderer).new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def preferred_height(context : Gtk::CellAreaContext, widget : Gtk::Widget) : Nil
      # gtk_cell_area_get_preferred_height: (Method)
      # @context:
      # @widget:
      # @minimum_height: (out) (transfer full) (optional)
      # @natural_height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_height = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_height = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_get_preferred_height(to_unsafe, context, widget, minimum_height, natural_height)

      # Return value handling
    end

    @[Deprecated]
    def preferred_height_for_width(context : Gtk::CellAreaContext, widget : Gtk::Widget, width : Int32) : Nil
      # gtk_cell_area_get_preferred_height_for_width: (Method)
      # @context:
      # @widget:
      # @width:
      # @minimum_height: (out) (transfer full) (optional)
      # @natural_height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_height = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_height = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_get_preferred_height_for_width(to_unsafe, context, widget, width, minimum_height, natural_height)

      # Return value handling
    end

    @[Deprecated]
    def preferred_width(context : Gtk::CellAreaContext, widget : Gtk::Widget) : Nil
      # gtk_cell_area_get_preferred_width: (Method)
      # @context:
      # @widget:
      # @minimum_width: (out) (transfer full) (optional)
      # @natural_width: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_width = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_get_preferred_width(to_unsafe, context, widget, minimum_width, natural_width)

      # Return value handling
    end

    @[Deprecated]
    def preferred_width_for_height(context : Gtk::CellAreaContext, widget : Gtk::Widget, height : Int32) : Nil
      # gtk_cell_area_get_preferred_width_for_height: (Method)
      # @context:
      # @widget:
      # @height:
      # @minimum_width: (out) (transfer full) (optional)
      # @natural_width: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_width = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_get_preferred_width_for_height(to_unsafe, context, widget, height, minimum_width, natural_width)

      # Return value handling
    end

    def request_mode : Gtk::SizeRequestMode
      # gtk_cell_area_get_request_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_get_request_mode(to_unsafe)

      # Return value handling
      Gtk::SizeRequestMode.new(_retval)
    end

    @[Deprecated]
    def has_renderer(renderer : Gtk::CellRenderer) : Bool
      # gtk_cell_area_has_renderer: (Method)
      # @renderer:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_has_renderer(to_unsafe, renderer)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def inner_cell_area(widget : Gtk::Widget, cell_area : Gdk::Rectangle) : Gdk::Rectangle
      # gtk_cell_area_inner_cell_area: (Method)
      # @widget:
      # @cell_area:
      # @inner_area: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      inner_area = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_cell_area_inner_cell_area(to_unsafe, widget, cell_area, inner_area)

      # Return value handling
      inner_area
    end

    @[Deprecated]
    def is_activatable : Bool
      # gtk_cell_area_is_activatable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_is_activatable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def is_focus_sibling(renderer : Gtk::CellRenderer, sibling : Gtk::CellRenderer) : Bool
      # gtk_cell_area_is_focus_sibling: (Method)
      # @renderer:
      # @sibling:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_is_focus_sibling(to_unsafe, renderer, sibling)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def remove(renderer : Gtk::CellRenderer) : Nil
      # gtk_cell_area_remove: (Method)
      # @renderer:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_remove(to_unsafe, renderer)

      # Return value handling
    end

    @[Deprecated]
    def remove_focus_sibling(renderer : Gtk::CellRenderer, sibling : Gtk::CellRenderer) : Nil
      # gtk_cell_area_remove_focus_sibling: (Method)
      # @renderer:
      # @sibling:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_remove_focus_sibling(to_unsafe, renderer, sibling)

      # Return value handling
    end

    @[Deprecated]
    def request_renderer(renderer : Gtk::CellRenderer, orientation : Gtk::Orientation, widget : Gtk::Widget, for_size : Int32) : Nil
      # gtk_cell_area_request_renderer: (Method)
      # @renderer:
      # @orientation:
      # @widget:
      # @for_size:
      # @minimum_size: (out) (transfer full) (optional)
      # @natural_size: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_size = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_size = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_request_renderer(to_unsafe, renderer, orientation, widget, for_size, minimum_size, natural_size)

      # Return value handling
    end

    @[Deprecated]
    def focus_cell=(renderer : Gtk::CellRenderer?) : Nil
      # gtk_cell_area_set_focus_cell: (Method | Setter)
      # @renderer: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      renderer = if renderer.nil?
                   Pointer(Void).null
                 else
                   renderer.to_unsafe
                 end

      # C call
      LibGtk.gtk_cell_area_set_focus_cell(to_unsafe, renderer)

      # Return value handling
    end

    @[Deprecated]
    def snapshot(context : Gtk::CellAreaContext, widget : Gtk::Widget, snapshot : Gtk::Snapshot, background_area : Gdk::Rectangle, cell_area : Gdk::Rectangle, flags : Gtk::CellRendererState, paint_focus : Bool) : Nil
      # gtk_cell_area_snapshot: (Method)
      # @context:
      # @widget:
      # @snapshot:
      # @background_area:
      # @cell_area:
      # @flags:
      # @paint_focus:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_snapshot(to_unsafe, context, widget, snapshot, background_area, cell_area, flags, paint_focus)

      # Return value handling
    end

    @[Deprecated]
    def stop_editing(canceled : Bool) : Nil
      # gtk_cell_area_stop_editing: (Method)
      # @canceled:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_stop_editing(to_unsafe, canceled)

      # Return value handling
    end

    struct AddEditableSignal < GObject::Signal
      def name : String
        @detail ? "add-editable::#{@detail}" : "add-editable"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::CellRenderer, Gtk::CellEditable, Gdk::Rectangle, ::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::CellRenderer, Gtk::CellEditable, Gdk::Rectangle, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_renderer : Pointer(Void), lib_editable : Pointer(Void), lib_cell_area : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          renderer = Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          editable = Gtk::AbstractCellEditable.new(lib_editable, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          cell_area = Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(Gtk::CellRenderer, Gtk::CellEditable, Gdk::Rectangle, ::String, Nil)).unbox(_lib_box).call(renderer, editable, cell_area, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::CellArea, Gtk::CellRenderer, Gtk::CellEditable, Gdk::Rectangle, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_renderer : Pointer(Void), lib_editable : Pointer(Void), lib_cell_area : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::CellArea.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          renderer = Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          editable = Gtk::AbstractCellEditable.new(lib_editable, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          cell_area = Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(Gtk::CellArea, Gtk::CellRenderer, Gtk::CellEditable, Gdk::Rectangle, ::String, Nil)).unbox(_lib_box).call(_sender, renderer, editable, cell_area, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(renderer : Gtk::CellRenderer, editable : Gtk::CellEditable, cell_area : Gdk::Rectangle, path : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "add-editable", renderer, editable, cell_area, path)
      end
    end

    def add_editable_signal
      AddEditableSignal.new(self)
    end

    struct ApplyAttributesSignal < GObject::Signal
      def name : String
        @detail ? "apply-attributes::#{@detail}" : "apply-attributes"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreeModel, Gtk::TreeIter, Bool, Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreeModel, Gtk::TreeIter, Bool, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_model : Pointer(Void), lib_iter : Pointer(Void), lib_is_expander : LibC::Int, lib_is_expanded : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          is_expander = GICrystal.to_bool(lib_is_expander)
          # Generator::BuiltInTypeArgPlan
          is_expanded = GICrystal.to_bool(lib_is_expanded)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Bool, Bool, Nil)).unbox(_lib_box).call(model, iter, is_expander, is_expanded)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::CellArea, Gtk::TreeModel, Gtk::TreeIter, Bool, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_model : Pointer(Void), lib_iter : Pointer(Void), lib_is_expander : LibC::Int, lib_is_expanded : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::CellArea.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          is_expander = GICrystal.to_bool(lib_is_expander)
          # Generator::BuiltInTypeArgPlan
          is_expanded = GICrystal.to_bool(lib_is_expanded)
          ::Box(Proc(Gtk::CellArea, Gtk::TreeModel, Gtk::TreeIter, Bool, Bool, Nil)).unbox(_lib_box).call(_sender, model, iter, is_expander, is_expanded)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(model : Gtk::TreeModel, iter : Gtk::TreeIter, is_expander : Bool, is_expanded : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "apply-attributes", model, iter, is_expander, is_expanded)
      end
    end

    def apply_attributes_signal
      ApplyAttributesSignal.new(self)
    end

    struct FocusChangedSignal < GObject::Signal
      def name : String
        @detail ? "focus-changed::#{@detail}" : "focus-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::CellRenderer, ::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::CellRenderer, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_renderer : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          renderer = Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(Gtk::CellRenderer, ::String, Nil)).unbox(_lib_box).call(renderer, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::CellArea, Gtk::CellRenderer, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_renderer : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::CellArea.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          renderer = Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(Gtk::CellArea, Gtk::CellRenderer, ::String, Nil)).unbox(_lib_box).call(_sender, renderer, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(renderer : Gtk::CellRenderer, path : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "focus-changed", renderer, path)
      end
    end

    def focus_changed_signal
      FocusChangedSignal.new(self)
    end

    struct RemoveEditableSignal < GObject::Signal
      def name : String
        @detail ? "remove-editable::#{@detail}" : "remove-editable"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::CellRenderer, Gtk::CellEditable, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::CellRenderer, Gtk::CellEditable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_renderer : Pointer(Void), lib_editable : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          renderer = Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          editable = Gtk::AbstractCellEditable.new(lib_editable, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::CellRenderer, Gtk::CellEditable, Nil)).unbox(_lib_box).call(renderer, editable)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::CellArea, Gtk::CellRenderer, Gtk::CellEditable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_renderer : Pointer(Void), lib_editable : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::CellArea.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          renderer = Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          editable = Gtk::AbstractCellEditable.new(lib_editable, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::CellArea, Gtk::CellRenderer, Gtk::CellEditable, Nil)).unbox(_lib_box).call(_sender, renderer, editable)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(renderer : Gtk::CellRenderer, editable : Gtk::CellEditable) : Nil
        LibGObject.g_signal_emit_by_name(@source, "remove-editable", renderer, editable)
      end
    end

    def remove_editable_signal
      RemoveEditableSignal.new(self)
    end

    # activate: (None)
    # @context:
    # @widget:
    # @cell_area:
    # @flags:
    # @edit_only:
    # Returns: (transfer none)
    private macro _register_activate_vfunc(impl_method_name)
      private def self._vfunc_activate(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, lib_edit_only :  LibC::Int, ) : LibC::Int
        # @context: 
# @widget: 
# @cell_area: 
# @flags: 
# @edit_only: 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gtk::CellRendererState.new(lib_flags)
# Generator::BuiltInTypeArgPlan
edit_only=GICrystal.to_bool(lib_edit_only)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, cell_area, flags, edit_only)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int)).pointer
        previous_def
      end
    end

    # activate: (None)
    # @context:
    # @widget:
    # @cell_area:
    # @flags:
    # @edit_only:
    # Returns: (transfer none)
    private macro _register_unsafe_activate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, lib_edit_only :  LibC::Int, ) : LibC::Int
# @context: 
# @widget: 
# @cell_area: 
# @flags: 
# @edit_only: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_cell_area, lib_flags, lib_edit_only)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int, LibC::Int)? = nil
    end

    # add: (None)
    # @renderer:
    # Returns: (transfer none)
    private macro _register_add_vfunc(impl_method_name)
      private def self._vfunc_add(%this : Pointer(Void), lib_renderer :  Pointer(Void), ) : Void
        # @renderer: 

# Generator::BuiltInTypeArgPlan
renderer=Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(renderer)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # add: (None)
    # @renderer:
    # Returns: (transfer none)
    private macro _register_unsafe_add_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add(%this : Pointer(Void), lib_renderer :  Pointer(Void), ) : Void
# @renderer: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_renderer)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # apply_attributes: (None)
    # @tree_model:
    # @iter:
    # @is_expander:
    # @is_expanded:
    # Returns: (transfer none)
    private macro _register_apply_attributes_vfunc(impl_method_name)
      private def self._vfunc_apply_attributes(%this : Pointer(Void), lib_tree_model :  Pointer(Void), lib_iter :  Pointer(Void), lib_is_expander :  LibC::Int, lib_is_expanded :  LibC::Int, ) : Void
        # @tree_model: 
# @iter: 
# @is_expander: 
# @is_expanded: 

# Generator::BuiltInTypeArgPlan
tree_model=Gtk::AbstractTreeModel.new(lib_tree_model, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
is_expander=GICrystal.to_bool(lib_is_expander)
# Generator::BuiltInTypeArgPlan
is_expanded=GICrystal.to_bool(lib_is_expanded)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(tree_model, iter, is_expander, is_expanded)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_apply_attributes(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int, LibC::Int)).pointer
        previous_def
      end
    end

    # apply_attributes: (None)
    # @tree_model:
    # @iter:
    # @is_expander:
    # @is_expanded:
    # Returns: (transfer none)
    private macro _register_unsafe_apply_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_apply_attributes(%this : Pointer(Void), lib_tree_model :  Pointer(Void), lib_iter :  Pointer(Void), lib_is_expander :  LibC::Int, lib_is_expanded :  LibC::Int, ) : Void
# @tree_model: 
# @iter: 
# @is_expander: 
# @is_expanded: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_tree_model, lib_iter, lib_is_expander, lib_is_expanded)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_apply_attributes = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int, LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_apply_attributes(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_apply_attributes : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int, LibC::Int, Void)? = nil
    end

    # copy_context: (None)
    # @context:
    # Returns: (transfer full)
    private macro _register_copy_context_vfunc(impl_method_name)
      private def self._vfunc_copy_context(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Pointer(Void)
        # @context: 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_copy_context(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # copy_context: (None)
    # @context:
    # Returns: (transfer full)
    private macro _register_unsafe_copy_context_vfunc(impl_method_name)
      private def self._vfunc_unsafe_copy_context(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Pointer(Void)
# @context: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_copy_context = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_copy_context(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_copy_context : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # create_context: (None)
    # Returns: (transfer full)
    private macro _register_create_context_vfunc(impl_method_name)
      private def self._vfunc_create_context(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_context(Pointer(Void))).pointer
        previous_def
      end
    end

    # create_context: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_create_context_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_context(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_context = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_context(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_context : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # event: (None)
    # @context:
    # @widget:
    # @event:
    # @cell_area:
    # @flags:
    # Returns: (transfer none)
    private macro _register_event_vfunc(impl_method_name)
      private def self._vfunc_event(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_event :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : Int32
        # @context: 
# @widget: 
# @event: 
# @cell_area: 
# @flags: 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
event=Gdk::Event.new(lib_event, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gtk::CellRendererState.new(lib_flags)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, event, cell_area, flags)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_event(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # event: (None)
    # @context:
    # @widget:
    # @event:
    # @cell_area:
    # @flags:
    # Returns: (transfer none)
    private macro _register_unsafe_event_vfunc(impl_method_name)
      private def self._vfunc_unsafe_event(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_event :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : Int32
# @context: 
# @widget: 
# @event: 
# @cell_area: 
# @flags: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_event, lib_cell_area, lib_flags)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_event = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_event(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_event : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Int32)? = nil
    end

    # focus: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_focus_vfunc(impl_method_name)
      private def self._vfunc_focus(%this : Pointer(Void), lib_direction :  UInt32, ) : LibC::Int
        # @direction: 

# Generator::BuiltInTypeArgPlan
direction=Gtk::DirectionType.new(lib_direction)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(direction)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_focus(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # focus: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_unsafe_focus_vfunc(impl_method_name)
      private def self._vfunc_unsafe_focus(%this : Pointer(Void), lib_direction :  UInt32, ) : LibC::Int
# @direction: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_direction)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_focus = Proc(Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_focus(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_focus : Proc(Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # foreach: (None)
    # @callback:
    # @callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_foreach_vfunc(impl_method_name)
      private def self._vfunc_foreach(%this : Pointer(Void), lib_callback :  Void*, lib_callback_data :  Pointer(Void), ) : Void
        # @callback: 
# @callback_data: (nullable) 

# Generator::BuiltInTypeArgPlan
callback=Gtk::CellCallback.new(lib_callback, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
callback_data=(lib_callback_data.null? ? nil : lib_callback_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(callback, callback_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_foreach(Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # foreach: (None)
    # @callback:
    # @callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_foreach_vfunc(impl_method_name)
      private def self._vfunc_unsafe_foreach(%this : Pointer(Void), lib_callback :  Void*, lib_callback_data :  Pointer(Void), ) : Void
# @callback: 
# @callback_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_callback, lib_callback_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_foreach = Proc(Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_foreach(Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_foreach : Proc(Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # foreach_alloc: (None)
    # @context:
    # @widget:
    # @cell_area:
    # @background_area:
    # @callback:
    # @callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_foreach_alloc_vfunc(impl_method_name)
      private def self._vfunc_foreach_alloc(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_background_area :  Pointer(Void), lib_callback :  Void*, lib_callback_data :  Pointer(Void), ) : Void
        # @context: 
# @widget: 
# @cell_area: 
# @background_area: 
# @callback: 
# @callback_data: (nullable) 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
background_area=Gdk::Rectangle.new(lib_background_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
callback=Gtk::CellAllocCallback.new(lib_callback, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
callback_data=(lib_callback_data.null? ? nil : lib_callback_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, cell_area, background_area, callback, callback_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_foreach_alloc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # foreach_alloc: (None)
    # @context:
    # @widget:
    # @cell_area:
    # @background_area:
    # @callback:
    # @callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_foreach_alloc_vfunc(impl_method_name)
      private def self._vfunc_unsafe_foreach_alloc(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_background_area :  Pointer(Void), lib_callback :  Void*, lib_callback_data :  Pointer(Void), ) : Void
# @context: 
# @widget: 
# @cell_area: 
# @background_area: 
# @callback: 
# @callback_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_cell_area, lib_background_area, lib_callback, lib_callback_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_foreach_alloc = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_foreach_alloc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_foreach_alloc : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # get_cell_property: (None)
    # @renderer:
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_get_cell_property_vfunc(impl_method_name)
      private def self._vfunc_get_cell_property(%this : Pointer(Void), lib_renderer :  Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
        # @renderer: 
# @property_id: 
# @value: 
# @pspec: 

# Generator::BuiltInTypeArgPlan
renderer=Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
property_id=lib_property_id
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)
# Generator::BuiltInTypeArgPlan
pspec=GObject::ParamSpec.new(lib_pspec, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(renderer, property_id, value, pspec)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_cell_property(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_cell_property: (None)
    # @renderer:
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_unsafe_get_cell_property_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_cell_property(%this : Pointer(Void), lib_renderer :  Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
# @renderer: 
# @property_id: 
# @value: 
# @pspec: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_renderer, lib_property_id, lib_value, lib_pspec)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_cell_property = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_cell_property(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_cell_property : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void)? = nil
    end

    # get_preferred_height: (None)
    # @context:
    # @widget:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_height_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_height(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
        # @context: 
# @widget: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, minimum_height, natural_height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_height(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_height: (None)
    # @context:
    # @widget:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_height_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_height(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
# @context: 
# @widget: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_minimum_height, lib_natural_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_height = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_height(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_height : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Void)? = nil
    end

    # get_preferred_height_for_width: (None)
    # @context:
    # @widget:
    # @width:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_height_for_width_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_height_for_width(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_width :  Int32, lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
        # @context: 
# @widget: 
# @width: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
width=lib_width
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, width, minimum_height, natural_height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_height_for_width(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_height_for_width: (None)
    # @context:
    # @widget:
    # @width:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_height_for_width_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_height_for_width(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_width :  Int32, lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
# @context: 
# @widget: 
# @width: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_width, lib_minimum_height, lib_natural_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_height_for_width = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_height_for_width(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_height_for_width : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # get_preferred_width: (None)
    # @context:
    # @widget:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_width_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_width(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
        # @context: 
# @widget: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, minimum_width, natural_width)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_width(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_width: (None)
    # @context:
    # @widget:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_width_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_width(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
# @context: 
# @widget: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_minimum_width, lib_natural_width)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_width = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_width(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_width : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Void)? = nil
    end

    # get_preferred_width_for_height: (None)
    # @context:
    # @widget:
    # @height:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_width_for_height_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_width_for_height(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_height :  Int32, lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
        # @context: 
# @widget: 
# @height: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
height=lib_height
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, height, minimum_width, natural_width)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_width_for_height(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_width_for_height: (None)
    # @context:
    # @widget:
    # @height:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_width_for_height_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_width_for_height(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_height :  Int32, lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
# @context: 
# @widget: 
# @height: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_height, lib_minimum_width, lib_natural_width)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_width_for_height = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_width_for_height(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_width_for_height : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # get_request_mode: (None)
    # Returns: (transfer none)
    private macro _register_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_get_request_mode(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_request_mode(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_request_mode: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_request_mode(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_request_mode = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_request_mode(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_request_mode : Proc(Pointer(Void), UInt32)? = nil
    end

    # is_activatable: (None)
    # Returns: (transfer none)
    private macro _register_is_activatable_vfunc(impl_method_name)
      private def self._vfunc_is_activatable(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_activatable(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_activatable: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_activatable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_activatable(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_activatable = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_activatable(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_activatable : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # remove: (None)
    # @renderer:
    # Returns: (transfer none)
    private macro _register_remove_vfunc(impl_method_name)
      private def self._vfunc_remove(%this : Pointer(Void), lib_renderer :  Pointer(Void), ) : Void
        # @renderer: 

# Generator::BuiltInTypeArgPlan
renderer=Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(renderer)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_remove(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # remove: (None)
    # @renderer:
    # Returns: (transfer none)
    private macro _register_unsafe_remove_vfunc(impl_method_name)
      private def self._vfunc_unsafe_remove(%this : Pointer(Void), lib_renderer :  Pointer(Void), ) : Void
# @renderer: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_renderer)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_remove = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_remove(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_remove : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # set_cell_property: (None)
    # @renderer:
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_set_cell_property_vfunc(impl_method_name)
      private def self._vfunc_set_cell_property(%this : Pointer(Void), lib_renderer :  Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
        # @renderer: 
# @property_id: 
# @value: 
# @pspec: 

# Generator::BuiltInTypeArgPlan
renderer=Gtk::CellRenderer.new(lib_renderer, GICrystal::Transfer::None)
property_id=lib_property_id
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)
# Generator::BuiltInTypeArgPlan
pspec=GObject::ParamSpec.new(lib_pspec, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(renderer, property_id, value, pspec)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_cell_property(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_cell_property: (None)
    # @renderer:
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_unsafe_set_cell_property_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_cell_property(%this : Pointer(Void), lib_renderer :  Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
# @renderer: 
# @property_id: 
# @value: 
# @pspec: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_renderer, lib_property_id, lib_value, lib_pspec)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_cell_property = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_cell_property(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_cell_property : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void)? = nil
    end

    # snapshot: (None)
    # @context:
    # @widget:
    # @snapshot:
    # @background_area:
    # @cell_area:
    # @flags:
    # @paint_focus:
    # Returns: (transfer none)
    private macro _register_snapshot_vfunc(impl_method_name)
      private def self._vfunc_snapshot(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_snapshot :  Pointer(Void), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, lib_paint_focus :  LibC::Int, ) : Void
        # @context: 
# @widget: 
# @snapshot: 
# @background_area: 
# @cell_area: 
# @flags: 
# @paint_focus: 

# Generator::BuiltInTypeArgPlan
context=Gtk::CellAreaContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
snapshot=Gtk::Snapshot.new(lib_snapshot, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
background_area=Gdk::Rectangle.new(lib_background_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gtk::CellRendererState.new(lib_flags)
# Generator::BuiltInTypeArgPlan
paint_focus=GICrystal.to_bool(lib_paint_focus)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, widget, snapshot, background_area, cell_area, flags, paint_focus)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_snapshot(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int)).pointer
        previous_def
      end
    end

    # snapshot: (None)
    # @context:
    # @widget:
    # @snapshot:
    # @background_area:
    # @cell_area:
    # @flags:
    # @paint_focus:
    # Returns: (transfer none)
    private macro _register_unsafe_snapshot_vfunc(impl_method_name)
      private def self._vfunc_unsafe_snapshot(%this : Pointer(Void), lib_context :  Pointer(Void), lib_widget :  Pointer(Void), lib_snapshot :  Pointer(Void), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, lib_paint_focus :  LibC::Int, ) : Void
# @context: 
# @widget: 
# @snapshot: 
# @background_area: 
# @cell_area: 
# @flags: 
# @paint_focus: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_widget, lib_snapshot, lib_background_area, lib_cell_area, lib_flags, lib_paint_focus)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_snapshot = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_snapshot(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_snapshot : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, LibC::Int, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
