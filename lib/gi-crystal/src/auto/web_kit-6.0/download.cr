require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class Download < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Download, g_object_get_qdata)

    # Initialize a new `Download`.
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

    def initialize(*, allow_overwrite : Bool? = nil, destination : ::String? = nil, estimated_progress : Float64? = nil, response : WebKit::URIResponse? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !allow_overwrite.nil?
        (_names.to_unsafe + _n).value = "allow-overwrite".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_overwrite)
        _n += 1
      end
      if !destination.nil?
        (_names.to_unsafe + _n).value = "destination".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, destination)
        _n += 1
      end
      if !estimated_progress.nil?
        (_names.to_unsafe + _n).value = "estimated-progress".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, estimated_progress)
        _n += 1
      end
      if !response.nil?
        (_names.to_unsafe + _n).value = "response".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, response)
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
      @@g_type ||= LibWebKit.webkit_download_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::Download.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allow_overwrite=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-overwrite", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_overwrite? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-overwrite", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def destination : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "destination", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#destination`, but can return nil.
    def destination? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "destination", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def estimated_progress : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "estimated-progress", pointerof(value), Pointer(Void).null)
      value
    end

    def response : WebKit::URIResponse?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "response", pointerof(value), Pointer(Void).null)
      WebKit::URIResponse.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def cancel : Nil
      # webkit_download_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_download_cancel(to_unsafe)

      # Return value handling
    end

    def allow_overwrite : Bool
      # webkit_download_get_allow_overwrite: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_download_get_allow_overwrite(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def destination : ::String?
      # webkit_download_get_destination: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_download_get_destination(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def elapsed_time : Float64
      # webkit_download_get_elapsed_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_download_get_elapsed_time(to_unsafe)

      # Return value handling
      _retval
    end

    def estimated_progress : Float64
      # webkit_download_get_estimated_progress: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_download_get_estimated_progress(to_unsafe)

      # Return value handling
      _retval
    end

    def received_data_length : UInt64
      # webkit_download_get_received_data_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_download_get_received_data_length(to_unsafe)

      # Return value handling
      _retval
    end

    def request : WebKit::URIRequest
      # webkit_download_get_request: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_download_get_request(to_unsafe)

      # Return value handling
      WebKit::URIRequest.new(_retval, GICrystal::Transfer::None)
    end

    def response : WebKit::URIResponse
      # webkit_download_get_response: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_download_get_response(to_unsafe)

      # Return value handling
      WebKit::URIResponse.new(_retval, GICrystal::Transfer::None)
    end

    def web_view : WebKit::WebView
      # webkit_download_get_web_view: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_download_get_web_view(to_unsafe)

      # Return value handling
      WebKit::WebView.new(_retval, GICrystal::Transfer::None)
    end

    def allow_overwrite=(allowed : Bool) : Nil
      # webkit_download_set_allow_overwrite: (Method | Setter)
      # @allowed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_download_set_allow_overwrite(to_unsafe, allowed)

      # Return value handling
    end

    def destination=(destination : ::String) : Nil
      # webkit_download_set_destination: (Method)
      # @destination:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_download_set_destination(to_unsafe, destination)

      # Return value handling
    end

    struct CreatedDestinationSignal < GObject::Signal
      def name : String
        @detail ? "created-destination::#{@detail}" : "created-destination"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_destination : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          destination = ::String.new(lib_destination)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(destination)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::Download, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_destination : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = WebKit::Download.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          destination = ::String.new(lib_destination)
          ::Box(Proc(WebKit::Download, ::String, Nil)).unbox(_lib_box).call(_sender, destination)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(destination : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "created-destination", destination)
      end
    end

    def created_destination_signal
      CreatedDestinationSignal.new(self)
    end

    struct DecideDestinationSignal < GObject::Signal
      def name : String
        @detail ? "decide-destination::#{@detail}" : "decide-destination"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_suggested_filename : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          suggested_filename = ::String.new(lib_suggested_filename)
          ::Box(Proc(::String, Bool)).unbox(_lib_box).call(suggested_filename)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::Download, ::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_suggested_filename : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = WebKit::Download.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          suggested_filename = ::String.new(lib_suggested_filename)
          ::Box(Proc(WebKit::Download, ::String, Bool)).unbox(_lib_box).call(_sender, suggested_filename)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(suggested_filename : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "decide-destination", suggested_filename)
      end
    end

    def decide_destination_signal
      DecideDestinationSignal.new(self)
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

      def connect(handler : Proc(WebKit::Download, GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = WebKit::Download.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::GErrorArgPlan
          error = WebKit.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(WebKit::Download, GLib::Error, Nil)).unbox(_lib_box).call(_sender, error)
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

      def connect(handler : Proc(WebKit::Download, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::Download.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::Download, Nil)).unbox(_lib_box).call(_sender)
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

    struct ReceivedDataSignal < GObject::Signal
      def name : String
        @detail ? "received-data::#{@detail}" : "received-data"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_data_length : UInt64, _lib_box : Pointer(Void)) {
          # NoStrategy
          data_length = lib_data_length
          ::Box(Proc(UInt64, Nil)).unbox(_lib_box).call(data_length)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::Download, UInt64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_data_length : UInt64, _lib_box : Pointer(Void)) {
          _sender = WebKit::Download.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          data_length = lib_data_length
          ::Box(Proc(WebKit::Download, UInt64, Nil)).unbox(_lib_box).call(_sender, data_length)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(data_length : UInt64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "received-data", data_length)
      end
    end

    def received_data_signal
      ReceivedDataSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
