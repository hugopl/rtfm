module Gio
  module MemoryMonitor
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::MemoryMonitor
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__MemoryMonitor(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractMemoryMonitor.g_type
    end

    def self.dup_default : Gio::MemoryMonitor
      # g_memory_monitor_dup_default: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_memory_monitor_dup_default

      # Return value handling
      Gio::AbstractMemoryMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    # low_memory_warning: (None)
    # @level:
    # Returns: (transfer none)
    private macro _register_low_memory_warning_vfunc(impl_method_name)
      private def self._vfunc_low_memory_warning(%this : Pointer(Void), lib_level :  UInt32, ) : Void
        # @level: 

# Generator::BuiltInTypeArgPlan
level=Gio::MemoryMonitorWarningLevel.new(lib_level)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(level)
        
        %retval
      end

      def self._install_iface_Gio__MemoryMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_low_memory_warning(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # low_memory_warning: (None)
    # @level:
    # Returns: (transfer none)
    private macro _register_unsafe_low_memory_warning_vfunc(impl_method_name)
      private def self._vfunc_unsafe_low_memory_warning(%this : Pointer(Void), lib_level :  UInt32, ) : Void
# @level: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_level)
      end

      def self._install_iface_Gio__MemoryMonitor(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_low_memory_warning = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_low_memory_warning(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_low_memory_warning : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    struct LowMemoryWarningSignal < GObject::Signal
      def name : String
        @detail ? "low-memory-warning::#{@detail}" : "low-memory-warning"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::MemoryMonitorWarningLevel, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::MemoryMonitorWarningLevel, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_level : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          level = Gio::MemoryMonitorWarningLevel.new(lib_level)
          ::Box(Proc(Gio::MemoryMonitorWarningLevel, Nil)).unbox(_lib_box).call(level)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::MemoryMonitor, Gio::MemoryMonitorWarningLevel, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_level : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractMemoryMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          level = Gio::MemoryMonitorWarningLevel.new(lib_level)
          ::Box(Proc(Gio::MemoryMonitor, Gio::MemoryMonitorWarningLevel, Nil)).unbox(_lib_box).call(_sender, level)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(level : Gio::MemoryMonitorWarningLevel) : Nil
        LibGObject.g_signal_emit_by_name(@source, "low-memory-warning", level)
      end
    end

    def low_memory_warning_signal
      LowMemoryWarningSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractMemoryMonitor.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractMemoryMonitor < GObject::Object
    include MemoryMonitor

    GICrystal.declare_new_method(Gio::AbstractMemoryMonitor, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_memory_monitor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractMemoryMonitor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
