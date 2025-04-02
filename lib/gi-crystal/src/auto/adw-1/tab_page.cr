require "../g_object-2.0/object"
require "../gtk-4.0/accessible"

module Adw
  @[GICrystal::GeneratedWrapper]
  class TabPage < GObject::Object
    include Gtk::Accessible

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TabPage, g_object_get_qdata)

    # Initialize a new `TabPage`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, child : Gtk::Widget? = nil, icon : Gio::Icon? = nil, indicator_activatable : Bool? = nil, indicator_icon : Gio::Icon? = nil, indicator_tooltip : ::String? = nil, keyword : ::String? = nil, live_thumbnail : Bool? = nil, loading : Bool? = nil, needs_attention : Bool? = nil, parent : Adw::TabPage? = nil, pinned : Bool? = nil, selected : Bool? = nil, thumbnail_xalign : Float32? = nil, thumbnail_yalign : Float32? = nil, title : ::String? = nil, tooltip : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[17]
      _values = StaticArray(LibGObject::Value, 17).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
        _n += 1
      end
      if !icon.nil?
        (_names.to_unsafe + _n).value = "icon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon)
        _n += 1
      end
      if !indicator_activatable.nil?
        (_names.to_unsafe + _n).value = "indicator-activatable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, indicator_activatable)
        _n += 1
      end
      if !indicator_icon.nil?
        (_names.to_unsafe + _n).value = "indicator-icon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, indicator_icon)
        _n += 1
      end
      if !indicator_tooltip.nil?
        (_names.to_unsafe + _n).value = "indicator-tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, indicator_tooltip)
        _n += 1
      end
      if !keyword.nil?
        (_names.to_unsafe + _n).value = "keyword".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, keyword)
        _n += 1
      end
      if !live_thumbnail.nil?
        (_names.to_unsafe + _n).value = "live-thumbnail".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, live_thumbnail)
        _n += 1
      end
      if !loading.nil?
        (_names.to_unsafe + _n).value = "loading".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, loading)
        _n += 1
      end
      if !needs_attention.nil?
        (_names.to_unsafe + _n).value = "needs-attention".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, needs_attention)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !pinned.nil?
        (_names.to_unsafe + _n).value = "pinned".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pinned)
        _n += 1
      end
      if !selected.nil?
        (_names.to_unsafe + _n).value = "selected".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected)
        _n += 1
      end
      if !thumbnail_xalign.nil?
        (_names.to_unsafe + _n).value = "thumbnail-xalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, thumbnail_xalign)
        _n += 1
      end
      if !thumbnail_yalign.nil?
        (_names.to_unsafe + _n).value = "thumbnail-yalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, thumbnail_yalign)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !tooltip.nil?
        (_names.to_unsafe + _n).value = "tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip)
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
      @@g_type ||= LibAdw.adw_tab_page_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::TabPage.new(Void*, GICrystal::Transfer)
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

    def icon=(value : Gio::Icon?) : Gio::Icon?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "icon", unsafe_value, Pointer(Void).null)
      value
    end

    def icon : Gio::Icon?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "icon", pointerof(value), Pointer(Void).null)
      Gio::AbstractIcon.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def indicator_activatable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "indicator-activatable", unsafe_value, Pointer(Void).null)
      value
    end

    def indicator_activatable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "indicator-activatable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def indicator_icon=(value : Gio::Icon?) : Gio::Icon?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "indicator-icon", unsafe_value, Pointer(Void).null)
      value
    end

    def indicator_icon : Gio::Icon?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "indicator-icon", pointerof(value), Pointer(Void).null)
      Gio::AbstractIcon.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def indicator_tooltip=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "indicator-tooltip", unsafe_value, Pointer(Void).null)
      value
    end

    def indicator_tooltip : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "indicator-tooltip", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#indicator_tooltip` property to nil.
    def indicator_tooltip=(value : Nil) : Nil
      LibGObject.g_object_set(self, "indicator-tooltip", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#indicator_tooltip`, but can return nil.
    def indicator_tooltip? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "indicator-tooltip", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def keyword=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "keyword", unsafe_value, Pointer(Void).null)
      value
    end

    def keyword : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "keyword", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#keyword` property to nil.
    def keyword=(value : Nil) : Nil
      LibGObject.g_object_set(self, "keyword", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#keyword`, but can return nil.
    def keyword? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "keyword", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def live_thumbnail=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "live-thumbnail", unsafe_value, Pointer(Void).null)
      value
    end

    def live_thumbnail? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "live-thumbnail", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def loading=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "loading", unsafe_value, Pointer(Void).null)
      value
    end

    def loading? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "loading", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def needs_attention=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "needs-attention", unsafe_value, Pointer(Void).null)
      value
    end

    def needs_attention? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "needs-attention", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def parent=(value : Adw::TabPage?) : Adw::TabPage?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "parent", unsafe_value, Pointer(Void).null)
      value
    end

    def parent : Adw::TabPage?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parent", pointerof(value), Pointer(Void).null)
      Adw::TabPage.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def pinned? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "pinned", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def selected? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "selected", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def thumbnail_xalign=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "thumbnail-xalign", unsafe_value, Pointer(Void).null)
      value
    end

    def thumbnail_xalign : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "thumbnail-xalign", pointerof(value), Pointer(Void).null)
      value
    end

    def thumbnail_yalign=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "thumbnail-yalign", unsafe_value, Pointer(Void).null)
      value
    end

    def thumbnail_yalign : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "thumbnail-yalign", pointerof(value), Pointer(Void).null)
      value
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

    def tooltip=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tooltip` property to nil.
    def tooltip=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tooltip", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tooltip`, but can return nil.
    def tooltip? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def child : Gtk::Widget
      # adw_tab_page_get_child: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    def icon : Gio::Icon?
      # adw_tab_page_get_icon: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_page_get_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def indicator_activatable : Bool
      # adw_tab_page_get_indicator_activatable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_indicator_activatable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def indicator_icon : Gio::Icon?
      # adw_tab_page_get_indicator_icon: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_page_get_indicator_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def indicator_tooltip : ::String
      # adw_tab_page_get_indicator_tooltip: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_indicator_tooltip(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def keyword : ::String?
      # adw_tab_page_get_keyword: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_page_get_keyword(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def live_thumbnail : Bool
      # adw_tab_page_get_live_thumbnail: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_live_thumbnail(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def loading : Bool
      # adw_tab_page_get_loading: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_loading(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def needs_attention : Bool
      # adw_tab_page_get_needs_attention: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_needs_attention(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def parent : Adw::TabPage?
      # adw_tab_page_get_parent: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_page_get_parent(to_unsafe)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def pinned : Bool
      # adw_tab_page_get_pinned: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_pinned(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def selected : Bool
      # adw_tab_page_get_selected: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_selected(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def thumbnail_xalign : Float32
      # adw_tab_page_get_thumbnail_xalign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_thumbnail_xalign(to_unsafe)

      # Return value handling
      _retval
    end

    def thumbnail_yalign : Float32
      # adw_tab_page_get_thumbnail_yalign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_thumbnail_yalign(to_unsafe)

      # Return value handling
      _retval
    end

    def title : ::String
      # adw_tab_page_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_page_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def tooltip : ::String?
      # adw_tab_page_get_tooltip: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_page_get_tooltip(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def invalidate_thumbnail : Nil
      # adw_tab_page_invalidate_thumbnail: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_invalidate_thumbnail(to_unsafe)

      # Return value handling
    end

    def icon=(icon : Gio::Icon?) : Nil
      # adw_tab_page_set_icon: (Method | Setter)
      # @icon: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon = if icon.nil?
               Pointer(Void).null
             else
               icon.to_unsafe
             end

      # C call
      LibAdw.adw_tab_page_set_icon(to_unsafe, icon)

      # Return value handling
    end

    def indicator_activatable=(activatable : Bool) : Nil
      # adw_tab_page_set_indicator_activatable: (Method | Setter)
      # @activatable:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_indicator_activatable(to_unsafe, activatable)

      # Return value handling
    end

    def indicator_icon=(indicator_icon : Gio::Icon?) : Nil
      # adw_tab_page_set_indicator_icon: (Method | Setter)
      # @indicator_icon: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      indicator_icon = if indicator_icon.nil?
                         Pointer(Void).null
                       else
                         indicator_icon.to_unsafe
                       end

      # C call
      LibAdw.adw_tab_page_set_indicator_icon(to_unsafe, indicator_icon)

      # Return value handling
    end

    def indicator_tooltip=(tooltip : ::String) : Nil
      # adw_tab_page_set_indicator_tooltip: (Method | Setter)
      # @tooltip:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_indicator_tooltip(to_unsafe, tooltip)

      # Return value handling
    end

    def keyword=(keyword : ::String) : Nil
      # adw_tab_page_set_keyword: (Method | Setter)
      # @keyword:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_keyword(to_unsafe, keyword)

      # Return value handling
    end

    def live_thumbnail=(live_thumbnail : Bool) : Nil
      # adw_tab_page_set_live_thumbnail: (Method | Setter)
      # @live_thumbnail:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_live_thumbnail(to_unsafe, live_thumbnail)

      # Return value handling
    end

    def loading=(loading : Bool) : Nil
      # adw_tab_page_set_loading: (Method | Setter)
      # @loading:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_loading(to_unsafe, loading)

      # Return value handling
    end

    def needs_attention=(needs_attention : Bool) : Nil
      # adw_tab_page_set_needs_attention: (Method | Setter)
      # @needs_attention:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_needs_attention(to_unsafe, needs_attention)

      # Return value handling
    end

    def thumbnail_xalign=(xalign : Float32) : Nil
      # adw_tab_page_set_thumbnail_xalign: (Method | Setter)
      # @xalign:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_thumbnail_xalign(to_unsafe, xalign)

      # Return value handling
    end

    def thumbnail_yalign=(yalign : Float32) : Nil
      # adw_tab_page_set_thumbnail_yalign: (Method | Setter)
      # @yalign:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_thumbnail_yalign(to_unsafe, yalign)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # adw_tab_page_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_title(to_unsafe, title)

      # Return value handling
    end

    def tooltip=(tooltip : ::String) : Nil
      # adw_tab_page_set_tooltip: (Method | Setter)
      # @tooltip:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_page_set_tooltip(to_unsafe, tooltip)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
