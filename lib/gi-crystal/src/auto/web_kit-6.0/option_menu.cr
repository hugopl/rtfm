require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class OptionMenu < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(OptionMenu, g_object_get_qdata)

    # Initialize a new `OptionMenu`.
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
      @@g_type ||= LibWebKit.webkit_option_menu_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::OptionMenu.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def activate_item(index : UInt32) : Nil
      # webkit_option_menu_activate_item: (Method)
      # @index:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_option_menu_activate_item(to_unsafe, index)

      # Return value handling
    end

    def close : Nil
      # webkit_option_menu_close: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_option_menu_close(to_unsafe)

      # Return value handling
    end

    def event : Gdk::Event
      # webkit_option_menu_get_event: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_get_event(to_unsafe)

      # Return value handling
      Gdk::Event.new(_retval, GICrystal::Transfer::None)
    end

    def item(index : UInt32) : WebKit::OptionMenuItem
      # webkit_option_menu_get_item: (Method)
      # @index:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_get_item(to_unsafe, index)

      # Return value handling
      WebKit::OptionMenuItem.new(_retval, GICrystal::Transfer::None)
    end

    def n_items : UInt32
      # webkit_option_menu_get_n_items: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_get_n_items(to_unsafe)

      # Return value handling
      _retval
    end

    def select_item(index : UInt32) : Nil
      # webkit_option_menu_select_item: (Method)
      # @index:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_option_menu_select_item(to_unsafe, index)

      # Return value handling
    end

    struct CloseSignal < GObject::Signal
      def name : String
        @detail ? "close::#{@detail}" : "close"
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

      def connect(handler : Proc(WebKit::OptionMenu, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::OptionMenu.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::OptionMenu, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "close")
      end
    end

    def close_signal
      CloseSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
