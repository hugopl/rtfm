module Gio
  module PowerProfileMonitor
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::PowerProfileMonitor
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__PowerProfileMonitor(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractPowerProfileMonitor.g_type
    end

    def power_saver_enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "power-saver-enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.dup_default : Gio::PowerProfileMonitor
      # g_power_profile_monitor_dup_default: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_power_profile_monitor_dup_default

      # Return value handling
      Gio::AbstractPowerProfileMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    def power_saver_enabled : Bool
      # g_power_profile_monitor_get_power_saver_enabled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_power_profile_monitor_get_power_saver_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractPowerProfileMonitor.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractPowerProfileMonitor < GObject::Object
    include PowerProfileMonitor

    GICrystal.declare_new_method(Gio::AbstractPowerProfileMonitor, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_power_profile_monitor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractPowerProfileMonitor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
