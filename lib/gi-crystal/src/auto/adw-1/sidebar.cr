require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Sidebar < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Sidebar, g_object_get_qdata)

    # Initialize a new `Sidebar`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, drop_preload : Bool? = nil, filter : Gtk::Filter? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, items : Gtk::SelectionModel? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, menu_model : Gio::MenuModel? = nil, mode : Adw::SidebarMode? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, placeholder : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sections : Gio::ListModel? = nil, selected : UInt32? = nil, selected_item : Adw::SidebarItem? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[45]
      _values = StaticArray(LibGObject::Value, 45).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_target.nil?
        (_names.to_unsafe + _n).value = "can-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_target)
        _n += 1
      end
      if !css_classes.nil?
        (_names.to_unsafe + _n).value = "css-classes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_classes)
        _n += 1
      end
      if !css_name.nil?
        (_names.to_unsafe + _n).value = "css-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_name)
        _n += 1
      end
      if !cursor.nil?
        (_names.to_unsafe + _n).value = "cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor)
        _n += 1
      end
      if !drop_preload.nil?
        (_names.to_unsafe + _n).value = "drop-preload".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, drop_preload)
        _n += 1
      end
      if !filter.nil?
        (_names.to_unsafe + _n).value = "filter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filter)
        _n += 1
      end
      if !focus_on_click.nil?
        (_names.to_unsafe + _n).value = "focus-on-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_on_click)
        _n += 1
      end
      if !focusable.nil?
        (_names.to_unsafe + _n).value = "focusable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focusable)
        _n += 1
      end
      if !halign.nil?
        (_names.to_unsafe + _n).value = "halign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, halign)
        _n += 1
      end
      if !has_default.nil?
        (_names.to_unsafe + _n).value = "has-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_default)
        _n += 1
      end
      if !has_focus.nil?
        (_names.to_unsafe + _n).value = "has-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_focus)
        _n += 1
      end
      if !has_tooltip.nil?
        (_names.to_unsafe + _n).value = "has-tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_tooltip)
        _n += 1
      end
      if !height_request.nil?
        (_names.to_unsafe + _n).value = "height-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height_request)
        _n += 1
      end
      if !hexpand.nil?
        (_names.to_unsafe + _n).value = "hexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand)
        _n += 1
      end
      if !hexpand_set.nil?
        (_names.to_unsafe + _n).value = "hexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand_set)
        _n += 1
      end
      if !items.nil?
        (_names.to_unsafe + _n).value = "items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, items)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !limit_events.nil?
        (_names.to_unsafe + _n).value = "limit-events".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, limit_events)
        _n += 1
      end
      if !margin_bottom.nil?
        (_names.to_unsafe + _n).value = "margin-bottom".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_bottom)
        _n += 1
      end
      if !margin_end.nil?
        (_names.to_unsafe + _n).value = "margin-end".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_end)
        _n += 1
      end
      if !margin_start.nil?
        (_names.to_unsafe + _n).value = "margin-start".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_start)
        _n += 1
      end
      if !margin_top.nil?
        (_names.to_unsafe + _n).value = "margin-top".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_top)
        _n += 1
      end
      if !menu_model.nil?
        (_names.to_unsafe + _n).value = "menu-model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menu_model)
        _n += 1
      end
      if !mode.nil?
        (_names.to_unsafe + _n).value = "mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mode)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !opacity.nil?
        (_names.to_unsafe + _n).value = "opacity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, opacity)
        _n += 1
      end
      if !overflow.nil?
        (_names.to_unsafe + _n).value = "overflow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overflow)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !placeholder.nil?
        (_names.to_unsafe + _n).value = "placeholder".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, placeholder)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !root.nil?
        (_names.to_unsafe + _n).value = "root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, root)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !sections.nil?
        (_names.to_unsafe + _n).value = "sections".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sections)
        _n += 1
      end
      if !selected.nil?
        (_names.to_unsafe + _n).value = "selected".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected)
        _n += 1
      end
      if !selected_item.nil?
        (_names.to_unsafe + _n).value = "selected-item".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected_item)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_markup)
        _n += 1
      end
      if !tooltip_text.nil?
        (_names.to_unsafe + _n).value = "tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_text)
        _n += 1
      end
      if !valign.nil?
        (_names.to_unsafe + _n).value = "valign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valign)
        _n += 1
      end
      if !vexpand.nil?
        (_names.to_unsafe + _n).value = "vexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand)
        _n += 1
      end
      if !vexpand_set.nil?
        (_names.to_unsafe + _n).value = "vexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand_set)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
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
      @@g_type ||= LibAdw.adw_sidebar_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Sidebar.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def drop_preload=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "drop-preload", unsafe_value, Pointer(Void).null)
      value
    end

    def drop_preload? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "drop-preload", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def filter=(value : Gtk::Filter?) : Gtk::Filter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "filter", unsafe_value, Pointer(Void).null)
      value
    end

    def filter : Gtk::Filter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filter", pointerof(value), Pointer(Void).null)
      Gtk::Filter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def items : Gtk::SelectionModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "items", pointerof(value), Pointer(Void).null)
      Gtk::AbstractSelectionModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def menu_model=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "menu-model", unsafe_value, Pointer(Void).null)
      value
    end

    def menu_model : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "menu-model", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def mode=(value : Adw::SidebarMode) : Adw::SidebarMode
      unsafe_value = value

      LibGObject.g_object_set(self, "mode", unsafe_value, Pointer(Void).null)
      value
    end

    def mode : Adw::SidebarMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "mode", pointerof(value), Pointer(Void).null)
      Adw::SidebarMode.new(value)
    end

    def placeholder=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "placeholder", unsafe_value, Pointer(Void).null)
      value
    end

    def placeholder : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "placeholder", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def sections : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sections", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def selected=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "selected", unsafe_value, Pointer(Void).null)
      value
    end

    def selected : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "selected", pointerof(value), Pointer(Void).null)
      value
    end

    def selected_item : Adw::SidebarItem?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "selected-item", pointerof(value), Pointer(Void).null)
      Adw::SidebarItem.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # adw_sidebar_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_new

      # Return value handling
      Adw::Sidebar.new(_retval, GICrystal::Transfer::Full)
    end

    def append(section : Adw::SidebarSection) : Nil
      # adw_sidebar_append: (Method)
      # @section: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(section)

      # C call
      LibAdw.adw_sidebar_append(to_unsafe, section)

      # Return value handling
    end

    def drop_preload : Bool
      # adw_sidebar_get_drop_preload: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_get_drop_preload(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def filter : Gtk::Filter?
      # adw_sidebar_get_filter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_get_filter(to_unsafe)

      # Return value handling
      Gtk::Filter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def item(index : UInt32) : Adw::SidebarItem?
      # adw_sidebar_get_item: (Method)
      # @index:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_get_item(to_unsafe, index)

      # Return value handling
      Adw::SidebarItem.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def items : Gtk::SelectionModel
      # adw_sidebar_get_items: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_sidebar_get_items(to_unsafe)

      # Return value handling
      Gtk::AbstractSelectionModel.new(_retval, GICrystal::Transfer::Full)
    end

    def menu_model : Gio::MenuModel?
      # adw_sidebar_get_menu_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_get_menu_model(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def mode : Adw::SidebarMode
      # adw_sidebar_get_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_get_mode(to_unsafe)

      # Return value handling
      Adw::SidebarMode.new(_retval)
    end

    def placeholder : Gtk::Widget?
      # adw_sidebar_get_placeholder: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_get_placeholder(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def section(index : UInt32) : Adw::SidebarSection?
      # adw_sidebar_get_section: (Method)
      # @index:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_get_section(to_unsafe, index)

      # Return value handling
      Adw::SidebarSection.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def sections : Gio::ListModel
      # adw_sidebar_get_sections: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_sidebar_get_sections(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def selected : UInt32
      # adw_sidebar_get_selected: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_get_selected(to_unsafe)

      # Return value handling
      _retval
    end

    def selected_item : Adw::SidebarItem?
      # adw_sidebar_get_selected_item: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_get_selected_item(to_unsafe)

      # Return value handling
      Adw::SidebarItem.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def insert(section : Adw::SidebarSection, position : Int32) : Nil
      # adw_sidebar_insert: (Method)
      # @section: (transfer full)
      # @position:
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(section)

      # C call
      LibAdw.adw_sidebar_insert(to_unsafe, section, position)

      # Return value handling
    end

    def prepend(section : Adw::SidebarSection) : Nil
      # adw_sidebar_prepend: (Method)
      # @section: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(section)

      # C call
      LibAdw.adw_sidebar_prepend(to_unsafe, section)

      # Return value handling
    end

    def remove(section : Adw::SidebarSection) : Nil
      # adw_sidebar_remove: (Method)
      # @section:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_remove(to_unsafe, section)

      # Return value handling
    end

    def remove_all : Nil
      # adw_sidebar_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_remove_all(to_unsafe)

      # Return value handling
    end

    def drop_preload=(preload : Bool) : Nil
      # adw_sidebar_set_drop_preload: (Method | Setter)
      # @preload:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_set_drop_preload(to_unsafe, preload)

      # Return value handling
    end

    def filter=(filter : Gtk::Filter?) : Nil
      # adw_sidebar_set_filter: (Method | Setter)
      # @filter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filter = if filter.nil?
                 Pointer(Void).null
               else
                 filter.to_unsafe
               end

      # C call
      LibAdw.adw_sidebar_set_filter(to_unsafe, filter)

      # Return value handling
    end

    def menu_model=(menu_model : Gio::MenuModel?) : Nil
      # adw_sidebar_set_menu_model: (Method | Setter)
      # @menu_model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      menu_model = if menu_model.nil?
                     Pointer(Void).null
                   else
                     menu_model.to_unsafe
                   end

      # C call
      LibAdw.adw_sidebar_set_menu_model(to_unsafe, menu_model)

      # Return value handling
    end

    def mode=(mode : Adw::SidebarMode) : Nil
      # adw_sidebar_set_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_set_mode(to_unsafe, mode)

      # Return value handling
    end

    def placeholder=(placeholder : Gtk::Widget?) : Nil
      # adw_sidebar_set_placeholder: (Method | Setter)
      # @placeholder: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      placeholder = if placeholder.nil?
                      Pointer(Void).null
                    else
                      placeholder.to_unsafe
                    end

      # C call
      LibAdw.adw_sidebar_set_placeholder(to_unsafe, placeholder)

      # Return value handling
    end

    def selected=(selected : UInt32) : Nil
      # adw_sidebar_set_selected: (Method | Setter)
      # @selected:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_set_selected(to_unsafe, selected)

      # Return value handling
    end

    def setup_drop_target(actions : Gdk::DragAction, types : Enumerable(UInt64)?) : Nil
      # adw_sidebar_setup_drop_target: (Method)
      # @actions:
      # @types: (nullable) (array length=n_types element-type Gtype)
      # @n_types:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_types = types.try(&.size) || 0
      # Generator::NullableArrayPlan
      types = if types.nil?
                Pointer(UInt64).null
              else
                types.to_a.to_unsafe.as(Pointer(UInt64))
              end

      # C call
      LibAdw.adw_sidebar_setup_drop_target(to_unsafe, actions, types, n_types)

      # Return value handling
    end

    struct ActivatedSignal < GObject::Signal
      def name : String
        @detail ? "activated::#{@detail}" : "activated"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          index = lib_index
          ::Box(Proc(UInt32, Nil)).unbox(_lib_box).call(index)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::Sidebar, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, _lib_box : Pointer(Void)) {
          _sender = Adw::Sidebar.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          index = lib_index
          ::Box(Proc(Adw::Sidebar, UInt32, Nil)).unbox(_lib_box).call(_sender, index)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(index : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "activated", index)
      end
    end

    def activated_signal
      ActivatedSignal.new(self)
    end

    struct DropSignal < GObject::Signal
      def name : String
        @detail ? "drop::#{@detail}" : "drop"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, GObject::Value, Gdk::DragAction, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, GObject::Value, Gdk::DragAction, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, lib_value : Pointer(Void), lib_preferred_action : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          index = lib_index
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          # Generator::BuiltInTypeArgPlan
          preferred_action = Gdk::DragAction.new(lib_preferred_action)
          _retval = ::Box(Proc(UInt32, GObject::Value, Gdk::DragAction, Bool)).unbox(_lib_box).call(index, value, preferred_action)
          GICrystal.to_c_bool(_retval)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::Sidebar, UInt32, GObject::Value, Gdk::DragAction, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, lib_value : Pointer(Void), lib_preferred_action : UInt32, _lib_box : Pointer(Void)) {
          _sender = Adw::Sidebar.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          index = lib_index
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          # Generator::BuiltInTypeArgPlan
          preferred_action = Gdk::DragAction.new(lib_preferred_action)
          _retval = ::Box(Proc(Adw::Sidebar, UInt32, GObject::Value, Gdk::DragAction, Bool)).unbox(_lib_box).call(_sender, index, value, preferred_action)
          GICrystal.to_c_bool(_retval)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(index : UInt32, value : _, preferred_action : Gdk::DragAction) : Nil
        # Generator::HandmadeArgPlan
        value = if !value.is_a?(GObject::Value)
                  GObject::Value.new(value).to_unsafe
                else
                  value.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "drop", index, value, preferred_action)
      end
    end

    def drop_signal
      DropSignal.new(self)
    end

    struct DropEnterSignal < GObject::Signal
      def name : String
        @detail ? "drop-enter::#{@detail}" : "drop-enter"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Gdk::DragAction)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          index = lib_index
          _retval = ::Box(Proc(UInt32, Gdk::DragAction)).unbox(_lib_box).call(index)
          _retval.to_u32
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::Sidebar, UInt32, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, _lib_box : Pointer(Void)) {
          _sender = Adw::Sidebar.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          index = lib_index
          _retval = ::Box(Proc(Adw::Sidebar, UInt32, Gdk::DragAction)).unbox(_lib_box).call(_sender, index)
          _retval.to_u32
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(index : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drop-enter", index)
      end
    end

    def drop_enter_signal
      DropEnterSignal.new(self)
    end

    struct DropValueLoadedSignal < GObject::Signal
      def name : String
        @detail ? "drop-value-loaded::#{@detail}" : "drop-value-loaded"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, GObject::Value, Gdk::DragAction)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, GObject::Value, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          # NoStrategy
          index = lib_index
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          _retval = ::Box(Proc(UInt32, GObject::Value, Gdk::DragAction)).unbox(_lib_box).call(index, value)
          _retval.to_u32
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::Sidebar, UInt32, GObject::Value, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Sidebar.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          index = lib_index
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          _retval = ::Box(Proc(Adw::Sidebar, UInt32, GObject::Value, Gdk::DragAction)).unbox(_lib_box).call(_sender, index, value)
          _retval.to_u32
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(index : UInt32, value : _) : Nil
        # Generator::HandmadeArgPlan
        value = if !value.is_a?(GObject::Value)
                  GObject::Value.new(value).to_unsafe
                else
                  value.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "drop-value-loaded", index, value)
      end
    end

    def drop_value_loaded_signal
      DropValueLoadedSignal.new(self)
    end

    struct SetupMenuSignal < GObject::Signal
      def name : String
        @detail ? "setup-menu::#{@detail}" : "setup-menu"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::SidebarItem?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::SidebarItem?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_item : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          item = (lib_item.null? ? nil : Adw::SidebarItem.new(lib_item, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          item = Adw::SidebarItem.new(lib_item, GICrystal::Transfer::None) unless lib_item.null?
          ::Box(Proc(Adw::SidebarItem?, Nil)).unbox(_lib_box).call(item)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::Sidebar, Adw::SidebarItem?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_item : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Sidebar.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          item = (lib_item.null? ? nil : Adw::SidebarItem.new(lib_item, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          item = Adw::SidebarItem.new(lib_item, GICrystal::Transfer::None) unless lib_item.null?
          ::Box(Proc(Adw::Sidebar, Adw::SidebarItem?, Nil)).unbox(_lib_box).call(_sender, item)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(item : Adw::SidebarItem?) : Nil
        # Generator::NullableArrayPlan
        item = if item.nil?
                 Void.null
               else
                 item.to_unsafe
               end

        LibGObject.g_signal_emit_by_name(@source, "setup-menu", item)
      end
    end

    def setup_menu_signal
      SetupMenuSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
