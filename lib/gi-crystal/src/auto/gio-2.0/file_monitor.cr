require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class FileMonitor < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::FileMonitorClass), class_init,
        sizeof(LibGio::FileMonitor), instance_init, 0)
    end

    GICrystal.declare_new_method(FileMonitor, g_object_get_qdata)

    # Initialize a new `FileMonitor`.
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

    def initialize(*, cancelled : Bool? = nil, rate_limit : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !cancelled.nil?
        (_names.to_unsafe + _n).value = "cancelled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cancelled)
        _n += 1
      end
      if !rate_limit.nil?
        (_names.to_unsafe + _n).value = "rate-limit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, rate_limit)
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
      @@g_type ||= LibGio.g_file_monitor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::FileMonitor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def cancelled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "cancelled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def rate_limit=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "rate-limit", unsafe_value, Pointer(Void).null)
      value
    end

    def rate_limit : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "rate-limit", pointerof(value), Pointer(Void).null)
      value
    end

    def cancel : Bool
      # g_file_monitor_cancel: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_monitor_cancel(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def emit_event(child : Gio::File, other_file : Gio::File?, event_type : Gio::FileMonitorEvent) : Nil
      # g_file_monitor_emit_event: (Method)
      # @child:
      # @other_file: (nullable)
      # @event_type:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      other_file = if other_file.nil?
                     Pointer(Void).null
                   else
                     other_file.to_unsafe
                   end

      # C call
      LibGio.g_file_monitor_emit_event(to_unsafe, child, other_file, event_type)

      # Return value handling
    end

    def is_cancelled? : Bool
      # g_file_monitor_is_cancelled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_monitor_is_cancelled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def rate_limit=(limit_msecs : Int32) : Nil
      # g_file_monitor_set_rate_limit: (Method | Setter)
      # @limit_msecs:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_monitor_set_rate_limit(to_unsafe, limit_msecs)

      # Return value handling
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::File, Gio::File?, Gio::FileMonitorEvent, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::File, Gio::File?, Gio::FileMonitorEvent, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_file : Pointer(Void), lib_other_file : Pointer(Void), lib_event_type : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          file = Gio::AbstractFile.new(lib_file, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          other_file = (lib_other_file.null? ? nil : Gio::AbstractFile.new(lib_other_file, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          other_file = Gio::AbstractFile.new(lib_other_file, GICrystal::Transfer::None) unless lib_other_file.null?
          # Generator::BuiltInTypeArgPlan
          event_type = Gio::FileMonitorEvent.new(lib_event_type)
          ::Box(Proc(Gio::File, Gio::File?, Gio::FileMonitorEvent, Nil)).unbox(_lib_box).call(file, other_file, event_type)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::FileMonitor, Gio::File, Gio::File?, Gio::FileMonitorEvent, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_file : Pointer(Void), lib_other_file : Pointer(Void), lib_event_type : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gio::FileMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          file = Gio::AbstractFile.new(lib_file, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          other_file = (lib_other_file.null? ? nil : Gio::AbstractFile.new(lib_other_file, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          other_file = Gio::AbstractFile.new(lib_other_file, GICrystal::Transfer::None) unless lib_other_file.null?
          # Generator::BuiltInTypeArgPlan
          event_type = Gio::FileMonitorEvent.new(lib_event_type)
          ::Box(Proc(Gio::FileMonitor, Gio::File, Gio::File?, Gio::FileMonitorEvent, Nil)).unbox(_lib_box).call(_sender, file, other_file, event_type)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(file : Gio::File, other_file : Gio::File?, event_type : Gio::FileMonitorEvent) : Nil
        # Generator::NullableArrayPlan
        other_file = if other_file.nil?
                       Void.null
                     else
                       other_file.to_unsafe
                     end

        LibGObject.g_signal_emit_by_name(@source, "changed", file, other_file, event_type)
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    # cancel: (None)
    # Returns: (transfer none)
    private macro _register_cancel_vfunc(impl_method_name)
      private def self._vfunc_cancel(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_cancel(Pointer(Void))).pointer
        previous_def
      end
    end

    # cancel: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_cancel_vfunc(impl_method_name)
      private def self._vfunc_unsafe_cancel(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_cancel = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_cancel(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_cancel : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # changed: (None)
    # @file:
    # @other_file:
    # @event_type:
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), lib_file :  Pointer(Void), lib_other_file :  Pointer(Void), lib_event_type :  UInt32, ) : Void
        # @file: 
# @other_file: 
# @event_type: 

# Generator::BuiltInTypeArgPlan
file=Gio::AbstractFile.new(lib_file, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
other_file=Gio::AbstractFile.new(lib_other_file, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
event_type=Gio::FileMonitorEvent.new(lib_event_type)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(file, other_file, event_type)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # changed: (None)
    # @file:
    # @other_file:
    # @event_type:
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), lib_file :  Pointer(Void), lib_other_file :  Pointer(Void), lib_event_type :  UInt32, ) : Void
# @file: 
# @other_file: 
# @event_type: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_file, lib_other_file, lib_event_type)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
