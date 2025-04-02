require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebResource < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebResource, g_object_get_qdata)

    # Initialize a new `WebResource`.
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

    def initialize(*, response : WebKit::URIResponse? = nil, uri : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !response.nil?
        (_names.to_unsafe + _n).value = "response".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, response)
        _n += 1
      end
      if !uri.nil?
        (_names.to_unsafe + _n).value = "uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, uri)
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
      @@g_type ||= LibWebKit.webkit_web_resource_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebResource.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def response : WebKit::URIResponse?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "response", pointerof(value), Pointer(Void).null)
      WebKit::URIResponse.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#uri`, but can return nil.
    def uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def data(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_resource_get_data: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibWebKit.webkit_web_resource_get_data(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def data_finish(result : Gio::AsyncResult) : ::Bytes
      # webkit_web_resource_get_data_finish: (Method | Throws)
      # @result:
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (array length=length element-type UInt8)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = 0_u64
      # C call
      _retval = LibWebKit.webkit_web_resource_get_data_finish(to_unsafe, result, pointerof(length), pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_array(_retval, length, GICrystal::Transfer::Full)
    end

    def response : WebKit::URIResponse
      # webkit_web_resource_get_response: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_resource_get_response(to_unsafe)

      # Return value handling
      WebKit::URIResponse.new(_retval, GICrystal::Transfer::None)
    end

    def uri : ::String
      # webkit_web_resource_get_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_resource_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
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

      def connect(handler : Proc(WebKit::WebResource, GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebResource.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::GErrorArgPlan
          error = WebKit.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebResource, GLib::Error, Nil)).unbox(_lib_box).call(_sender, error)
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

    struct FailedWithTlsErrorsSignal < GObject::Signal
      def name : String
        @detail ? "failed-with-tls-errors::#{@detail}" : "failed-with-tls-errors"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_certificate : Pointer(Void), lib_errors : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          certificate = Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          errors = Gio::TlsCertificateFlags.new(lib_errors)
          ::Box(Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Nil)).unbox(_lib_box).call(certificate, errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebResource, Gio::TlsCertificate, Gio::TlsCertificateFlags, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_certificate : Pointer(Void), lib_errors : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::WebResource.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          certificate = Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          errors = Gio::TlsCertificateFlags.new(lib_errors)
          ::Box(Proc(WebKit::WebResource, Gio::TlsCertificate, Gio::TlsCertificateFlags, Nil)).unbox(_lib_box).call(_sender, certificate, errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(certificate : Gio::TlsCertificate, errors : Gio::TlsCertificateFlags) : Nil
        LibGObject.g_signal_emit_by_name(@source, "failed-with-tls-errors", certificate, errors)
      end
    end

    def failed_with_tls_errors_signal
      FailedWithTlsErrorsSignal.new(self)
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

      def connect(handler : Proc(WebKit::WebResource, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebResource.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebResource, Nil)).unbox(_lib_box).call(_sender)
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

    struct SentRequestSignal < GObject::Signal
      def name : String
        @detail ? "sent-request::#{@detail}" : "sent-request"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::URIRequest, WebKit::URIResponse, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::URIRequest, WebKit::URIResponse, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), lib_redirected_response : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          request = WebKit::URIRequest.new(lib_request, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          redirected_response = WebKit::URIResponse.new(lib_redirected_response, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::URIRequest, WebKit::URIResponse, Nil)).unbox(_lib_box).call(request, redirected_response)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebResource, WebKit::URIRequest, WebKit::URIResponse, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), lib_redirected_response : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebResource.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::URIRequest.new(lib_request, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          redirected_response = WebKit::URIResponse.new(lib_redirected_response, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebResource, WebKit::URIRequest, WebKit::URIResponse, Nil)).unbox(_lib_box).call(_sender, request, redirected_response)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(request : WebKit::URIRequest, redirected_response : WebKit::URIResponse) : Nil
        LibGObject.g_signal_emit_by_name(@source, "sent-request", request, redirected_response)
      end
    end

    def sent_request_signal
      SentRequestSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
