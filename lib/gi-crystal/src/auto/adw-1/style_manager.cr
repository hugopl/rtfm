require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class StyleManager < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(StyleManager, g_object_get_qdata)

    # Initialize a new `StyleManager`.
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

    def initialize(*, accent_color : Adw::AccentColor? = nil, accent_color_rgba : Gdk::RGBA? = nil, color_scheme : Adw::ColorScheme? = nil, dark : Bool? = nil, display : Gdk::Display? = nil, document_font_name : ::String? = nil, high_contrast : Bool? = nil, monospace_font_name : ::String? = nil, system_supports_accent_colors : Bool? = nil, system_supports_color_schemes : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !accent_color.nil?
        (_names.to_unsafe + _n).value = "accent-color".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accent_color)
        _n += 1
      end
      if !accent_color_rgba.nil?
        (_names.to_unsafe + _n).value = "accent-color-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accent_color_rgba)
        _n += 1
      end
      if !color_scheme.nil?
        (_names.to_unsafe + _n).value = "color-scheme".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, color_scheme)
        _n += 1
      end
      if !dark.nil?
        (_names.to_unsafe + _n).value = "dark".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, dark)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !document_font_name.nil?
        (_names.to_unsafe + _n).value = "document-font-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, document_font_name)
        _n += 1
      end
      if !high_contrast.nil?
        (_names.to_unsafe + _n).value = "high-contrast".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, high_contrast)
        _n += 1
      end
      if !monospace_font_name.nil?
        (_names.to_unsafe + _n).value = "monospace-font-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, monospace_font_name)
        _n += 1
      end
      if !system_supports_accent_colors.nil?
        (_names.to_unsafe + _n).value = "system-supports-accent-colors".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, system_supports_accent_colors)
        _n += 1
      end
      if !system_supports_color_schemes.nil?
        (_names.to_unsafe + _n).value = "system-supports-color-schemes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, system_supports_color_schemes)
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
      @@g_type ||= LibAdw.adw_style_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::StyleManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accent_color : Adw::AccentColor
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "accent-color", pointerof(value), Pointer(Void).null)
      Adw::AccentColor.new(value)
    end

    def accent_color_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "accent-color-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def color_scheme=(value : Adw::ColorScheme) : Adw::ColorScheme
      unsafe_value = value

      LibGObject.g_object_set(self, "color-scheme", unsafe_value, Pointer(Void).null)
      value
    end

    def color_scheme : Adw::ColorScheme
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "color-scheme", pointerof(value), Pointer(Void).null)
      Adw::ColorScheme.new(value)
    end

    def dark? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "dark", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def document_font_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "document-font-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#document_font_name`, but can return nil.
    def document_font_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "document-font-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def high_contrast? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "high-contrast", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def monospace_font_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "monospace-font-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#monospace_font_name`, but can return nil.
    def monospace_font_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "monospace-font-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def system_supports_accent_colors? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "system-supports-accent-colors", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def system_supports_color_schemes? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "system-supports-color-schemes", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.default : Adw::StyleManager
      # adw_style_manager_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_default

      # Return value handling
      Adw::StyleManager.new(_retval, GICrystal::Transfer::None)
    end

    def self.for_display(display : Gdk::Display) : Adw::StyleManager
      # adw_style_manager_get_for_display: (None)
      # @display:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_for_display(display)

      # Return value handling
      Adw::StyleManager.new(_retval, GICrystal::Transfer::None)
    end

    def accent_color : Adw::AccentColor
      # adw_style_manager_get_accent_color: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_accent_color(to_unsafe)

      # Return value handling
      Adw::AccentColor.new(_retval)
    end

    def accent_color_rgba : Gdk::RGBA
      # adw_style_manager_get_accent_color_rgba: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_style_manager_get_accent_color_rgba(to_unsafe)

      # Return value handling
      Gdk::RGBA.new(_retval, GICrystal::Transfer::Full)
    end

    def color_scheme : Adw::ColorScheme
      # adw_style_manager_get_color_scheme: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_color_scheme(to_unsafe)

      # Return value handling
      Adw::ColorScheme.new(_retval)
    end

    def dark : Bool
      # adw_style_manager_get_dark: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_dark(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def display : Gdk::Display?
      # adw_style_manager_get_display: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_style_manager_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def document_font_name : ::String
      # adw_style_manager_get_document_font_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_document_font_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def high_contrast : Bool
      # adw_style_manager_get_high_contrast: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_high_contrast(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def monospace_font_name : ::String
      # adw_style_manager_get_monospace_font_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_monospace_font_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def system_supports_accent_colors : Bool
      # adw_style_manager_get_system_supports_accent_colors: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_system_supports_accent_colors(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def system_supports_color_schemes : Bool
      # adw_style_manager_get_system_supports_color_schemes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_style_manager_get_system_supports_color_schemes(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def color_scheme=(color_scheme : Adw::ColorScheme) : Nil
      # adw_style_manager_set_color_scheme: (Method | Setter)
      # @color_scheme:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_style_manager_set_color_scheme(to_unsafe, color_scheme)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
