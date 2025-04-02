require "../gtk-4.0/widget"
require "./swipeable"

require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class NavigationView < Gtk::Widget
    include Swipeable
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(NavigationView, g_object_get_qdata)

    # Initialize a new `NavigationView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, animate_transitions : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hhomogeneous : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, navigation_stack : Gio::ListModel? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, pop_on_escape : Bool? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, vhomogeneous : Bool? = nil, visible : Bool? = nil, visible_page : Adw::NavigationPage? = nil, visible_page_tag : ::String? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !animate_transitions.nil?
        (_names.to_unsafe + _n).value = "animate-transitions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, animate_transitions)
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
      if !hhomogeneous.nil?
        (_names.to_unsafe + _n).value = "hhomogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hhomogeneous)
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
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !navigation_stack.nil?
        (_names.to_unsafe + _n).value = "navigation-stack".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, navigation_stack)
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
      if !pop_on_escape.nil?
        (_names.to_unsafe + _n).value = "pop-on-escape".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pop_on_escape)
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
      if !vhomogeneous.nil?
        (_names.to_unsafe + _n).value = "vhomogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vhomogeneous)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !visible_page.nil?
        (_names.to_unsafe + _n).value = "visible-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible_page)
        _n += 1
      end
      if !visible_page_tag.nil?
        (_names.to_unsafe + _n).value = "visible-page-tag".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible_page_tag)
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
      @@g_type ||= LibAdw.adw_navigation_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::NavigationView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def animate_transitions=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "animate-transitions", unsafe_value, Pointer(Void).null)
      value
    end

    def animate_transitions? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "animate-transitions", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def hhomogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "hhomogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def hhomogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "hhomogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def navigation_stack : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "navigation-stack", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def pop_on_escape=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "pop-on-escape", unsafe_value, Pointer(Void).null)
      value
    end

    def pop_on_escape? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "pop-on-escape", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def vhomogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "vhomogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def vhomogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "vhomogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def visible_page : Adw::NavigationPage?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "visible-page", pointerof(value), Pointer(Void).null)
      Adw::NavigationPage.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def visible_page_tag : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "visible-page-tag", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#visible_page_tag`, but can return nil.
    def visible_page_tag? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "visible-page-tag", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # adw_navigation_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_new

      # Return value handling
      Adw::NavigationView.new(_retval, GICrystal::Transfer::Full)
    end

    def add(page : Adw::NavigationPage) : Nil
      # adw_navigation_view_add: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_add(to_unsafe, page)

      # Return value handling
    end

    def find_page(tag : ::String) : Adw::NavigationPage?
      # adw_navigation_view_find_page: (Method)
      # @tag:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_navigation_view_find_page(to_unsafe, tag)

      # Return value handling
      Adw::NavigationPage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def animate_transitions : Bool
      # adw_navigation_view_get_animate_transitions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_get_animate_transitions(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hhomogeneous : Bool
      # adw_navigation_view_get_hhomogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_get_hhomogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def navigation_stack : Gio::ListModel
      # adw_navigation_view_get_navigation_stack: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_navigation_view_get_navigation_stack(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def pop_on_escape : Bool
      # adw_navigation_view_get_pop_on_escape: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_get_pop_on_escape(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def previous_page(page : Adw::NavigationPage) : Adw::NavigationPage?
      # adw_navigation_view_get_previous_page: (Method)
      # @page:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_navigation_view_get_previous_page(to_unsafe, page)

      # Return value handling
      Adw::NavigationPage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def vhomogeneous : Bool
      # adw_navigation_view_get_vhomogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_get_vhomogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def visible_page : Adw::NavigationPage?
      # adw_navigation_view_get_visible_page: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_navigation_view_get_visible_page(to_unsafe)

      # Return value handling
      Adw::NavigationPage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def visible_page_tag : ::String?
      # adw_navigation_view_get_visible_page_tag: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_navigation_view_get_visible_page_tag(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def pop : Bool
      # adw_navigation_view_pop: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_pop(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pop_to_page(page : Adw::NavigationPage) : Bool
      # adw_navigation_view_pop_to_page: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_pop_to_page(to_unsafe, page)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pop_to_tag(tag : ::String) : Bool
      # adw_navigation_view_pop_to_tag: (Method)
      # @tag:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_navigation_view_pop_to_tag(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def push(page : Adw::NavigationPage) : Nil
      # adw_navigation_view_push: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_push(to_unsafe, page)

      # Return value handling
    end

    def push_by_tag(tag : ::String) : Nil
      # adw_navigation_view_push_by_tag: (Method)
      # @tag:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_push_by_tag(to_unsafe, tag)

      # Return value handling
    end

    def remove(page : Adw::NavigationPage) : Nil
      # adw_navigation_view_remove: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_remove(to_unsafe, page)

      # Return value handling
    end

    def replace(pages : Enumerable(Adw::NavigationPage)) : Nil
      # adw_navigation_view_replace: (Method)
      # @pages: (array length=n_pages element-type Interface)
      # @n_pages:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_pages = pages.size
      # Generator::ArrayArgPlan
      pages = pages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibAdw::NavigationPage)))

      # C call
      LibAdw.adw_navigation_view_replace(to_unsafe, pages, n_pages)

      # Return value handling
    end

    def replace(*pages : Adw::NavigationPage)
      replace(pages)
    end

    def replace_with_tags(tags : Enumerable(::String)) : Nil
      # adw_navigation_view_replace_with_tags: (Method)
      # @tags: (array length=n_tags element-type Utf8)
      # @n_tags:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_tags = tags.size
      # Generator::ArrayArgPlan
      tags = tags.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibAdw.adw_navigation_view_replace_with_tags(to_unsafe, tags, n_tags)

      # Return value handling
    end

    def replace_with_tags(*tags : ::String)
      replace_with_tags(tags)
    end

    def animate_transitions=(animate_transitions : Bool) : Nil
      # adw_navigation_view_set_animate_transitions: (Method | Setter)
      # @animate_transitions:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_set_animate_transitions(to_unsafe, animate_transitions)

      # Return value handling
    end

    def hhomogeneous=(hhomogeneous : Bool) : Nil
      # adw_navigation_view_set_hhomogeneous: (Method | Setter)
      # @hhomogeneous:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_set_hhomogeneous(to_unsafe, hhomogeneous)

      # Return value handling
    end

    def pop_on_escape=(pop_on_escape : Bool) : Nil
      # adw_navigation_view_set_pop_on_escape: (Method | Setter)
      # @pop_on_escape:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_set_pop_on_escape(to_unsafe, pop_on_escape)

      # Return value handling
    end

    def vhomogeneous=(vhomogeneous : Bool) : Nil
      # adw_navigation_view_set_vhomogeneous: (Method | Setter)
      # @vhomogeneous:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_navigation_view_set_vhomogeneous(to_unsafe, vhomogeneous)

      # Return value handling
    end

    struct GetNextPageSignal < GObject::Signal
      def name : String
        @detail ? "get-next-page::#{@detail}" : "get-next-page"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::NavigationPage)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::NavigationPage), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Adw::NavigationPage)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::NavigationView, Adw::NavigationPage), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::NavigationView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::NavigationView, Adw::NavigationPage)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "get-next-page")
      end
    end

    def get_next_page_signal
      GetNextPageSignal.new(self)
    end

    struct PoppedSignal < GObject::Signal
      def name : String
        @detail ? "popped::#{@detail}" : "popped"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::NavigationPage, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::NavigationPage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::NavigationPage.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Adw::NavigationPage, Nil)).unbox(_lib_box).call(page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::NavigationView, Adw::NavigationPage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::NavigationView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::NavigationPage.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Adw::NavigationView, Adw::NavigationPage, Nil)).unbox(_lib_box).call(_sender, page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::NavigationPage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "popped", page)
      end
    end

    def popped_signal
      PoppedSignal.new(self)
    end

    struct PushedSignal < GObject::Signal
      def name : String
        @detail ? "pushed::#{@detail}" : "pushed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::NavigationView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::NavigationView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::NavigationView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "pushed")
      end
    end

    def pushed_signal
      PushedSignal.new(self)
    end

    struct ReplacedSignal < GObject::Signal
      def name : String
        @detail ? "replaced::#{@detail}" : "replaced"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::NavigationView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::NavigationView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::NavigationView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "replaced")
      end
    end

    def replaced_signal
      ReplacedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
