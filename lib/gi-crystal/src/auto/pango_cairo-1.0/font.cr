module PangoCairo
  module Font
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include PangoCairo::Font
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_PangoCairo__Font(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      PangoCairo::AbstractFont.g_type
    end

    def scaled_font : Cairo::ScaledFont?
      # pango_cairo_font_get_scaled_font: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPangoCairo.pango_cairo_font_get_scaled_font(to_unsafe)

      # Return value handling
      Cairo::ScaledFont.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractFont.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractFont < GObject::Object
    include Font

    GICrystal.declare_new_method(PangoCairo::AbstractFont, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibPangoCairo.pango_cairo_font_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->PangoCairo::AbstractFont.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
