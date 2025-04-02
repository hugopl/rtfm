require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class LinearGradientNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `LinearGradientNode`.
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
      @@g_type ||= LibGsk.gsk_linear_gradient_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::LinearGradientNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(bounds : Graphene::Rect, start : Graphene::Point, end _end : Graphene::Point, color_stops : Enumerable(Gsk::ColorStop)) : self
      # gsk_linear_gradient_node_new: (Constructor)
      # @bounds:
      # @start:
      # @end:
      # @color_stops: (array length=n_color_stops element-type Interface)
      # @n_color_stops:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_color_stops = color_stops.size
      # Generator::ArrayArgPlan
      color_stops = color_stops.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::ColorStop))

      # C call
      _retval = LibGsk.gsk_linear_gradient_node_new(bounds, start, _end, color_stops, n_color_stops)

      # Return value handling
      Gsk::LinearGradientNode.new(_retval, GICrystal::Transfer::Full)
    end

    def color_stops : Enumerable(Gsk::ColorStop)
      # gsk_linear_gradient_node_get_color_stops: (Method)
      # @n_stops: (out) (transfer full) (optional)
      # Returns: (transfer none) (array length=n_stops element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      n_stops = 0_u64
      # C call
      _retval = LibGsk.gsk_linear_gradient_node_get_color_stops(to_unsafe, pointerof(n_stops))

      # Return value handling
      GICrystal.transfer_array(_retval, n_stops, GICrystal::Transfer::None)
    end

    def end : Graphene::Point
      # gsk_linear_gradient_node_get_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_linear_gradient_node_get_end(to_unsafe)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def n_color_stops : UInt64
      # gsk_linear_gradient_node_get_n_color_stops: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_linear_gradient_node_get_n_color_stops(to_unsafe)

      # Return value handling
      _retval
    end

    def start : Graphene::Point
      # gsk_linear_gradient_node_get_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_linear_gradient_node_get_start(to_unsafe)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
