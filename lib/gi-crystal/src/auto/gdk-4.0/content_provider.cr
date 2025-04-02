require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class ContentProvider < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::ContentProviderClass), class_init,
        sizeof(LibGdk::ContentProvider), instance_init, 0)
    end

    GICrystal.declare_new_method(ContentProvider, g_object_get_qdata)

    # Initialize a new `ContentProvider`.
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

    def initialize(*, formats : Gdk::ContentFormats? = nil, storable_formats : Gdk::ContentFormats? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !formats.nil?
        (_names.to_unsafe + _n).value = "formats".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, formats)
        _n += 1
      end
      if !storable_formats.nil?
        (_names.to_unsafe + _n).value = "storable-formats".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, storable_formats)
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
      @@g_type ||= LibGdk.gdk_content_provider_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::ContentProvider.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def formats : Gdk::ContentFormats?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "formats", pointerof(value), Pointer(Void).null)
      Gdk::ContentFormats.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def storable_formats : Gdk::ContentFormats?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "storable-formats", pointerof(value), Pointer(Void).null)
      Gdk::ContentFormats.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new_for_bytes(mime_type : ::String, bytes : GLib::Bytes) : self
      # gdk_content_provider_new_for_bytes: (Constructor)
      # @mime_type:
      # @bytes:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_provider_new_for_bytes(mime_type, bytes)

      # Return value handling
      Gdk::ContentProvider.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_value(value : _) : self
      # gdk_content_provider_new_for_value: (Constructor)
      # @value:
      # Returns: (transfer full)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGdk.gdk_content_provider_new_for_value(value)

      # Return value handling
      Gdk::ContentProvider.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_union(providers : Enumerable(Gdk::ContentProvider)?) : self
      # gdk_content_provider_new_union: (Constructor)
      # @providers: (transfer full) (nullable) (array length=n_providers element-type Interface)
      # @n_providers:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_providers = providers.try(&.size) || 0
      # Generator::NullableArrayPlan
      providers = if providers.nil?
                    Pointer(Pointer(LibGdk::ContentProvider)).null
                  else
                    providers.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGdk::ContentProvider)))
                  end

      # C call
      _retval = LibGdk.gdk_content_provider_new_union(providers, n_providers)

      # Return value handling
      Gdk::ContentProvider.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_union(*providers : Gdk::ContentProvider)
      self.new_union(providers)
    end

    def content_changed : Nil
      # gdk_content_provider_content_changed: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_provider_content_changed(to_unsafe)

      # Return value handling
    end

    def value : GObject::Value
      # gdk_content_provider_get_value: (Method | Throws)
      # @value: (out) (caller-allocates)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::CallerAllocatesPlan
      value = GObject::Value.new
      # C call
      _retval = LibGdk.gdk_content_provider_get_value(to_unsafe, value, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      value
    end

    def ref_formats : Gdk::ContentFormats
      # gdk_content_provider_ref_formats: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_provider_ref_formats(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def ref_storable_formats : Gdk::ContentFormats
      # gdk_content_provider_ref_storable_formats: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_provider_ref_storable_formats(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def write_mime_type_async(mime_type : ::String, stream : Gio::OutputStream, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_content_provider_write_mime_type_async: (Method)
      # @mime_type:
      # @stream:
      # @io_priority:
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
      LibGdk.gdk_content_provider_write_mime_type_async(to_unsafe, mime_type, stream, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def write_mime_type_finish(result : Gio::AsyncResult) : Bool
      # gdk_content_provider_write_mime_type_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_content_provider_write_mime_type_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ContentChangedSignal < GObject::Signal
      def name : String
        @detail ? "content-changed::#{@detail}" : "content-changed"
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

      def connect(handler : Proc(Gdk::ContentProvider, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::ContentProvider.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::ContentProvider, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "content-changed")
      end
    end

    def content_changed_signal
      ContentChangedSignal.new(self)
    end

    # attach_clipboard: (None)
    # @clipboard:
    # Returns: (transfer none)
    private macro _register_attach_clipboard_vfunc(impl_method_name)
      private def self._vfunc_attach_clipboard(%this : Pointer(Void), lib_clipboard :  Pointer(Void), ) : Void
        # @clipboard: 

# Generator::BuiltInTypeArgPlan
clipboard=Gdk::Clipboard.new(lib_clipboard, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(clipboard)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_attach_clipboard(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # attach_clipboard: (None)
    # @clipboard:
    # Returns: (transfer none)
    private macro _register_unsafe_attach_clipboard_vfunc(impl_method_name)
      private def self._vfunc_unsafe_attach_clipboard(%this : Pointer(Void), lib_clipboard :  Pointer(Void), ) : Void
# @clipboard: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_clipboard)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_attach_clipboard = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_attach_clipboard(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_attach_clipboard : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # content_changed: (None)
    # Returns: (transfer none)
    private macro _register_content_changed_vfunc(impl_method_name)
      private def self._vfunc_content_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_content_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # content_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_content_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_content_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_content_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_content_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_content_changed : Proc(Pointer(Void), Void)? = nil
    end

    # detach_clipboard: (None)
    # @clipboard:
    # Returns: (transfer none)
    private macro _register_detach_clipboard_vfunc(impl_method_name)
      private def self._vfunc_detach_clipboard(%this : Pointer(Void), lib_clipboard :  Pointer(Void), ) : Void
        # @clipboard: 

# Generator::BuiltInTypeArgPlan
clipboard=Gdk::Clipboard.new(lib_clipboard, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(clipboard)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_detach_clipboard(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # detach_clipboard: (None)
    # @clipboard:
    # Returns: (transfer none)
    private macro _register_unsafe_detach_clipboard_vfunc(impl_method_name)
      private def self._vfunc_unsafe_detach_clipboard(%this : Pointer(Void), lib_clipboard :  Pointer(Void), ) : Void
# @clipboard: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_clipboard)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_detach_clipboard = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_detach_clipboard(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_detach_clipboard : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # get_value: (Throws)
    # @value: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_get_value_vfunc(impl_method_name)
      private def self._vfunc_get_value(%this : Pointer(Void), lib_value :  Void, ) : LibC::Int
        # @value: (out) (caller-allocates) 

# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_value(Pointer(Void), Void)).pointer
        previous_def
      end
    end

    # get_value: (Throws)
    # @value: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_unsafe_get_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_value(%this : Pointer(Void), lib_value :  Void, ) : LibC::Int
# @value: (out) (caller-allocates) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_value = Proc(Pointer(Void), Void, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_value(Pointer(Void), Void)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_value : Proc(Pointer(Void), Void, LibC::Int)? = nil
    end

    # ref_formats: (None)
    # Returns: (transfer full)
    private macro _register_ref_formats_vfunc(impl_method_name)
      private def self._vfunc_ref_formats(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ref_formats(Pointer(Void))).pointer
        previous_def
      end
    end

    # ref_formats: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_ref_formats_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ref_formats(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ref_formats = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ref_formats(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ref_formats : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # ref_storable_formats: (None)
    # Returns: (transfer full)
    private macro _register_ref_storable_formats_vfunc(impl_method_name)
      private def self._vfunc_ref_storable_formats(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ref_storable_formats(Pointer(Void))).pointer
        previous_def
      end
    end

    # ref_storable_formats: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_ref_storable_formats_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ref_storable_formats(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ref_storable_formats = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ref_storable_formats(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ref_storable_formats : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # write_mime_type_async: (None)
    # @mime_type:
    # @stream:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_write_mime_type_async_vfunc(impl_method_name)
      private def self._vfunc_write_mime_type_async(%this : Pointer(Void), lib_mime_type :  Pointer(LibC::Char), lib_stream :  Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @mime_type: 
# @stream: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
mime_type=::String.new(lib_mime_type)
# Generator::BuiltInTypeArgPlan
stream=Gio::OutputStream.new(lib_stream, GICrystal::Transfer::None)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(mime_type, stream, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write_mime_type_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # write_mime_type_async: (None)
    # @mime_type:
    # @stream:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_write_mime_type_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write_mime_type_async(%this : Pointer(Void), lib_mime_type :  Pointer(LibC::Char), lib_stream :  Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @mime_type: 
# @stream: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_mime_type, lib_stream, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write_mime_type_async = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write_mime_type_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write_mime_type_async : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # write_mime_type_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_write_mime_type_finish_vfunc(impl_method_name)
      private def self._vfunc_write_mime_type_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write_mime_type_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # write_mime_type_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_write_mime_type_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write_mime_type_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write_mime_type_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write_mime_type_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write_mime_type_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
