module GObject
  @[GICrystal::GeneratedWrapper]
  class Object
    @pointer : Pointer(Void)

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGObject::ObjectClass), class_init,
        sizeof(LibGObject::Object), instance_init, 0)
    end

    GICrystal.declare_new_method(Object, g_object_get_qdata)

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    # Called by the garbage collector. Decreases the reference count of object.
    # (i.e. its memory is freed).
    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name.to_unsafe, self)
      {% end %}
      GICrystal.finalize_instance(self)
    end

    # Returns a pointer to the C object.
    def to_unsafe
      @pointer
    end

    private def _after_init : Nil
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGObject.g_object_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GObject::Object.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.newv(object_type : UInt64, parameters : Enumerable(GObject::Parameter)) : self
      # g_object_newv: (Constructor)
      # @object_type:
      # @n_parameters:
      # @parameters: (array length=n_parameters element-type Interface)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_parameters = parameters.size
      # Generator::ArrayArgPlan
      parameters = parameters.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::Parameter))

      # C call
      _retval = LibGObject.g_object_newv(object_type, n_parameters, parameters)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::Full)
    end

    def self.compat_control(what : UInt64, data : Pointer(Void)?) : UInt64
      # g_object_compat_control: (None)
      # @what:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      _retval = LibGObject.g_object_compat_control(what, data)

      # Return value handling
      _retval
    end

    def self.interface_find_property(g_iface : GObject::TypeInterface, property_name : ::String) : GObject::ParamSpec
      # g_object_interface_find_property: (None)
      # @g_iface:
      # @property_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_object_interface_find_property(g_iface, property_name)

      # Return value handling
      GObject::ParamSpec.new(_retval, GICrystal::Transfer::None)
    end

    def self.interface_list_properties(g_iface : GObject::TypeInterface) : Enumerable(GObject::ParamSpec)
      # g_object_interface_list_properties: (None)
      # @g_iface:
      # @n_properties_p: (out) (transfer full)
      # Returns: (transfer container) (array length=n_properties_p element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      n_properties_p = 0_u32
      # C call
      _retval = LibGObject.g_object_interface_list_properties(g_iface, pointerof(n_properties_p))

      # Return value handling
      GICrystal.transfer_array(_retval, n_properties_p, GICrystal::Transfer::Container)
    end

    def bind_property(source_property : ::String, target : GObject::Object, target_property : ::String, flags : GObject::BindingFlags) : GObject::Binding
      # g_object_bind_property: (Method)
      # @source_property:
      # @target:
      # @target_property:
      # @flags:
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_object_bind_property(to_unsafe, source_property, target, target_property, flags)

      # Return value handling
      GObject::Binding.new(_retval, GICrystal::Transfer::None)
    end

    def bind_property_full(source_property : ::String, target : GObject::Object, target_property : ::String, flags : GObject::BindingFlags, transform_to : GObject::Closure, transform_from : GObject::Closure) : GObject::Binding
      # g_object_bind_property_with_closures: (Method)
      # @source_property:
      # @target:
      # @target_property:
      # @flags:
      # @transform_to:
      # @transform_from:
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_object_bind_property_with_closures(to_unsafe, source_property, target, target_property, flags, transform_to, transform_from)

      # Return value handling
      GObject::Binding.new(_retval, GICrystal::Transfer::None)
    end

    def freeze_notify : Nil
      # g_object_freeze_notify: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_object_freeze_notify(to_unsafe)

      # Return value handling
    end

    def data(key : ::String) : Pointer(Void)?
      # g_object_get_data: (Method)
      # @key:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_object_get_data(to_unsafe, key)

      # Return value handling
      _retval unless _retval.null?
    end

    def property(property_name : ::String, value : _) : Nil
      # g_object_get_property: (Method)
      # @property_name:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGObject.g_object_get_property(to_unsafe, property_name, value)

      # Return value handling
    end

    def qdata(quark : UInt32) : Pointer(Void)?
      # g_object_get_qdata: (Method)
      # @quark:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_object_get_qdata(to_unsafe, quark)

      # Return value handling
      _retval unless _retval.null?
    end

    def getv(names : Enumerable(::String), values : Enumerable(_)) : Nil
      # g_object_getv: (Method)
      # @n_properties:
      # @names: (array length=n_properties element-type Utf8)
      # @values: (array length=n_properties element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_properties = names.size
      # Generator::ArrayArgPlan
      names = names.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
      # Generator::ArrayLengthArgPlan
      n_properties = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe.as(Pointer(LibGObject::Value)).value }.to_unsafe.as(Pointer(LibGObject::Value))

      # C call
      LibGObject.g_object_getv(to_unsafe, n_properties, names, values)

      # Return value handling
    end

    def notify(property_name : ::String) : Nil
      # g_object_notify: (Method)
      # @property_name:
      # Returns: (transfer none)

      # C call
      LibGObject.g_object_notify(to_unsafe, property_name)

      # Return value handling
    end

    def notify_by_pspec(pspec : GObject::ParamSpec) : Nil
      # g_object_notify_by_pspec: (Method)
      # @pspec:
      # Returns: (transfer none)

      # C call
      LibGObject.g_object_notify_by_pspec(to_unsafe, pspec)

      # Return value handling
    end

    def run_dispose : Nil
      # g_object_run_dispose: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_object_run_dispose(to_unsafe)

      # Return value handling
    end

    def set_data(key : ::String, data : Pointer(Void)?) : Nil
      # g_object_set_data: (Method)
      # @key:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGObject.g_object_set_data(to_unsafe, key, data)

      # Return value handling
    end

    def set_property(property_name : ::String, value : _) : Nil
      # g_object_set_property: (Method)
      # @property_name:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGObject.g_object_set_property(to_unsafe, property_name, value)

      # Return value handling
    end

    def steal_data(key : ::String) : Pointer(Void)?
      # g_object_steal_data: (Method)
      # @key:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGObject.g_object_steal_data(to_unsafe, key)

      # Return value handling
      _retval unless _retval.null?
    end

    def steal_qdata(quark : UInt32) : Pointer(Void)?
      # g_object_steal_qdata: (Method)
      # @quark:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGObject.g_object_steal_qdata(to_unsafe, quark)

      # Return value handling
      _retval unless _retval.null?
    end

    def thaw_notify : Nil
      # g_object_thaw_notify: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_object_thaw_notify(to_unsafe)

      # Return value handling
    end

    def watch_closure(closure : GObject::Closure) : Nil
      # g_object_watch_closure: (Method)
      # @closure:
      # Returns: (transfer none)

      # C call
      LibGObject.g_object_watch_closure(to_unsafe, closure)

      # Return value handling
    end

    struct NotifySignal < GObject::Signal
      def name : String
        @detail ? "notify::#{@detail}" : "notify"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::ParamSpec, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::ParamSpec, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_pspec : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          pspec = GObject::ParamSpec.new(lib_pspec, GICrystal::Transfer::None)
          ::Box(Proc(GObject::ParamSpec, Nil)).unbox(_lib_box).call(pspec)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(GObject::Object, GObject::ParamSpec, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_pspec : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = GObject::Object.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          pspec = GObject::ParamSpec.new(lib_pspec, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, GObject::ParamSpec, Nil)).unbox(_lib_box).call(_sender, pspec)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(pspec : GObject::ParamSpec) : Nil
        LibGObject.g_signal_emit_by_name(@source, "notify", pspec)
      end
    end

    def notify_signal
      NotifySignal.new(self)
    end

    # constructed: (None)
    # Returns: (transfer none)
    private macro _register_constructed_vfunc(impl_method_name)
      private def self._vfunc_constructed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_constructed(Pointer(Void))).pointer
        previous_def
      end
    end

    # constructed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_constructed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_constructed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_constructed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_constructed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_constructed : Proc(Pointer(Void), Void)? = nil
    end

    # dispatch_properties_changed: (None)
    # @n_pspecs:
    # @pspecs:
    # Returns: (transfer none)
    private macro _register_dispatch_properties_changed_vfunc(impl_method_name)
      private def self._vfunc_dispatch_properties_changed(%this : Pointer(Void), lib_n_pspecs :  UInt32, lib_pspecs :  Pointer(Void), ) : Void
        # @n_pspecs: 
# @pspecs: 

n_pspecs=lib_n_pspecs
# Generator::BuiltInTypeArgPlan
pspecs=GObject::ParamSpec.new(lib_pspecs, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(n_pspecs, pspecs)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_dispatch_properties_changed(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # dispatch_properties_changed: (None)
    # @n_pspecs:
    # @pspecs:
    # Returns: (transfer none)
    private macro _register_unsafe_dispatch_properties_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_dispatch_properties_changed(%this : Pointer(Void), lib_n_pspecs :  UInt32, lib_pspecs :  Pointer(Void), ) : Void
# @n_pspecs: 
# @pspecs: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_n_pspecs, lib_pspecs)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_dispatch_properties_changed = Proc(Pointer(Void), UInt32, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_dispatch_properties_changed(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_dispatch_properties_changed : Proc(Pointer(Void), UInt32, Pointer(Void), Void)? = nil
    end

    # dispose: (None)
    # Returns: (transfer none)
    private macro _register_dispose_vfunc(impl_method_name)
      private def self._vfunc_dispose(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_dispose(Pointer(Void))).pointer
        previous_def
      end
    end

    # dispose: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_dispose_vfunc(impl_method_name)
      private def self._vfunc_unsafe_dispose(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_dispose = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_dispose(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_dispose : Proc(Pointer(Void), Void)? = nil
    end

    # finalize: (None)
    # Returns: (transfer none)
    private macro _register_finalize_vfunc(impl_method_name)
      private def self._vfunc_finalize(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_finalize(Pointer(Void))).pointer
        previous_def
      end
    end

    # finalize: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_finalize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_finalize(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_finalize = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_finalize(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_finalize : Proc(Pointer(Void), Void)? = nil
    end

    # get_property: (None)
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_get_property_vfunc(impl_method_name)
      private def self._vfunc_get_property(%this : Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
        # @property_id: 
# @value: 
# @pspec: 

property_id=lib_property_id
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)
# Generator::BuiltInTypeArgPlan
pspec=GObject::ParamSpec.new(lib_pspec, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(property_id, value, pspec)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_property(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_property: (None)
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_unsafe_get_property_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_property(%this : Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
# @property_id: 
# @value: 
# @pspec: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_property_id, lib_value, lib_pspec)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_property = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_property(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_property : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void)? = nil
    end

    # notify: (None)
    # @pspec:
    # Returns: (transfer none)
    private macro _register_notify_vfunc(impl_method_name)
      private def self._vfunc_notify(%this : Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
        # @pspec: 

# Generator::BuiltInTypeArgPlan
pspec=GObject::ParamSpec.new(lib_pspec, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(pspec)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_notify(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # notify: (None)
    # @pspec:
    # Returns: (transfer none)
    private macro _register_unsafe_notify_vfunc(impl_method_name)
      private def self._vfunc_unsafe_notify(%this : Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
# @pspec: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_pspec)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_notify = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_notify(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_notify : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # set_property: (None)
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_set_property_vfunc(impl_method_name)
      private def self._vfunc_set_property(%this : Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
        # @property_id: 
# @value: 
# @pspec: 

property_id=lib_property_id
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)
# Generator::BuiltInTypeArgPlan
pspec=GObject::ParamSpec.new(lib_pspec, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(property_id, value, pspec)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_property(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_property: (None)
    # @property_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)
    private macro _register_unsafe_set_property_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_property(%this : Pointer(Void), lib_property_id :  UInt32, lib_value :  Pointer(Void), lib_pspec :  Pointer(Void), ) : Void
# @property_id: 
# @value: 
# @pspec: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_property_id, lib_value, lib_pspec)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_property = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_property(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_property : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
