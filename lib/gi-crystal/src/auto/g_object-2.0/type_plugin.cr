module GObject
  module TypePlugin
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include GObject::TypePlugin
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_GObject__TypePlugin(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      GObject::AbstractTypePlugin.g_type
    end

    def complete_interface_info(instance_type : UInt64, interface_type : UInt64, info : GObject::InterfaceInfo) : Nil
      # g_type_plugin_complete_interface_info: (Method)
      # @instance_type:
      # @interface_type:
      # @info:
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_plugin_complete_interface_info(to_unsafe, instance_type, interface_type, info)

      # Return value handling
    end

    def complete_type_info(g_type : UInt64, info : GObject::TypeInfo, value_table : GObject::TypeValueTable) : Nil
      # g_type_plugin_complete_type_info: (Method)
      # @g_type:
      # @info:
      # @value_table:
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_plugin_complete_type_info(to_unsafe, g_type, info, value_table)

      # Return value handling
    end

    def unuse : Nil
      # g_type_plugin_unuse: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_plugin_unuse(to_unsafe)

      # Return value handling
    end

    def use : Nil
      # g_type_plugin_use: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_plugin_use(to_unsafe)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTypePlugin.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTypePlugin < GObject::Object
    include TypePlugin

    GICrystal.declare_new_method(GObject::AbstractTypePlugin, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGObject.g_type_plugin_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GObject::AbstractTypePlugin.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
