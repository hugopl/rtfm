require "./event_controller"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Gesture < EventController
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GestureClass), class_init,
        sizeof(LibGtk::Gesture), instance_init, 0)
    end

    GICrystal.declare_new_method(Gesture, g_object_get_qdata)

    # Initialize a new `Gesture`.
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

    def initialize(*, n_points : UInt32? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !n_points.nil?
        (_names.to_unsafe + _n).value = "n-points".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_points)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !propagation_limit.nil?
        (_names.to_unsafe + _n).value = "propagation-limit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, propagation_limit)
        _n += 1
      end
      if !propagation_phase.nil?
        (_names.to_unsafe + _n).value = "propagation-phase".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, propagation_phase)
        _n += 1
      end
      if !widget.nil?
        (_names.to_unsafe + _n).value = "widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, widget)
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
      @@g_type ||= LibGtk.gtk_gesture_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Gesture.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def n_points=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "n-points", unsafe_value, Pointer(Void).null)
      value
    end

    def n_points : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-points", pointerof(value), Pointer(Void).null)
      value
    end

    def bounding_box : Gdk::Rectangle
      # gtk_gesture_get_bounding_box: (Method)
      # @rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      rect = Gdk::Rectangle.new
      # C call
      _retval = LibGtk.gtk_gesture_get_bounding_box(to_unsafe, rect)

      # Return value handling
      rect
    end

    def bounding_box_center(x : Float64, y : Float64) : Bool
      # gtk_gesture_get_bounding_box_center: (Method)
      # @x: (out) (transfer full)
      # @y: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_get_bounding_box_center(to_unsafe, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def device : Gdk::Device?
      # gtk_gesture_get_device: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_gesture_get_device(to_unsafe)

      # Return value handling
      Gdk::Device.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def group : GLib::List
      # gtk_gesture_get_group: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_gesture_get_group(to_unsafe)

      # Return value handling
      GLib::List(Gtk::Gesture).new(_retval, GICrystal::Transfer::Container)
    end

    def last_event(sequence : Gdk::EventSequence?) : Gdk::Event?
      # gtk_gesture_get_last_event: (Method)
      # @sequence: (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      sequence = if sequence.nil?
                   Pointer(Void).null
                 else
                   sequence.to_unsafe
                 end

      # C call
      _retval = LibGtk.gtk_gesture_get_last_event(to_unsafe, sequence)

      # Return value handling
      Gdk::Event.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def last_updated_sequence : Gdk::EventSequence?
      # gtk_gesture_get_last_updated_sequence: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_gesture_get_last_updated_sequence(to_unsafe)

      # Return value handling
      Gdk::EventSequence.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def point(sequence : Gdk::EventSequence?) : Bool
      # gtk_gesture_get_point: (Method)
      # @sequence: (nullable)
      # @x: (out) (transfer full) (optional)
      # @y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sequence = if sequence.nil?
                   Pointer(Void).null
                 else
                   sequence.to_unsafe
                 end
      # Generator::OutArgUsedInReturnPlan
      x = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      y = Pointer(Float64).null
      # C call
      _retval = LibGtk.gtk_gesture_get_point(to_unsafe, sequence, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def sequence_state(sequence : Gdk::EventSequence) : Gtk::EventSequenceState
      # gtk_gesture_get_sequence_state: (Method)
      # @sequence:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_get_sequence_state(to_unsafe, sequence)

      # Return value handling
      Gtk::EventSequenceState.new(_retval)
    end

    def sequences : GLib::List
      # gtk_gesture_get_sequences: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_gesture_get_sequences(to_unsafe)

      # Return value handling
      GLib::List(Gdk::EventSequence).new(_retval, GICrystal::Transfer::Container)
    end

    def group(gesture : Gtk::Gesture) : Nil
      # gtk_gesture_group: (Method)
      # @gesture:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gesture_group(to_unsafe, gesture)

      # Return value handling
    end

    def handles_sequence(sequence : Gdk::EventSequence?) : Bool
      # gtk_gesture_handles_sequence: (Method)
      # @sequence: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sequence = if sequence.nil?
                   Pointer(Void).null
                 else
                   sequence.to_unsafe
                 end

      # C call
      _retval = LibGtk.gtk_gesture_handles_sequence(to_unsafe, sequence)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_active : Bool
      # gtk_gesture_is_active: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_is_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_grouped_with(other : Gtk::Gesture) : Bool
      # gtk_gesture_is_grouped_with: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_is_grouped_with(to_unsafe, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_recognized : Bool
      # gtk_gesture_is_recognized: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_is_recognized(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def set_sequence_state(sequence : Gdk::EventSequence, state : Gtk::EventSequenceState) : Bool
      # gtk_gesture_set_sequence_state: (Method)
      # @sequence:
      # @state:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_set_sequence_state(to_unsafe, sequence, state)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def state=(state : Gtk::EventSequenceState) : Bool
      # gtk_gesture_set_state: (Method)
      # @state:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_set_state(to_unsafe, state)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ungroup : Nil
      # gtk_gesture_ungroup: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gesture_ungroup(to_unsafe)

      # Return value handling
    end

    struct BeginSignal < GObject::Signal
      def name : String
        @detail ? "begin::#{@detail}" : "begin"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::EventSequence?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gdk::EventSequence?, Nil)).unbox(_lib_box).call(sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Gesture, Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Gesture.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gtk::Gesture, Gdk::EventSequence?, Nil)).unbox(_lib_box).call(_sender, sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(sequence : Gdk::EventSequence?) : Nil
        # Generator::NullableArrayPlan
        sequence = if sequence.nil?
                     Void.null
                   else
                     sequence.to_unsafe
                   end

        LibGObject.g_signal_emit_by_name(@source, "begin", sequence)
      end
    end

    def begin_signal
      BeginSignal.new(self)
    end

    struct CancelSignal < GObject::Signal
      def name : String
        @detail ? "cancel::#{@detail}" : "cancel"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::EventSequence?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gdk::EventSequence?, Nil)).unbox(_lib_box).call(sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Gesture, Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Gesture.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gtk::Gesture, Gdk::EventSequence?, Nil)).unbox(_lib_box).call(_sender, sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(sequence : Gdk::EventSequence?) : Nil
        # Generator::NullableArrayPlan
        sequence = if sequence.nil?
                     Void.null
                   else
                     sequence.to_unsafe
                   end

        LibGObject.g_signal_emit_by_name(@source, "cancel", sequence)
      end
    end

    def cancel_signal
      CancelSignal.new(self)
    end

    struct EndSignal < GObject::Signal
      def name : String
        @detail ? "end::#{@detail}" : "end"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::EventSequence?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gdk::EventSequence?, Nil)).unbox(_lib_box).call(sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Gesture, Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Gesture.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gtk::Gesture, Gdk::EventSequence?, Nil)).unbox(_lib_box).call(_sender, sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(sequence : Gdk::EventSequence?) : Nil
        # Generator::NullableArrayPlan
        sequence = if sequence.nil?
                     Void.null
                   else
                     sequence.to_unsafe
                   end

        LibGObject.g_signal_emit_by_name(@source, "end", sequence)
      end
    end

    def end_signal
      EndSignal.new(self)
    end

    struct SequenceStateChangedSignal < GObject::Signal
      def name : String
        @detail ? "sequence-state-changed::#{@detail}" : "sequence-state-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::EventSequence?, Gtk::EventSequenceState, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::EventSequence?, Gtk::EventSequenceState, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), lib_state : UInt32, _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          # Generator::BuiltInTypeArgPlan
          state = Gtk::EventSequenceState.new(lib_state)
          ::Box(Proc(Gdk::EventSequence?, Gtk::EventSequenceState, Nil)).unbox(_lib_box).call(sequence, state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Gesture, Gdk::EventSequence?, Gtk::EventSequenceState, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), lib_state : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Gesture.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          # Generator::BuiltInTypeArgPlan
          state = Gtk::EventSequenceState.new(lib_state)
          ::Box(Proc(Gtk::Gesture, Gdk::EventSequence?, Gtk::EventSequenceState, Nil)).unbox(_lib_box).call(_sender, sequence, state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(sequence : Gdk::EventSequence?, state : Gtk::EventSequenceState) : Nil
        # Generator::NullableArrayPlan
        sequence = if sequence.nil?
                     Void.null
                   else
                     sequence.to_unsafe
                   end

        LibGObject.g_signal_emit_by_name(@source, "sequence-state-changed", sequence, state)
      end
    end

    def sequence_state_changed_signal
      SequenceStateChangedSignal.new(self)
    end

    struct UpdateSignal < GObject::Signal
      def name : String
        @detail ? "update::#{@detail}" : "update"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::EventSequence?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gdk::EventSequence?, Nil)).unbox(_lib_box).call(sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Gesture, Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Gesture.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gtk::Gesture, Gdk::EventSequence?, Nil)).unbox(_lib_box).call(_sender, sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(sequence : Gdk::EventSequence?) : Nil
        # Generator::NullableArrayPlan
        sequence = if sequence.nil?
                     Void.null
                   else
                     sequence.to_unsafe
                   end

        LibGObject.g_signal_emit_by_name(@source, "update", sequence)
      end
    end

    def update_signal
      UpdateSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
