module Gtk
  module Orientable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Orientable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Orientable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractOrientable.g_type
    end

    def orientation=(value : Gtk::Orientation) : Gtk::Orientation
      unsafe_value = value

      LibGObject.g_object_set(self, "orientation", unsafe_value, Pointer(Void).null)
      value
    end

    def orientation : Gtk::Orientation
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "orientation", pointerof(value), Pointer(Void).null)
      Gtk::Orientation.new(value)
    end

    def orientation : Gtk::Orientation
      # gtk_orientable_get_orientation: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_orientable_get_orientation(to_unsafe)

      # Return value handling
      Gtk::Orientation.new(_retval)
    end

    def orientation=(orientation : Gtk::Orientation) : Nil
      # gtk_orientable_set_orientation: (Method | Setter)
      # @orientation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_orientable_set_orientation(to_unsafe, orientation)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractOrientable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractOrientable < GObject::Object
    include Orientable

    GICrystal.declare_new_method(Gtk::AbstractOrientable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_orientable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractOrientable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
