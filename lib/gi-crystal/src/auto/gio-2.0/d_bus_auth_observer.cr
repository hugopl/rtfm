require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusAuthObserver < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DBusAuthObserver, g_object_get_qdata)

    # Initialize a new `DBusAuthObserver`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_dbus_auth_observer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusAuthObserver.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_dbus_auth_observer_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_auth_observer_new

      # Return value handling
      Gio::DBusAuthObserver.new(_retval, GICrystal::Transfer::Full)
    end

    def allow_mechanism(mechanism : ::String) : Bool
      # g_dbus_auth_observer_allow_mechanism: (Method)
      # @mechanism:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_auth_observer_allow_mechanism(to_unsafe, mechanism)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def authorize_authenticated_peer(stream : Gio::IOStream, credentials : Gio::Credentials?) : Bool
      # g_dbus_auth_observer_authorize_authenticated_peer: (Method)
      # @stream:
      # @credentials: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      credentials = if credentials.nil?
                      Pointer(Void).null
                    else
                      credentials.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_auth_observer_authorize_authenticated_peer(to_unsafe, stream, credentials)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct AllowMechanismSignal < GObject::Signal
      def name : String
        @detail ? "allow-mechanism::#{@detail}" : "allow-mechanism"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mechanism : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          mechanism = ::String.new(lib_mechanism)
          ::Box(Proc(::String, Bool)).unbox(_lib_box).call(mechanism)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusAuthObserver, ::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mechanism : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusAuthObserver.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mechanism = ::String.new(lib_mechanism)
          ::Box(Proc(Gio::DBusAuthObserver, ::String, Bool)).unbox(_lib_box).call(_sender, mechanism)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(mechanism : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "allow-mechanism", mechanism)
      end
    end

    def allow_mechanism_signal
      AllowMechanismSignal.new(self)
    end

    struct AuthorizeAuthenticatedPeerSignal < GObject::Signal
      def name : String
        @detail ? "authorize-authenticated-peer::#{@detail}" : "authorize-authenticated-peer"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::IOStream, Gio::Credentials?, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::IOStream, Gio::Credentials?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_stream : Pointer(Void), lib_credentials : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          stream = Gio::IOStream.new(lib_stream, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          credentials = (lib_credentials.null? ? nil : Gio::Credentials.new(lib_credentials, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          credentials = Gio::Credentials.new(lib_credentials, GICrystal::Transfer::None) unless lib_credentials.null?
          ::Box(Proc(Gio::IOStream, Gio::Credentials?, Bool)).unbox(_lib_box).call(stream, credentials)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusAuthObserver, Gio::IOStream, Gio::Credentials?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_stream : Pointer(Void), lib_credentials : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusAuthObserver.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          stream = Gio::IOStream.new(lib_stream, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          credentials = (lib_credentials.null? ? nil : Gio::Credentials.new(lib_credentials, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          credentials = Gio::Credentials.new(lib_credentials, GICrystal::Transfer::None) unless lib_credentials.null?
          ::Box(Proc(Gio::DBusAuthObserver, Gio::IOStream, Gio::Credentials?, Bool)).unbox(_lib_box).call(_sender, stream, credentials)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(stream : Gio::IOStream, credentials : Gio::Credentials?) : Nil
        # Generator::NullableArrayPlan
        credentials = if credentials.nil?
                        Void.null
                      else
                        credentials.to_unsafe
                      end

        LibGObject.g_signal_emit_by_name(@source, "authorize-authenticated-peer", stream, credentials)
      end
    end

    def authorize_authenticated_peer_signal
      AuthorizeAuthenticatedPeerSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
