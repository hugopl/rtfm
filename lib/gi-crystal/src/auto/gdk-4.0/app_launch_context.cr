require "../gio-2.0/app_launch_context"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class AppLaunchContext < Gio::AppLaunchContext
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AppLaunchContext, g_object_get_qdata)

    # Initialize a new `AppLaunchContext`.
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

    def initialize(*, display : Gdk::Display? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

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
      @@g_type ||= LibGdk.gdk_app_launch_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::AppLaunchContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def display : Gdk::Display
      # gdk_app_launch_context_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_app_launch_context_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def desktop=(desktop : Int32) : Nil
      # gdk_app_launch_context_set_desktop: (Method)
      # @desktop:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_app_launch_context_set_desktop(to_unsafe, desktop)

      # Return value handling
    end

    def icon=(icon : Gio::Icon?) : Nil
      # gdk_app_launch_context_set_icon: (Method)
      # @icon: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon = if icon.nil?
               Pointer(Void).null
             else
               icon.to_unsafe
             end

      # C call
      LibGdk.gdk_app_launch_context_set_icon(to_unsafe, icon)

      # Return value handling
    end

    def icon_name=(icon_name : ::String?) : Nil
      # gdk_app_launch_context_set_icon_name: (Method)
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      LibGdk.gdk_app_launch_context_set_icon_name(to_unsafe, icon_name)

      # Return value handling
    end

    def timestamp=(timestamp : UInt32) : Nil
      # gdk_app_launch_context_set_timestamp: (Method)
      # @timestamp:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_app_launch_context_set_timestamp(to_unsafe, timestamp)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
