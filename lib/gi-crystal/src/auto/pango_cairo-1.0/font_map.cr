module PangoCairo
  module FontMap
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include PangoCairo::FontMap
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_PangoCairo__FontMap(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      PangoCairo::AbstractFontMap.g_type
    end

    def self.default : Pango::FontMap
      # pango_cairo_font_map_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibPangoCairo.pango_cairo_font_map_get_default

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::None)
    end

    def self.new : Pango::FontMap
      # pango_cairo_font_map_new: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibPangoCairo.pango_cairo_font_map_new

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_font_type(fonttype : Cairo::FontType) : Pango::FontMap?
      # pango_cairo_font_map_new_for_font_type: (None)
      # @fonttype:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPangoCairo.pango_cairo_font_map_new_for_font_type(fonttype)

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def font_type : Cairo::FontType
      # pango_cairo_font_map_get_font_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPangoCairo.pango_cairo_font_map_get_font_type(to_unsafe)

      # Return value handling
      Cairo::FontType.new(_retval)
    end

    def resolution : Float64
      # pango_cairo_font_map_get_resolution: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPangoCairo.pango_cairo_font_map_get_resolution(to_unsafe)

      # Return value handling
      _retval
    end

    def set_default : Nil
      # pango_cairo_font_map_set_default: (Method)
      # Returns: (transfer none)

      # C call
      LibPangoCairo.pango_cairo_font_map_set_default(to_unsafe)

      # Return value handling
    end

    def resolution=(dpi : Float64) : Nil
      # pango_cairo_font_map_set_resolution: (Method)
      # @dpi:
      # Returns: (transfer none)

      # C call
      LibPangoCairo.pango_cairo_font_map_set_resolution(to_unsafe, dpi)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractFontMap.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractFontMap < GObject::Object
    include FontMap

    GICrystal.declare_new_method(PangoCairo::AbstractFontMap, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibPangoCairo.pango_cairo_font_map_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->PangoCairo::AbstractFontMap.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
