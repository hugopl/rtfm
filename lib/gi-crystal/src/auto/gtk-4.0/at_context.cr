require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ATContext < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ATContextClass), class_init,
        sizeof(LibGtk::ATContext), instance_init, 0)
    end

    GICrystal.declare_new_method(ATContext, g_object_get_qdata)

    # Initialize a new `ATContext`.
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

    def initialize(*, accessible : Gtk::Accessible? = nil, accessible_role : Gtk::AccessibleRole? = nil, display : Gdk::Display? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !accessible.nil?
        (_names.to_unsafe + _n).value = "accessible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible)
        _n += 1
      end
      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
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
      @@g_type ||= LibGtk.gtk_at_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ATContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accessible=(value : Gtk::Accessible?) : Gtk::Accessible?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "accessible", unsafe_value, Pointer(Void).null)
      value
    end

    def accessible : Gtk::Accessible?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "accessible", pointerof(value), Pointer(Void).null)
      Gtk::AbstractAccessible.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def accessible_role=(value : Gtk::AccessibleRole) : Gtk::AccessibleRole
      unsafe_value = value

      LibGObject.g_object_set(self, "accessible-role", unsafe_value, Pointer(Void).null)
      value
    end

    def accessible_role : Gtk::AccessibleRole
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "accessible-role", pointerof(value), Pointer(Void).null)
      Gtk::AccessibleRole.new(value)
    end

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.create(accessible_role : Gtk::AccessibleRole, accessible : Gtk::Accessible, display : Gdk::Display) : self?
      # gtk_at_context_create: (Constructor)
      # @accessible_role:
      # @accessible:
      # @display:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_at_context_create(accessible_role, accessible, display)

      # Return value handling
      Gtk::ATContext.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def accessible : Gtk::Accessible
      # gtk_at_context_get_accessible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_at_context_get_accessible(to_unsafe)

      # Return value handling
      Gtk::AbstractAccessible.new(_retval, GICrystal::Transfer::None)
    end

    def accessible_role : Gtk::AccessibleRole
      # gtk_at_context_get_accessible_role: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_at_context_get_accessible_role(to_unsafe)

      # Return value handling
      Gtk::AccessibleRole.new(_retval)
    end

    struct StateChangeSignal < GObject::Signal
      def name : String
        @detail ? "state-change::#{@detail}" : "state-change"
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

      def connect(handler : Proc(Gtk::ATContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ATContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ATContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "state-change")
      end
    end

    def state_change_signal
      StateChangeSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
