require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class ColorChooserRequest < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ColorChooserRequest, g_object_get_qdata)

    # Initialize a new `ColorChooserRequest`.
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

    def initialize(*, rgba : Gdk::RGBA? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !rgba.nil?
        (_names.to_unsafe + _n).value = "rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, rgba)
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
      @@g_type ||= LibWebKit.webkit_color_chooser_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::ColorChooserRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def cancel : Nil
      # webkit_color_chooser_request_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_color_chooser_request_cancel(to_unsafe)

      # Return value handling
    end

    def finish : Nil
      # webkit_color_chooser_request_finish: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_color_chooser_request_finish(to_unsafe)

      # Return value handling
    end

    def element_rectangle : Gdk::Rectangle
      # webkit_color_chooser_request_get_element_rectangle: (Method)
      # @rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      rect = Gdk::Rectangle.new
      # C call
      LibWebKit.webkit_color_chooser_request_get_element_rectangle(to_unsafe, rect)

      # Return value handling
      rect
    end

    def rgba : Gdk::RGBA
      # webkit_color_chooser_request_get_rgba: (Method | Getter)
      # @rgba: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      rgba = Gdk::RGBA.new
      # C call
      LibWebKit.webkit_color_chooser_request_get_rgba(to_unsafe, rgba)

      # Return value handling
      rgba
    end

    def rgba=(rgba : Gdk::RGBA) : Nil
      # webkit_color_chooser_request_set_rgba: (Method | Setter)
      # @rgba:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_color_chooser_request_set_rgba(to_unsafe, rgba)

      # Return value handling
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

      def connect(handler : Proc(WebKit::ColorChooserRequest, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::ColorChooserRequest.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::ColorChooserRequest, Nil)).unbox(_lib_box).call(_sender)
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

    def_equals_and_hash @pointer
  end
end
