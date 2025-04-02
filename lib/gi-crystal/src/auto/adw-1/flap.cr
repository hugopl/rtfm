require "../gtk-4.0/widget"
require "./swipeable"

require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/orientable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Flap < Gtk::Widget
    include Swipeable
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Flap, g_object_get_qdata)

    # Initialize a new `Flap`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, content : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, flap : Gtk::Widget? = nil, flap_position : Gtk::PackType? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, fold_duration : UInt32? = nil, fold_policy : Adw::FlapFoldPolicy? = nil, fold_threshold_policy : Adw::FoldThresholdPolicy? = nil, folded : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, locked : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, reveal_flap : Bool? = nil, reveal_params : Adw::SpringParams? = nil, reveal_progress : Float64? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, separator : Gtk::Widget? = nil, swipe_to_close : Bool? = nil, swipe_to_open : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, transition_type : Adw::FlapTransitionType? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[53]
      _values = StaticArray(LibGObject::Value, 53).new(LibGObject::Value.new)
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
      if !content.nil?
        (_names.to_unsafe + _n).value = "content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content)
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
      if !flap.nil?
        (_names.to_unsafe + _n).value = "flap".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flap)
        _n += 1
      end
      if !flap_position.nil?
        (_names.to_unsafe + _n).value = "flap-position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flap_position)
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
      if !fold_duration.nil?
        (_names.to_unsafe + _n).value = "fold-duration".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fold_duration)
        _n += 1
      end
      if !fold_policy.nil?
        (_names.to_unsafe + _n).value = "fold-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fold_policy)
        _n += 1
      end
      if !fold_threshold_policy.nil?
        (_names.to_unsafe + _n).value = "fold-threshold-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fold_threshold_policy)
        _n += 1
      end
      if !folded.nil?
        (_names.to_unsafe + _n).value = "folded".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, folded)
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
      if !locked.nil?
        (_names.to_unsafe + _n).value = "locked".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, locked)
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
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
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
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
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
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !reveal_flap.nil?
        (_names.to_unsafe + _n).value = "reveal-flap".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reveal_flap)
        _n += 1
      end
      if !reveal_params.nil?
        (_names.to_unsafe + _n).value = "reveal-params".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reveal_params)
        _n += 1
      end
      if !reveal_progress.nil?
        (_names.to_unsafe + _n).value = "reveal-progress".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reveal_progress)
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
      if !separator.nil?
        (_names.to_unsafe + _n).value = "separator".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, separator)
        _n += 1
      end
      if !swipe_to_close.nil?
        (_names.to_unsafe + _n).value = "swipe-to-close".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, swipe_to_close)
        _n += 1
      end
      if !swipe_to_open.nil?
        (_names.to_unsafe + _n).value = "swipe-to-open".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, swipe_to_open)
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
      if !transition_type.nil?
        (_names.to_unsafe + _n).value = "transition-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transition_type)
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
      @@g_type ||= LibAdw.adw_flap_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Flap.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def content=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "content", unsafe_value, Pointer(Void).null)
      value
    end

    def content : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "content", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def flap=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "flap", unsafe_value, Pointer(Void).null)
      value
    end

    def flap : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "flap", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def flap_position=(value : Gtk::PackType) : Gtk::PackType
      unsafe_value = value

      LibGObject.g_object_set(self, "flap-position", unsafe_value, Pointer(Void).null)
      value
    end

    def flap_position : Gtk::PackType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flap-position", pointerof(value), Pointer(Void).null)
      Gtk::PackType.new(value)
    end

    def fold_duration=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "fold-duration", unsafe_value, Pointer(Void).null)
      value
    end

    def fold_duration : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "fold-duration", pointerof(value), Pointer(Void).null)
      value
    end

    def fold_policy=(value : Adw::FlapFoldPolicy) : Adw::FlapFoldPolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "fold-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def fold_policy : Adw::FlapFoldPolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "fold-policy", pointerof(value), Pointer(Void).null)
      Adw::FlapFoldPolicy.new(value)
    end

    def fold_threshold_policy=(value : Adw::FoldThresholdPolicy) : Adw::FoldThresholdPolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "fold-threshold-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def fold_threshold_policy : Adw::FoldThresholdPolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "fold-threshold-policy", pointerof(value), Pointer(Void).null)
      Adw::FoldThresholdPolicy.new(value)
    end

    def folded? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "folded", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def locked=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "locked", unsafe_value, Pointer(Void).null)
      value
    end

    def locked? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "locked", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def modal=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "modal", unsafe_value, Pointer(Void).null)
      value
    end

    def modal? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "modal", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def reveal_flap=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reveal-flap", unsafe_value, Pointer(Void).null)
      value
    end

    def reveal_flap? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reveal-flap", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def reveal_params=(value : Adw::SpringParams?) : Adw::SpringParams?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "reveal-params", unsafe_value, Pointer(Void).null)
      value
    end

    def reveal_params : Adw::SpringParams?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "reveal-params", pointerof(value), Pointer(Void).null)
      Adw::SpringParams.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def reveal_progress : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "reveal-progress", pointerof(value), Pointer(Void).null)
      value
    end

    def separator=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "separator", unsafe_value, Pointer(Void).null)
      value
    end

    def separator : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "separator", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def swipe_to_close=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "swipe-to-close", unsafe_value, Pointer(Void).null)
      value
    end

    def swipe_to_close? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "swipe-to-close", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def swipe_to_open=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "swipe-to-open", unsafe_value, Pointer(Void).null)
      value
    end

    def swipe_to_open? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "swipe-to-open", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def transition_type=(value : Adw::FlapTransitionType) : Adw::FlapTransitionType
      unsafe_value = value

      LibGObject.g_object_set(self, "transition-type", unsafe_value, Pointer(Void).null)
      value
    end

    def transition_type : Adw::FlapTransitionType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "transition-type", pointerof(value), Pointer(Void).null)
      Adw::FlapTransitionType.new(value)
    end

    @[Deprecated]
    def self.new : self
      # adw_flap_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_new

      # Return value handling
      Adw::Flap.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def content : Gtk::Widget?
      # adw_flap_get_content: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_flap_get_content(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def flap : Gtk::Widget?
      # adw_flap_get_flap: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_flap_get_flap(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def flap_position : Gtk::PackType
      # adw_flap_get_flap_position: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_flap_position(to_unsafe)

      # Return value handling
      Gtk::PackType.new(_retval)
    end

    @[Deprecated]
    def fold_duration : UInt32
      # adw_flap_get_fold_duration: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_fold_duration(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def fold_policy : Adw::FlapFoldPolicy
      # adw_flap_get_fold_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_fold_policy(to_unsafe)

      # Return value handling
      Adw::FlapFoldPolicy.new(_retval)
    end

    @[Deprecated]
    def fold_threshold_policy : Adw::FoldThresholdPolicy
      # adw_flap_get_fold_threshold_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_fold_threshold_policy(to_unsafe)

      # Return value handling
      Adw::FoldThresholdPolicy.new(_retval)
    end

    @[Deprecated]
    def folded : Bool
      # adw_flap_get_folded: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_folded(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def locked : Bool
      # adw_flap_get_locked: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_locked(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def modal : Bool
      # adw_flap_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def reveal_flap : Bool
      # adw_flap_get_reveal_flap: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_reveal_flap(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def reveal_params : Adw::SpringParams
      # adw_flap_get_reveal_params: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_flap_get_reveal_params(to_unsafe)

      # Return value handling
      Adw::SpringParams.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def reveal_progress : Float64
      # adw_flap_get_reveal_progress: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_reveal_progress(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def separator : Gtk::Widget?
      # adw_flap_get_separator: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_flap_get_separator(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def swipe_to_close : Bool
      # adw_flap_get_swipe_to_close: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_swipe_to_close(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def swipe_to_open : Bool
      # adw_flap_get_swipe_to_open: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_swipe_to_open(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def transition_type : Adw::FlapTransitionType
      # adw_flap_get_transition_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_flap_get_transition_type(to_unsafe)

      # Return value handling
      Adw::FlapTransitionType.new(_retval)
    end

    @[Deprecated]
    def content=(content : Gtk::Widget?) : Nil
      # adw_flap_set_content: (Method | Setter)
      # @content: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content = if content.nil?
                  Pointer(Void).null
                else
                  content.to_unsafe
                end

      # C call
      LibAdw.adw_flap_set_content(to_unsafe, content)

      # Return value handling
    end

    @[Deprecated]
    def flap=(flap : Gtk::Widget?) : Nil
      # adw_flap_set_flap: (Method | Setter)
      # @flap: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      flap = if flap.nil?
               Pointer(Void).null
             else
               flap.to_unsafe
             end

      # C call
      LibAdw.adw_flap_set_flap(to_unsafe, flap)

      # Return value handling
    end

    @[Deprecated]
    def flap_position=(position : Gtk::PackType) : Nil
      # adw_flap_set_flap_position: (Method | Setter)
      # @position:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_flap_position(to_unsafe, position)

      # Return value handling
    end

    @[Deprecated]
    def fold_duration=(duration : UInt32) : Nil
      # adw_flap_set_fold_duration: (Method | Setter)
      # @duration:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_fold_duration(to_unsafe, duration)

      # Return value handling
    end

    @[Deprecated]
    def fold_policy=(policy : Adw::FlapFoldPolicy) : Nil
      # adw_flap_set_fold_policy: (Method | Setter)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_fold_policy(to_unsafe, policy)

      # Return value handling
    end

    @[Deprecated]
    def fold_threshold_policy=(policy : Adw::FoldThresholdPolicy) : Nil
      # adw_flap_set_fold_threshold_policy: (Method | Setter)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_fold_threshold_policy(to_unsafe, policy)

      # Return value handling
    end

    @[Deprecated]
    def locked=(locked : Bool) : Nil
      # adw_flap_set_locked: (Method | Setter)
      # @locked:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_locked(to_unsafe, locked)

      # Return value handling
    end

    @[Deprecated]
    def modal=(modal : Bool) : Nil
      # adw_flap_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_modal(to_unsafe, modal)

      # Return value handling
    end

    @[Deprecated]
    def reveal_flap=(reveal_flap : Bool) : Nil
      # adw_flap_set_reveal_flap: (Method | Setter)
      # @reveal_flap:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_reveal_flap(to_unsafe, reveal_flap)

      # Return value handling
    end

    @[Deprecated]
    def reveal_params=(params : Adw::SpringParams) : Nil
      # adw_flap_set_reveal_params: (Method | Setter)
      # @params:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_reveal_params(to_unsafe, params)

      # Return value handling
    end

    @[Deprecated]
    def separator=(separator : Gtk::Widget?) : Nil
      # adw_flap_set_separator: (Method | Setter)
      # @separator: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      separator = if separator.nil?
                    Pointer(Void).null
                  else
                    separator.to_unsafe
                  end

      # C call
      LibAdw.adw_flap_set_separator(to_unsafe, separator)

      # Return value handling
    end

    @[Deprecated]
    def swipe_to_close=(swipe_to_close : Bool) : Nil
      # adw_flap_set_swipe_to_close: (Method | Setter)
      # @swipe_to_close:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_swipe_to_close(to_unsafe, swipe_to_close)

      # Return value handling
    end

    @[Deprecated]
    def swipe_to_open=(swipe_to_open : Bool) : Nil
      # adw_flap_set_swipe_to_open: (Method | Setter)
      # @swipe_to_open:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_swipe_to_open(to_unsafe, swipe_to_open)

      # Return value handling
    end

    @[Deprecated]
    def transition_type=(transition_type : Adw::FlapTransitionType) : Nil
      # adw_flap_set_transition_type: (Method | Setter)
      # @transition_type:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_flap_set_transition_type(to_unsafe, transition_type)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
