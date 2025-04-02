module Gio
  module DebugController
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DebugController
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DebugController(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDebugController.g_type
    end

    def debug_enabled=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "debug-enabled", unsafe_value, Pointer(Void).null)
      value
    end

    def debug_enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "debug-enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def debug_enabled : Bool
      # g_debug_controller_get_debug_enabled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_debug_controller_get_debug_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def debug_enabled=(debug_enabled : Bool) : Nil
      # g_debug_controller_set_debug_enabled: (Method | Setter)
      # @debug_enabled:
      # Returns: (transfer none)

      # C call
      LibGio.g_debug_controller_set_debug_enabled(to_unsafe, debug_enabled)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDebugController.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDebugController < GObject::Object
    include DebugController

    GICrystal.declare_new_method(Gio::AbstractDebugController, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_debug_controller_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDebugController.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
