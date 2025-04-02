require "./list_item_factory"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class SignalListItemFactory < ListItemFactory
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SignalListItemFactoryClass), class_init,
        sizeof(LibGtk::SignalListItemFactory), instance_init, 0)
    end

    GICrystal.declare_new_method(SignalListItemFactory, g_object_get_qdata)

    # Initialize a new `SignalListItemFactory`.
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
      @@g_type ||= LibGtk.gtk_signal_list_item_factory_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::SignalListItemFactory.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_signal_list_item_factory_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_signal_list_item_factory_new

      # Return value handling
      Gtk::SignalListItemFactory.new(_retval, GICrystal::Transfer::Full)
    end

    struct BindSignal < GObject::Signal
      def name : String
        @detail ? "bind::#{@detail}" : "bind"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::Object, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Nil)).unbox(_lib_box).call(object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::SignalListItemFactory, GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::SignalListItemFactory.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::SignalListItemFactory, GObject::Object, Nil)).unbox(_lib_box).call(_sender, object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : GObject::Object) : Nil
        LibGObject.g_signal_emit_by_name(@source, "bind", object)
      end
    end

    def bind_signal
      BindSignal.new(self)
    end

    struct SetupSignal < GObject::Signal
      def name : String
        @detail ? "setup::#{@detail}" : "setup"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::Object, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Nil)).unbox(_lib_box).call(object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::SignalListItemFactory, GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::SignalListItemFactory.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::SignalListItemFactory, GObject::Object, Nil)).unbox(_lib_box).call(_sender, object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : GObject::Object) : Nil
        LibGObject.g_signal_emit_by_name(@source, "setup", object)
      end
    end

    def setup_signal
      SetupSignal.new(self)
    end

    struct TeardownSignal < GObject::Signal
      def name : String
        @detail ? "teardown::#{@detail}" : "teardown"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::Object, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Nil)).unbox(_lib_box).call(object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::SignalListItemFactory, GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::SignalListItemFactory.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::SignalListItemFactory, GObject::Object, Nil)).unbox(_lib_box).call(_sender, object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : GObject::Object) : Nil
        LibGObject.g_signal_emit_by_name(@source, "teardown", object)
      end
    end

    def teardown_signal
      TeardownSignal.new(self)
    end

    struct UnbindSignal < GObject::Signal
      def name : String
        @detail ? "unbind::#{@detail}" : "unbind"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::Object, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Nil)).unbox(_lib_box).call(object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::SignalListItemFactory, GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::SignalListItemFactory.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = GObject::Object.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::SignalListItemFactory, GObject::Object, Nil)).unbox(_lib_box).call(_sender, object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : GObject::Object) : Nil
        LibGObject.g_signal_emit_by_name(@source, "unbind", object)
      end
    end

    def unbind_signal
      UnbindSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
