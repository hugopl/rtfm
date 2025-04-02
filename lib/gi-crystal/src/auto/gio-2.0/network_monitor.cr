module Gio
  module NetworkMonitor
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::NetworkMonitor
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__NetworkMonitor(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractNetworkMonitor.g_type
    end

    def connectivity : Gio::NetworkConnectivity
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "connectivity", pointerof(value), Pointer(Void).null)
      Gio::NetworkConnectivity.new(value)
    end

    def network_available? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "network-available", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def network_metered? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "network-metered", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.default : Gio::NetworkMonitor
      # g_network_monitor_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_monitor_get_default

      # Return value handling
      Gio::AbstractNetworkMonitor.new(_retval, GICrystal::Transfer::None)
    end

    def can_reach(connectable : Gio::SocketConnectable, cancellable : Gio::Cancellable?) : Bool
      # g_network_monitor_can_reach: (Method | Throws)
      # @connectable:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_network_monitor_can_reach(to_unsafe, connectable, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_reach_async(connectable : Gio::SocketConnectable, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_network_monitor_can_reach_async: (Method)
      # @connectable:
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
      LibGio.g_network_monitor_can_reach_async(to_unsafe, connectable, cancellable, callback, user_data)

      # Return value handling
    end

    def can_reach_finish(result : Gio::AsyncResult) : Bool
      # g_network_monitor_can_reach_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_network_monitor_can_reach_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def connectivity : Gio::NetworkConnectivity
      # g_network_monitor_get_connectivity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_monitor_get_connectivity(to_unsafe)

      # Return value handling
      Gio::NetworkConnectivity.new(_retval)
    end

    def network_available : Bool
      # g_network_monitor_get_network_available: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_monitor_get_network_available(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def network_metered : Bool
      # g_network_monitor_get_network_metered: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_monitor_get_network_metered(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # can_reach: (Throws)
    # @connectable:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_can_reach_vfunc(impl_method_name)
      private def self._vfunc_can_reach(%this : Pointer(Void), lib_connectable :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @connectable: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
connectable=Gio::AbstractSocketConnectable.new(lib_connectable, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connectable, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_reach(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # can_reach: (Throws)
    # @connectable:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_can_reach_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_reach(%this : Pointer(Void), lib_connectable :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @connectable: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connectable, lib_cancellable)
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_reach = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_reach(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_reach : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # can_reach_async: (None)
    # @connectable:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_can_reach_async_vfunc(impl_method_name)
      private def self._vfunc_can_reach_async(%this : Pointer(Void), lib_connectable :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @connectable: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
connectable=Gio::AbstractSocketConnectable.new(lib_connectable, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connectable, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_reach_async(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # can_reach_async: (None)
    # @connectable:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_can_reach_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_reach_async(%this : Pointer(Void), lib_connectable :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @connectable: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connectable, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_reach_async = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_reach_async(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_reach_async : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # can_reach_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_can_reach_finish_vfunc(impl_method_name)
      private def self._vfunc_can_reach_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_reach_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # can_reach_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_can_reach_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_reach_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_reach_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_reach_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_reach_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # network_changed: (None)
    # @network_available:
    # Returns: (transfer none)
    private macro _register_network_changed_vfunc(impl_method_name)
      private def self._vfunc_network_changed(%this : Pointer(Void), lib_network_available :  LibC::Int, ) : Void
        # @network_available: 

# Generator::BuiltInTypeArgPlan
network_available=GICrystal.to_bool(lib_network_available)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(network_available)
        
        %retval
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_network_changed(Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # network_changed: (None)
    # @network_available:
    # Returns: (transfer none)
    private macro _register_unsafe_network_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_network_changed(%this : Pointer(Void), lib_network_available :  LibC::Int, ) : Void
# @network_available: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_network_available)
      end

      def self._install_iface_Gio__NetworkMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_network_changed = Proc(Pointer(Void), LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_network_changed(Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_network_changed : Proc(Pointer(Void), LibC::Int, Void)? = nil
    end

    struct NetworkChangedSignal < GObject::Signal
      def name : String
        @detail ? "network-changed::#{@detail}" : "network-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_network_available : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          network_available = GICrystal.to_bool(lib_network_available)
          ::Box(Proc(Bool, Nil)).unbox(_lib_box).call(network_available)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::NetworkMonitor, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_network_available : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractNetworkMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          network_available = GICrystal.to_bool(lib_network_available)
          ::Box(Proc(Gio::NetworkMonitor, Bool, Nil)).unbox(_lib_box).call(_sender, network_available)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(network_available : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "network-changed", network_available)
      end
    end

    def network_changed_signal
      NetworkChangedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractNetworkMonitor.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractNetworkMonitor < GObject::Object
    include NetworkMonitor

    GICrystal.declare_new_method(Gio::AbstractNetworkMonitor, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_network_monitor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractNetworkMonitor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
