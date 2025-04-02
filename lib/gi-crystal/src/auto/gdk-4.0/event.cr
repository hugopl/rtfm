module Gdk
  @[GICrystal::GeneratedWrapper]
  class Event
    @pointer : Pointer(Void)

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
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

    # Called by the garbage collector. Decreases the reference count of object.
    # (i.e. its memory is freed).
    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name.to_unsafe, self)
      {% end %}
      GICrystal.finalize_instance(self)
    end

    # Returns a pointer to the C object.
    def to_unsafe
      @pointer
    end

    private def _after_init : Nil
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_event_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Event.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def _get_angle(event2 : Gdk::Event, angle : Float64) : Bool
      # gdk_events_get_angle: (Method)
      # @event2:
      # @angle: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_events_get_angle(to_unsafe, event2, angle)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def _get_center(event2 : Gdk::Event, x : Float64, y : Float64) : Bool
      # gdk_events_get_center: (Method)
      # @event2:
      # @x: (out) (transfer full)
      # @y: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_events_get_center(to_unsafe, event2, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def _get_distance(event2 : Gdk::Event, distance : Float64) : Bool
      # gdk_events_get_distance: (Method)
      # @event2:
      # @distance: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_events_get_distance(to_unsafe, event2, distance)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def axes(axes : Enumerable(Float64)) : Bool
      # gdk_event_get_axes: (Method)
      # @axes: (out) (array length=n_axes element-type Double)
      # @n_axes: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_axes = axes.size
      # Generator::ArrayArgPlan
      axes = axes.to_a.to_unsafe.as(Pointer(Float64))

      # C call
      _retval = LibGdk.gdk_event_get_axes(to_unsafe, axes, n_axes)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def axes(*axes : Float64)
      axes(axes)
    end

    def axis(axis_use : Gdk::AxisUse, value : Float64) : Bool
      # gdk_event_get_axis: (Method)
      # @axis_use:
      # @value: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_get_axis(to_unsafe, axis_use, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def device : Gdk::Device?
      # gdk_event_get_device: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_event_get_device(to_unsafe)

      # Return value handling
      Gdk::Device.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def device_tool : Gdk::DeviceTool?
      # gdk_event_get_device_tool: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_event_get_device_tool(to_unsafe)

      # Return value handling
      Gdk::DeviceTool.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def display : Gdk::Display?
      # gdk_event_get_display: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_event_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def event_sequence : Gdk::EventSequence
      # gdk_event_get_event_sequence: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_get_event_sequence(to_unsafe)

      # Return value handling
      Gdk::EventSequence.new(_retval, GICrystal::Transfer::None)
    end

    def event_type : Gdk::EventType
      # gdk_event_get_event_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_get_event_type(to_unsafe)

      # Return value handling
      Gdk::EventType.new(_retval)
    end

    def history : Enumerable(Gdk::TimeCoord)?
      # gdk_event_get_history: (Method)
      # @out_n_coords: (out) (transfer full)
      # Returns: (transfer container) (nullable) (array length=out_n_coords element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      out_n_coords = 0_u32
      # C call
      _retval = LibGdk.gdk_event_get_history(to_unsafe, pointerof(out_n_coords))

      # Return value handling
      GICrystal.transfer_array(_retval, out_n_coords, GICrystal::Transfer::Container) unless _retval.null?
    end

    def modifier_state : Gdk::ModifierType
      # gdk_event_get_modifier_state: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_get_modifier_state(to_unsafe)

      # Return value handling
      Gdk::ModifierType.new(_retval)
    end

    def pointer_emulated : Bool
      # gdk_event_get_pointer_emulated: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_get_pointer_emulated(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def position(x : Float64, y : Float64) : Bool
      # gdk_event_get_position: (Method)
      # @x: (out) (transfer full)
      # @y: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_get_position(to_unsafe, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def seat : Gdk::Seat?
      # gdk_event_get_seat: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_event_get_seat(to_unsafe)

      # Return value handling
      Gdk::Seat.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def surface : Gdk::Surface?
      # gdk_event_get_surface: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_event_get_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def time : UInt32
      # gdk_event_get_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_get_time(to_unsafe)

      # Return value handling
      _retval
    end

    def triggers_context_menu : Bool
      # gdk_event_triggers_context_menu: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_event_triggers_context_menu(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
