require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Toast < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Toast, g_object_get_qdata)

    # Initialize a new `Toast`.
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

    def initialize(*, action_name : ::String? = nil, action_target : GLib::Variant? = nil, button_label : ::String? = nil, custom_title : Gtk::Widget? = nil, priority : Adw::ToastPriority? = nil, timeout : UInt32? = nil, title : ::String? = nil, use_markup : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !action_name.nil?
        (_names.to_unsafe + _n).value = "action-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_name)
        _n += 1
      end
      if !action_target.nil?
        (_names.to_unsafe + _n).value = "action-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_target)
        _n += 1
      end
      if !button_label.nil?
        (_names.to_unsafe + _n).value = "button-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, button_label)
        _n += 1
      end
      if !custom_title.nil?
        (_names.to_unsafe + _n).value = "custom-title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, custom_title)
        _n += 1
      end
      if !priority.nil?
        (_names.to_unsafe + _n).value = "priority".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, priority)
        _n += 1
      end
      if !timeout.nil?
        (_names.to_unsafe + _n).value = "timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, timeout)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !use_markup.nil?
        (_names.to_unsafe + _n).value = "use-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_markup)
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
      @@g_type ||= LibAdw.adw_toast_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Toast.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def action_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "action-name", unsafe_value, Pointer(Void).null)
      value
    end

    def action_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "action-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#action_name` property to nil.
    def action_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "action-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#action_name`, but can return nil.
    def action_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "action-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def action_target=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "action-target", unsafe_value, Pointer(Void).null)
      value
    end

    def action_target : GLib::Variant?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "action-target", pointerof(value), Pointer(Void).null)
      GLib::Variant.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def button_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "button-label", unsafe_value, Pointer(Void).null)
      value
    end

    def button_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "button-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#button_label` property to nil.
    def button_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "button-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#button_label`, but can return nil.
    def button_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "button-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def custom_title=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "custom-title", unsafe_value, Pointer(Void).null)
      value
    end

    def custom_title : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "custom-title", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def priority=(value : Adw::ToastPriority) : Adw::ToastPriority
      unsafe_value = value

      LibGObject.g_object_set(self, "priority", unsafe_value, Pointer(Void).null)
      value
    end

    def priority : Adw::ToastPriority
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "priority", pointerof(value), Pointer(Void).null)
      Adw::ToastPriority.new(value)
    end

    def timeout=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def timeout : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "timeout", pointerof(value), Pointer(Void).null)
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

    def use_markup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def use_markup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-markup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(title : ::String) : self
      # adw_toast_new: (Constructor)
      # @title:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_toast_new(title)

      # Return value handling
      Adw::Toast.new(_retval, GICrystal::Transfer::Full)
    end

    def dismiss : Nil
      # adw_toast_dismiss: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toast_dismiss(to_unsafe)

      # Return value handling
    end

    def action_name : ::String?
      # adw_toast_get_action_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toast_get_action_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def action_target_value : GLib::Variant?
      # adw_toast_get_action_target_value: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toast_get_action_target_value(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def button_label : ::String?
      # adw_toast_get_button_label: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toast_get_button_label(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def custom_title : Gtk::Widget?
      # adw_toast_get_custom_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toast_get_custom_title(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def priority : Adw::ToastPriority
      # adw_toast_get_priority: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toast_get_priority(to_unsafe)

      # Return value handling
      Adw::ToastPriority.new(_retval)
    end

    def timeout : UInt32
      # adw_toast_get_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toast_get_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def title : ::String?
      # adw_toast_get_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toast_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def use_markup : Bool
      # adw_toast_get_use_markup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toast_get_use_markup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def action_name=(action_name : ::String?) : Nil
      # adw_toast_set_action_name: (Method | Setter)
      # @action_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      action_name = if action_name.nil?
                      Pointer(LibC::Char).null
                    else
                      action_name.to_unsafe
                    end

      # C call
      LibAdw.adw_toast_set_action_name(to_unsafe, action_name)

      # Return value handling
    end

    def action_target_value=(action_target : _?) : Nil
      # adw_toast_set_action_target_value: (Method | Setter)
      # @action_target: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      action_target = if action_target.nil?
                        Pointer(Void).null
                      elsif !action_target.is_a?(GLib::Variant)
                        GLib::Variant.new(action_target).to_unsafe
                      else
                        action_target.to_unsafe
                      end

      # C call
      LibAdw.adw_toast_set_action_target_value(to_unsafe, action_target)

      # Return value handling
    end

    def button_label=(button_label : ::String?) : Nil
      # adw_toast_set_button_label: (Method | Setter)
      # @button_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      button_label = if button_label.nil?
                       Pointer(LibC::Char).null
                     else
                       button_label.to_unsafe
                     end

      # C call
      LibAdw.adw_toast_set_button_label(to_unsafe, button_label)

      # Return value handling
    end

    def custom_title=(widget : Gtk::Widget?) : Nil
      # adw_toast_set_custom_title: (Method | Setter)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibAdw.adw_toast_set_custom_title(to_unsafe, widget)

      # Return value handling
    end

    def detailed_action_name=(detailed_action_name : ::String?) : Nil
      # adw_toast_set_detailed_action_name: (Method)
      # @detailed_action_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      detailed_action_name = if detailed_action_name.nil?
                               Pointer(LibC::Char).null
                             else
                               detailed_action_name.to_unsafe
                             end

      # C call
      LibAdw.adw_toast_set_detailed_action_name(to_unsafe, detailed_action_name)

      # Return value handling
    end

    def priority=(priority : Adw::ToastPriority) : Nil
      # adw_toast_set_priority: (Method | Setter)
      # @priority:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toast_set_priority(to_unsafe, priority)

      # Return value handling
    end

    def timeout=(timeout : UInt32) : Nil
      # adw_toast_set_timeout: (Method | Setter)
      # @timeout:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toast_set_timeout(to_unsafe, timeout)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # adw_toast_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toast_set_title(to_unsafe, title)

      # Return value handling
    end

    def use_markup=(use_markup : Bool) : Nil
      # adw_toast_set_use_markup: (Method | Setter)
      # @use_markup:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toast_set_use_markup(to_unsafe, use_markup)

      # Return value handling
    end

    struct ButtonClickedSignal < GObject::Signal
      def name : String
        @detail ? "button-clicked::#{@detail}" : "button-clicked"
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

      def connect(handler : Proc(Adw::Toast, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Toast.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Toast, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "button-clicked")
      end
    end

    def button_clicked_signal
      ButtonClickedSignal.new(self)
    end

    struct DismissedSignal < GObject::Signal
      def name : String
        @detail ? "dismissed::#{@detail}" : "dismissed"
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

      def connect(handler : Proc(Adw::Toast, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Toast.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Toast, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "dismissed")
      end
    end

    def dismissed_signal
      DismissedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
