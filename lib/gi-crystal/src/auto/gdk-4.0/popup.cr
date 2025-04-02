module Gdk
  module Popup
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gdk::Popup
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gdk__Popup(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gdk::AbstractPopup.g_type
    end

    def autohide=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "autohide", unsafe_value, Pointer(Void).null)
      value
    end

    def autohide? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "autohide", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def parent=(value : Gdk::Surface?) : Gdk::Surface?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "parent", unsafe_value, Pointer(Void).null)
      value
    end

    def parent : Gdk::Surface?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parent", pointerof(value), Pointer(Void).null)
      Gdk::Surface.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def autohide : Bool
      # gdk_popup_get_autohide: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_get_autohide(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def parent : Gdk::Surface?
      # gdk_popup_get_parent: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_popup_get_parent(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def position_x : Int32
      # gdk_popup_get_position_x: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_get_position_x(to_unsafe)

      # Return value handling
      _retval
    end

    def position_y : Int32
      # gdk_popup_get_position_y: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_get_position_y(to_unsafe)

      # Return value handling
      _retval
    end

    def rect_anchor : Gdk::Gravity
      # gdk_popup_get_rect_anchor: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_get_rect_anchor(to_unsafe)

      # Return value handling
      Gdk::Gravity.new(_retval)
    end

    def surface_anchor : Gdk::Gravity
      # gdk_popup_get_surface_anchor: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_get_surface_anchor(to_unsafe)

      # Return value handling
      Gdk::Gravity.new(_retval)
    end

    def present(width : Int32, height : Int32, layout : Gdk::PopupLayout) : Bool
      # gdk_popup_present: (Method)
      # @width:
      # @height:
      # @layout:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_present(to_unsafe, width, height, layout)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractPopup.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractPopup < GObject::Object
    include Popup

    GICrystal.declare_new_method(Gdk::AbstractPopup, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_popup_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::AbstractPopup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
