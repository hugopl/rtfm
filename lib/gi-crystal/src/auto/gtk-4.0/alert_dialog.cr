require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class AlertDialog < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::AlertDialogClass), class_init,
        sizeof(LibGtk::AlertDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(AlertDialog, g_object_get_qdata)

    # Initialize a new `AlertDialog`.
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

    def initialize(*, buttons : Enumerable(::String)? = nil, cancel_button : Int32? = nil, default_button : Int32? = nil, detail : ::String? = nil, message : ::String? = nil, modal : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !buttons.nil?
        (_names.to_unsafe + _n).value = "buttons".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, buttons)
        _n += 1
      end
      if !cancel_button.nil?
        (_names.to_unsafe + _n).value = "cancel-button".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cancel_button)
        _n += 1
      end
      if !default_button.nil?
        (_names.to_unsafe + _n).value = "default-button".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_button)
        _n += 1
      end
      if !detail.nil?
        (_names.to_unsafe + _n).value = "detail".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, detail)
        _n += 1
      end
      if !message.nil?
        (_names.to_unsafe + _n).value = "message".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, message)
        _n += 1
      end
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
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
      @@g_type ||= LibGtk.gtk_alert_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AlertDialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def buttons=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "buttons", unsafe_value, Pointer(Void).null)
      value
    end

    def buttons : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "buttons", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def cancel_button=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "cancel-button", unsafe_value, Pointer(Void).null)
      value
    end

    def cancel_button : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "cancel-button", pointerof(value), Pointer(Void).null)
      value
    end

    def default_button=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "default-button", unsafe_value, Pointer(Void).null)
      value
    end

    def default_button : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "default-button", pointerof(value), Pointer(Void).null)
      value
    end

    def detail=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "detail", unsafe_value, Pointer(Void).null)
      value
    end

    def detail : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "detail", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#detail` property to nil.
    def detail=(value : Nil) : Nil
      LibGObject.g_object_set(self, "detail", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#detail`, but can return nil.
    def detail? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "detail", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def message=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "message", unsafe_value, Pointer(Void).null)
      value
    end

    def message : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "message", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#message` property to nil.
    def message=(value : Nil) : Nil
      LibGObject.g_object_set(self, "message", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#message`, but can return nil.
    def message? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "message", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def choose(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_alert_dialog_choose: (Method)
      # @parent: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGtk.gtk_alert_dialog_choose(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def choose_finish(result : Gio::AsyncResult) : Int32
      # gtk_alert_dialog_choose_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_alert_dialog_choose_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def buttons : Enumerable(::String)?
      # gtk_alert_dialog_get_buttons: (Method | Getter)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_alert_dialog_get_buttons(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def cancel_button : Int32
      # gtk_alert_dialog_get_cancel_button: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_alert_dialog_get_cancel_button(to_unsafe)

      # Return value handling
      _retval
    end

    def default_button : Int32
      # gtk_alert_dialog_get_default_button: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_alert_dialog_get_default_button(to_unsafe)

      # Return value handling
      _retval
    end

    def detail : ::String
      # gtk_alert_dialog_get_detail: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_alert_dialog_get_detail(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def message : ::String
      # gtk_alert_dialog_get_message: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_alert_dialog_get_message(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def modal : Bool
      # gtk_alert_dialog_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_alert_dialog_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def buttons=(labels : Enumerable(::String)) : Nil
      # gtk_alert_dialog_set_buttons: (Method | Setter)
      # @labels: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      labels = labels.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibGtk.gtk_alert_dialog_set_buttons(to_unsafe, labels)

      # Return value handling
    end

    def cancel_button=(button : Int32) : Nil
      # gtk_alert_dialog_set_cancel_button: (Method | Setter)
      # @button:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_alert_dialog_set_cancel_button(to_unsafe, button)

      # Return value handling
    end

    def default_button=(button : Int32) : Nil
      # gtk_alert_dialog_set_default_button: (Method | Setter)
      # @button:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_alert_dialog_set_default_button(to_unsafe, button)

      # Return value handling
    end

    def detail=(detail : ::String) : Nil
      # gtk_alert_dialog_set_detail: (Method | Setter)
      # @detail:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_alert_dialog_set_detail(to_unsafe, detail)

      # Return value handling
    end

    def message=(message : ::String) : Nil
      # gtk_alert_dialog_set_message: (Method | Setter)
      # @message:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_alert_dialog_set_message(to_unsafe, message)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # gtk_alert_dialog_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_alert_dialog_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def show(parent : Gtk::Window?) : Nil
      # gtk_alert_dialog_show: (Method)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      LibGtk.gtk_alert_dialog_show(to_unsafe, parent)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
