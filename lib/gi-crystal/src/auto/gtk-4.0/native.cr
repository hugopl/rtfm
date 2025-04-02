module Gtk
  module Native
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Native
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Native(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractNative.g_type
    end

    def self.for_surface(surface : Gdk::Surface) : Gtk::Native?
      # gtk_native_get_for_surface: (None)
      # @surface:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_native_get_for_surface(surface)

      # Return value handling
      Gtk::AbstractNative.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def renderer : Gsk::Renderer?
      # gtk_native_get_renderer: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_native_get_renderer(to_unsafe)

      # Return value handling
      Gsk::Renderer.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def surface : Gdk::Surface?
      # gtk_native_get_surface: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_native_get_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def surface_transform(x : Float64, y : Float64) : Nil
      # gtk_native_get_surface_transform: (Method)
      # @x: (out) (transfer full)
      # @y: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_get_surface_transform(to_unsafe, x, y)

      # Return value handling
    end

    def realize : Nil
      # gtk_native_realize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_realize(to_unsafe)

      # Return value handling
    end

    def unrealize : Nil
      # gtk_native_unrealize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_unrealize(to_unsafe)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractNative.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractNative < GObject::Object
    include Native

    GICrystal.declare_new_method(Gtk::AbstractNative, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_native_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractNative.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
