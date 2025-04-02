require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Resolver < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ResolverClass), class_init,
        sizeof(LibGio::Resolver), instance_init, 0)
    end

    GICrystal.declare_new_method(Resolver, g_object_get_qdata)

    # Initialize a new `Resolver`.
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

    def initialize(*, timeout : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !timeout.nil?
        (_names.to_unsafe + _n).value = "timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, timeout)
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
      @@g_type ||= LibGio.g_resolver_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Resolver.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def self.default : Gio::Resolver
      # g_resolver_get_default: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_resolver_get_default

      # Return value handling
      Gio::Resolver.new(_retval, GICrystal::Transfer::Full)
    end

    def timeout : UInt32
      # g_resolver_get_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_resolver_get_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def lookup_by_address(address : Gio::InetAddress, cancellable : Gio::Cancellable?) : ::String
      # g_resolver_lookup_by_address: (Method | Throws)
      # @address:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_resolver_lookup_by_address(to_unsafe, address, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def lookup_by_address_async(address : Gio::InetAddress, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_resolver_lookup_by_address_async: (Method)
      # @address:
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
      LibGio.g_resolver_lookup_by_address_async(to_unsafe, address, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_by_address_finish(result : Gio::AsyncResult) : ::String
      # g_resolver_lookup_by_address_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resolver_lookup_by_address_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def lookup_by_name(hostname : ::String, cancellable : Gio::Cancellable?) : GLib::List
      # g_resolver_lookup_by_name: (Method | Throws)
      # @hostname:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_resolver_lookup_by_name(to_unsafe, hostname, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::InetAddress).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_by_name_async(hostname : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_resolver_lookup_by_name_async: (Method)
      # @hostname:
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
      LibGio.g_resolver_lookup_by_name_async(to_unsafe, hostname, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_by_name_finish(result : Gio::AsyncResult) : GLib::List
      # g_resolver_lookup_by_name_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resolver_lookup_by_name_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::InetAddress).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_by_name_with_flags(hostname : ::String, flags : Gio::ResolverNameLookupFlags, cancellable : Gio::Cancellable?) : GLib::List
      # g_resolver_lookup_by_name_with_flags: (Method | Throws)
      # @hostname:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_resolver_lookup_by_name_with_flags(to_unsafe, hostname, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::InetAddress).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_by_name_with_flags_async(hostname : ::String, flags : Gio::ResolverNameLookupFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_resolver_lookup_by_name_with_flags_async: (Method)
      # @hostname:
      # @flags:
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
      LibGio.g_resolver_lookup_by_name_with_flags_async(to_unsafe, hostname, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_by_name_with_flags_finish(result : Gio::AsyncResult) : GLib::List
      # g_resolver_lookup_by_name_with_flags_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resolver_lookup_by_name_with_flags_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::InetAddress).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_records(rrname : ::String, record_type : Gio::ResolverRecordType, cancellable : Gio::Cancellable?) : GLib::List
      # g_resolver_lookup_records: (Method | Throws)
      # @rrname:
      # @record_type:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_resolver_lookup_records(to_unsafe, rrname, record_type, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(GLib::Variant).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_records_async(rrname : ::String, record_type : Gio::ResolverRecordType, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_resolver_lookup_records_async: (Method)
      # @rrname:
      # @record_type:
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
      LibGio.g_resolver_lookup_records_async(to_unsafe, rrname, record_type, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_records_finish(result : Gio::AsyncResult) : GLib::List
      # g_resolver_lookup_records_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resolver_lookup_records_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(GLib::Variant).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_service(service : ::String, protocol : ::String, domain : ::String, cancellable : Gio::Cancellable?) : GLib::List
      # g_resolver_lookup_service: (Method | Throws)
      # @service:
      # @protocol:
      # @domain:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_resolver_lookup_service(to_unsafe, service, protocol, domain, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::SrvTarget).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_service_async(service : ::String, protocol : ::String, domain : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_resolver_lookup_service_async: (Method)
      # @service:
      # @protocol:
      # @domain:
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
      LibGio.g_resolver_lookup_service_async(to_unsafe, service, protocol, domain, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_service_finish(result : Gio::AsyncResult) : GLib::List
      # g_resolver_lookup_service_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resolver_lookup_service_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::SrvTarget).new(_retval, GICrystal::Transfer::Full)
    end

    def set_default : Nil
      # g_resolver_set_default: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_resolver_set_default(to_unsafe)

      # Return value handling
    end

    def timeout=(timeout_ms : UInt32) : Nil
      # g_resolver_set_timeout: (Method | Setter)
      # @timeout_ms:
      # Returns: (transfer none)

      # C call
      LibGio.g_resolver_set_timeout(to_unsafe, timeout_ms)

      # Return value handling
    end

    struct ReloadSignal < GObject::Signal
      def name : String
        @detail ? "reload::#{@detail}" : "reload"
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

      def connect(handler : Proc(Gio::Resolver, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Resolver.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Resolver, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "reload")
      end
    end

    def reload_signal
      ReloadSignal.new(self)
    end

    # lookup_by_address: (Throws)
    # @address:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_lookup_by_address_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_address(%this : Pointer(Void), lib_address :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(LibC::Char)
        # @address: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
address=Gio::InetAddress.new(lib_address, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(address, cancellable)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_address(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_address: (Throws)
    # @address:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_by_address_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_address(%this : Pointer(Void), lib_address :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(LibC::Char)
# @address: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_address, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_address = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_address(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_address : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # lookup_by_address_async: (None)
    # @address:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_by_address_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_address_async(%this : Pointer(Void), lib_address :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @address: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
address=Gio::InetAddress.new(lib_address, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(address, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_address_async(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_address_async: (None)
    # @address:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_by_address_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_address_async(%this : Pointer(Void), lib_address :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @address: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_address, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_address_async = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_address_async(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_address_async : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_by_address_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_by_address_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_address_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibC::Char)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_address_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_address_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_by_address_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_address_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibC::Char)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_address_finish = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_address_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_address_finish : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # lookup_by_name: (Throws)
    # @hostname:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_lookup_by_name_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_name(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @hostname: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
hostname=::String.new(lib_hostname)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(hostname, cancellable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_name(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_name: (Throws)
    # @hostname:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_by_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_name(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
# @hostname: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_hostname, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_name = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_name(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_name : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # lookup_by_name_async: (None)
    # @hostname:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_by_name_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_name_async(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @hostname: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
hostname=::String.new(lib_hostname)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(hostname, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_name_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_name_async: (None)
    # @hostname:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_by_name_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_name_async(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @hostname: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_hostname, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_name_async = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_name_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_name_async : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_by_name_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_by_name_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_name_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_name_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_name_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_by_name_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_name_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_name_finish = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_name_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_name_finish : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # lookup_by_name_with_flags: (Throws)
    # @hostname:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_lookup_by_name_with_flags_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_name_with_flags(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @hostname: 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
hostname=::String.new(lib_hostname)
# Generator::BuiltInTypeArgPlan
flags=Gio::ResolverNameLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(hostname, flags, cancellable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_name_with_flags(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_name_with_flags: (Throws)
    # @hostname:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_by_name_with_flags_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_name_with_flags(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
# @hostname: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_hostname, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_name_with_flags = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_name_with_flags(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_name_with_flags : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # lookup_by_name_with_flags_async: (None)
    # @hostname:
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_by_name_with_flags_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_name_with_flags_async(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @hostname: 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
hostname=::String.new(lib_hostname)
# Generator::BuiltInTypeArgPlan
flags=Gio::ResolverNameLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(hostname, flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_name_with_flags_async(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_name_with_flags_async: (None)
    # @hostname:
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_by_name_with_flags_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_name_with_flags_async(%this : Pointer(Void), lib_hostname :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @hostname: 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_hostname, lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_name_with_flags_async = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_name_with_flags_async(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_name_with_flags_async : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_by_name_with_flags_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_by_name_with_flags_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_by_name_with_flags_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_by_name_with_flags_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_by_name_with_flags_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_by_name_with_flags_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_by_name_with_flags_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_by_name_with_flags_finish = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_by_name_with_flags_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_by_name_with_flags_finish : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # lookup_records: (Throws)
    # @rrname:
    # @record_type:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_lookup_records_vfunc(impl_method_name)
      private def self._vfunc_lookup_records(%this : Pointer(Void), lib_rrname :  Pointer(LibC::Char), lib_record_type :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @rrname: 
# @record_type: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
rrname=::String.new(lib_rrname)
# Generator::BuiltInTypeArgPlan
record_type=Gio::ResolverRecordType.new(lib_record_type)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(rrname, record_type, cancellable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_records(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_records: (Throws)
    # @rrname:
    # @record_type:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_records_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_records(%this : Pointer(Void), lib_rrname :  Pointer(LibC::Char), lib_record_type :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
# @rrname: 
# @record_type: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_rrname, lib_record_type, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_records = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_records(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_records : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # lookup_records_async: (None)
    # @rrname:
    # @record_type:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_records_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_records_async(%this : Pointer(Void), lib_rrname :  Pointer(LibC::Char), lib_record_type :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @rrname: 
# @record_type: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
rrname=::String.new(lib_rrname)
# Generator::BuiltInTypeArgPlan
record_type=Gio::ResolverRecordType.new(lib_record_type)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(rrname, record_type, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_records_async(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_records_async: (None)
    # @rrname:
    # @record_type:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_records_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_records_async(%this : Pointer(Void), lib_rrname :  Pointer(LibC::Char), lib_record_type :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @rrname: 
# @record_type: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_rrname, lib_record_type, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_records_async = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_records_async(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_records_async : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_records_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_records_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_records_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_records_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_records_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_records_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_records_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_records_finish = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_records_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_records_finish : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # lookup_service_async: (None)
    # @rrname:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_service_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_service_async(%this : Pointer(Void), lib_rrname :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @rrname: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
rrname=::String.new(lib_rrname)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(rrname, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_service_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_service_async: (None)
    # @rrname:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_service_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_service_async(%this : Pointer(Void), lib_rrname :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @rrname: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_rrname, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_service_async = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_service_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_service_async : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_service_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_service_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_service_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_service_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_service_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_service_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_service_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_service_finish = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_service_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_service_finish : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # reload: (None)
    # Returns: (transfer none)
    private macro _register_reload_vfunc(impl_method_name)
      private def self._vfunc_reload(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_reload(Pointer(Void))).pointer
        previous_def
      end
    end

    # reload: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_reload_vfunc(impl_method_name)
      private def self._vfunc_unsafe_reload(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reload = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reload(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reload : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
