module Gdk
  module DevicePad
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gdk::DevicePad
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gdk__DevicePad(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gdk::AbstractDevicePad.g_type
    end

    def feature_group(feature : Gdk::DevicePadFeature, feature_idx : Int32) : Int32
      # gdk_device_pad_get_feature_group: (Method)
      # @feature:
      # @feature_idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_pad_get_feature_group(to_unsafe, feature, feature_idx)

      # Return value handling
      _retval
    end

    def group_n_modes(group_idx : Int32) : Int32
      # gdk_device_pad_get_group_n_modes: (Method)
      # @group_idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_pad_get_group_n_modes(to_unsafe, group_idx)

      # Return value handling
      _retval
    end

    def n_features(feature : Gdk::DevicePadFeature) : Int32
      # gdk_device_pad_get_n_features: (Method)
      # @feature:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_pad_get_n_features(to_unsafe, feature)

      # Return value handling
      _retval
    end

    def n_groups : Int32
      # gdk_device_pad_get_n_groups: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_pad_get_n_groups(to_unsafe)

      # Return value handling
      _retval
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDevicePad.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDevicePad < GObject::Object
    include DevicePad

    GICrystal.declare_new_method(Gdk::AbstractDevicePad, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_device_pad_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::AbstractDevicePad.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
