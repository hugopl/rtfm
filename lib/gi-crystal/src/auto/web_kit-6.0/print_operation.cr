require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class PrintOperation < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(PrintOperation, g_object_get_qdata)

    # Initialize a new `PrintOperation`.
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

    def initialize(*, page_setup : Gtk::PageSetup? = nil, print_settings : Gtk::PrintSettings? = nil, web_view : WebKit::WebView? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !page_setup.nil?
        (_names.to_unsafe + _n).value = "page-setup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page_setup)
        _n += 1
      end
      if !print_settings.nil?
        (_names.to_unsafe + _n).value = "print-settings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, print_settings)
        _n += 1
      end
      if !web_view.nil?
        (_names.to_unsafe + _n).value = "web-view".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, web_view)
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
      @@g_type ||= LibWebKit.webkit_print_operation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::PrintOperation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def page_setup=(value : Gtk::PageSetup?) : Gtk::PageSetup?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "page-setup", unsafe_value, Pointer(Void).null)
      value
    end

    def page_setup : Gtk::PageSetup?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "page-setup", pointerof(value), Pointer(Void).null)
      Gtk::PageSetup.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def print_settings=(value : Gtk::PrintSettings?) : Gtk::PrintSettings?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "print-settings", unsafe_value, Pointer(Void).null)
      value
    end

    def print_settings : Gtk::PrintSettings?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "print-settings", pointerof(value), Pointer(Void).null)
      Gtk::PrintSettings.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def web_view=(value : WebKit::WebView?) : WebKit::WebView?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "web-view", unsafe_value, Pointer(Void).null)
      value
    end

    def web_view : WebKit::WebView?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "web-view", pointerof(value), Pointer(Void).null)
      WebKit::WebView.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(web_view : WebKit::WebView) : self
      # webkit_print_operation_new: (Constructor)
      # @web_view:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_print_operation_new(web_view)

      # Return value handling
      WebKit::PrintOperation.new(_retval, GICrystal::Transfer::Full)
    end

    def page_setup : Gtk::PageSetup
      # webkit_print_operation_get_page_setup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_print_operation_get_page_setup(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::None)
    end

    def print_settings : Gtk::PrintSettings
      # webkit_print_operation_get_print_settings: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_print_operation_get_print_settings(to_unsafe)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::None)
    end

    def print : Nil
      # webkit_print_operation_print: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_print_operation_print(to_unsafe)

      # Return value handling
    end

    def run_dialog(parent : Gtk::Window?) : WebKit::PrintOperationResponse
      # webkit_print_operation_run_dialog: (Method)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibWebKit.webkit_print_operation_run_dialog(to_unsafe, parent)

      # Return value handling
      WebKit::PrintOperationResponse.new(_retval)
    end

    def page_setup=(page_setup : Gtk::PageSetup) : Nil
      # webkit_print_operation_set_page_setup: (Method | Setter)
      # @page_setup:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_print_operation_set_page_setup(to_unsafe, page_setup)

      # Return value handling
    end

    def print_settings=(print_settings : Gtk::PrintSettings) : Nil
      # webkit_print_operation_set_print_settings: (Method | Setter)
      # @print_settings:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_print_operation_set_print_settings(to_unsafe, print_settings)

      # Return value handling
    end

    struct FailedSignal < GObject::Signal
      def name : String
        @detail ? "failed::#{@detail}" : "failed"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Error, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          # Generator::GErrorArgPlan
          error = WebKit.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(GLib::Error, Nil)).unbox(_lib_box).call(error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::PrintOperation, GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = WebKit::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::GErrorArgPlan
          error = WebKit.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(WebKit::PrintOperation, GLib::Error, Nil)).unbox(_lib_box).call(_sender, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(error : GLib::Error) : Nil
        LibGObject.g_signal_emit_by_name(@source, "failed", error)
      end
    end

    def failed_signal
      FailedSignal.new(self)
    end

    struct FinishedSignal < GObject::Signal
      def name : String
        @detail ? "finished::#{@detail}" : "finished"
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

      def connect(handler : Proc(WebKit::PrintOperation, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::PrintOperation, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "finished")
      end
    end

    def finished_signal
      FinishedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
