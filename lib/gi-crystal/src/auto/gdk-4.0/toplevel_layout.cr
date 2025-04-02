module Gdk
  class ToplevelLayout
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ToplevelLayout.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(ToplevelLayout.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_toplevel_layout_get_type
    end

    def copy : Gdk::ToplevelLayout
      # gdk_toplevel_layout_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_toplevel_layout_copy(to_unsafe)

      # Return value handling
      Gdk::ToplevelLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(other : Gdk::ToplevelLayout) : Bool
      # gdk_toplevel_layout_equal: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_layout_equal(to_unsafe, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def fullscreen(fullscreen : Bool) : Bool
      # gdk_toplevel_layout_get_fullscreen: (Method)
      # @fullscreen: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_layout_get_fullscreen(to_unsafe, fullscreen)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def fullscreen_monitor : Gdk::Monitor?
      # gdk_toplevel_layout_get_fullscreen_monitor: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_toplevel_layout_get_fullscreen_monitor(to_unsafe)

      # Return value handling
      Gdk::Monitor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def maximized(maximized : Bool) : Bool
      # gdk_toplevel_layout_get_maximized: (Method)
      # @maximized: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_layout_get_maximized(to_unsafe, maximized)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def resizable : Bool
      # gdk_toplevel_layout_get_resizable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_layout_get_resizable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Gdk::ToplevelLayout
      # gdk_toplevel_layout_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_toplevel_layout_ref(to_unsafe)

      # Return value handling
      Gdk::ToplevelLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def set_fullscreen(fullscreen : Bool, monitor : Gdk::Monitor?) : Nil
      # gdk_toplevel_layout_set_fullscreen: (Method)
      # @fullscreen:
      # @monitor: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      monitor = if monitor.nil?
                  Pointer(Void).null
                else
                  monitor.to_unsafe
                end

      # C call
      LibGdk.gdk_toplevel_layout_set_fullscreen(to_unsafe, fullscreen, monitor)

      # Return value handling
    end

    def maximized=(maximized : Bool) : Nil
      # gdk_toplevel_layout_set_maximized: (Method)
      # @maximized:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_layout_set_maximized(to_unsafe, maximized)

      # Return value handling
    end

    def resizable=(resizable : Bool) : Nil
      # gdk_toplevel_layout_set_resizable: (Method)
      # @resizable:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_layout_set_resizable(to_unsafe, resizable)

      # Return value handling
    end

    def unref : Nil
      # gdk_toplevel_layout_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_layout_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
