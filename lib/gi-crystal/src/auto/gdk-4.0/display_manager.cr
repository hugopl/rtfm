require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class DisplayManager < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DisplayManager, g_object_get_qdata)

    # Initialize a new `DisplayManager`.
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

    def initialize(*, default_display : Gdk::Display? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !default_display.nil?
        (_names.to_unsafe + _n).value = "default-display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_display)
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
      @@g_type ||= LibGdk.gdk_display_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::DisplayManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def default_display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "default-display", unsafe_value, Pointer(Void).null)
      value
    end

    def default_display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "default-display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.get : Gdk::DisplayManager
      # gdk_display_manager_get: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_manager_get

      # Return value handling
      Gdk::DisplayManager.new(_retval, GICrystal::Transfer::None)
    end

    def default_display : Gdk::Display?
      # gdk_display_manager_get_default_display: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_display_manager_get_default_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def list_displays : GLib::SList
      # gdk_display_manager_list_displays: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGdk.gdk_display_manager_list_displays(to_unsafe)

      # Return value handling
      GLib::SList(Gdk::Display).new(_retval, GICrystal::Transfer::Container)
    end

    def open_display(name : ::String?) : Gdk::Display?
      # gdk_display_manager_open_display: (Method)
      # @name: (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibGdk.gdk_display_manager_open_display(to_unsafe, name)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def default_display=(display : Gdk::Display) : Nil
      # gdk_display_manager_set_default_display: (Method | Setter)
      # @display:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_display_manager_set_default_display(to_unsafe, display)

      # Return value handling
    end

    struct DisplayOpenedSignal < GObject::Signal
      def name : String
        @detail ? "display-opened::#{@detail}" : "display-opened"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Display, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Display, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_display : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          display = Gdk::Display.new(lib_display, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Display, Nil)).unbox(_lib_box).call(display)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::DisplayManager, Gdk::Display, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_display : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::DisplayManager.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          display = Gdk::Display.new(lib_display, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::DisplayManager, Gdk::Display, Nil)).unbox(_lib_box).call(_sender, display)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(display : Gdk::Display) : Nil
        LibGObject.g_signal_emit_by_name(@source, "display-opened", display)
      end
    end

    def display_opened_signal
      DisplayOpenedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
