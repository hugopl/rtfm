require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Drop < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Drop, g_object_get_qdata)

    # Initialize a new `Drop`.
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

    def initialize(*, actions : Gdk::DragAction? = nil, device : Gdk::Device? = nil, display : Gdk::Display? = nil, drag : Gdk::Drag? = nil, formats : Gdk::ContentFormats? = nil, surface : Gdk::Surface? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !actions.nil?
        (_names.to_unsafe + _n).value = "actions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, actions)
        _n += 1
      end
      if !device.nil?
        (_names.to_unsafe + _n).value = "device".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, device)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !drag.nil?
        (_names.to_unsafe + _n).value = "drag".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, drag)
        _n += 1
      end
      if !formats.nil?
        (_names.to_unsafe + _n).value = "formats".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, formats)
        _n += 1
      end
      if !surface.nil?
        (_names.to_unsafe + _n).value = "surface".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, surface)
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
      @@g_type ||= LibGdk.gdk_drop_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Drop.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def actions=(value : Gdk::DragAction) : Gdk::DragAction
      unsafe_value = value

      LibGObject.g_object_set(self, "actions", unsafe_value, Pointer(Void).null)
      value
    end

    def actions : Gdk::DragAction
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "actions", pointerof(value), Pointer(Void).null)
      Gdk::DragAction.new(value)
    end

    def device=(value : Gdk::Device?) : Gdk::Device?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "device", unsafe_value, Pointer(Void).null)
      value
    end

    def device : Gdk::Device?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "device", pointerof(value), Pointer(Void).null)
      Gdk::Device.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def drag=(value : Gdk::Drag?) : Gdk::Drag?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "drag", unsafe_value, Pointer(Void).null)
      value
    end

    def drag : Gdk::Drag?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "drag", pointerof(value), Pointer(Void).null)
      Gdk::Drag.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def formats=(value : Gdk::ContentFormats?) : Gdk::ContentFormats?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "formats", unsafe_value, Pointer(Void).null)
      value
    end

    def formats : Gdk::ContentFormats?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "formats", pointerof(value), Pointer(Void).null)
      Gdk::ContentFormats.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def surface=(value : Gdk::Surface?) : Gdk::Surface?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "surface", unsafe_value, Pointer(Void).null)
      value
    end

    def surface : Gdk::Surface?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "surface", pointerof(value), Pointer(Void).null)
      Gdk::Surface.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def finish(action : Gdk::DragAction) : Nil
      # gdk_drop_finish: (Method)
      # @action:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_drop_finish(to_unsafe, action)

      # Return value handling
    end

    def actions : Gdk::DragAction
      # gdk_drop_get_actions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drop_get_actions(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def device : Gdk::Device
      # gdk_drop_get_device: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drop_get_device(to_unsafe)

      # Return value handling
      Gdk::Device.new(_retval, GICrystal::Transfer::None)
    end

    def display : Gdk::Display
      # gdk_drop_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drop_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def drag : Gdk::Drag?
      # gdk_drop_get_drag: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_drop_get_drag(to_unsafe)

      # Return value handling
      Gdk::Drag.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def formats : Gdk::ContentFormats
      # gdk_drop_get_formats: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drop_get_formats(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::None)
    end

    def surface : Gdk::Surface
      # gdk_drop_get_surface: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drop_get_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None)
    end

    def read_async(mime_types : Enumerable(::String), io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_drop_read_async: (Method)
      # @mime_types: (array zero-terminated=1 element-type Utf8)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      mime_types = mime_types.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
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
      LibGdk.gdk_drop_read_async(to_unsafe, mime_types, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def read_finish(result : Gio::AsyncResult, out_mime_type : ::String) : Gio::InputStream?
      # gdk_drop_read_finish: (Method | Throws)
      # @result:
      # @out_mime_type: (out)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_drop_read_finish(to_unsafe, result, out_mime_type, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def read_value_async(type : UInt64, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_drop_read_value_async: (Method)
      # @type:
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
      LibGdk.gdk_drop_read_value_async(to_unsafe, type, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def read_value_finish(result : Gio::AsyncResult) : GObject::Value
      # gdk_drop_read_value_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_drop_read_value_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GObject::Value.new(_retval, GICrystal::Transfer::None)
    end

    def status(actions : Gdk::DragAction, preferred : Gdk::DragAction) : Nil
      # gdk_drop_status: (Method)
      # @actions:
      # @preferred:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_drop_status(to_unsafe, actions, preferred)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
