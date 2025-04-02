require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class EditorState < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(EditorState, g_object_get_qdata)

    # Initialize a new `EditorState`.
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

    def initialize(*, typing_attributes : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !typing_attributes.nil?
        (_names.to_unsafe + _n).value = "typing-attributes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, typing_attributes)
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
      @@g_type ||= LibWebKit.webkit_editor_state_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::EditorState.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def typing_attributes : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "typing-attributes", pointerof(value), Pointer(Void).null)
      value
    end

    def typing_attributes : UInt32
      # webkit_editor_state_get_typing_attributes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_editor_state_get_typing_attributes(to_unsafe)

      # Return value handling
      _retval
    end

    def is_copy_available : Bool
      # webkit_editor_state_is_copy_available: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_editor_state_is_copy_available(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_cut_available : Bool
      # webkit_editor_state_is_cut_available: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_editor_state_is_cut_available(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_paste_available : Bool
      # webkit_editor_state_is_paste_available: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_editor_state_is_paste_available(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_redo_available : Bool
      # webkit_editor_state_is_redo_available: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_editor_state_is_redo_available(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_undo_available : Bool
      # webkit_editor_state_is_undo_available: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_editor_state_is_undo_available(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
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

      def connect(handler : Proc(WebKit::EditorState, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::EditorState.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::EditorState, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
