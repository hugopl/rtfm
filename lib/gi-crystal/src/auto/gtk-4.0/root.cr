module Gtk
  module Root
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Root
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Root(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractRoot.g_type
    end

    def display : Gdk::Display
      # gtk_root_get_display: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_root_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def focus : Gtk::Widget?
      # gtk_root_get_focus: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_root_get_focus(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def focus=(focus : Gtk::Widget?) : Nil
      # gtk_root_set_focus: (Method)
      # @focus: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      focus = if focus.nil?
                Pointer(Void).null
              else
                focus.to_unsafe
              end

      # C call
      LibGtk.gtk_root_set_focus(to_unsafe, focus)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractRoot.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractRoot < GObject::Object
    include Root

    GICrystal.declare_new_method(Gtk::AbstractRoot, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_root_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractRoot.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
