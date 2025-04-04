require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TextTag < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TextTagClass), class_init,
        sizeof(LibGtk::TextTag), instance_init, 0)
    end

    GICrystal.declare_new_method(TextTag, g_object_get_qdata)

    # Initialize a new `TextTag`.
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

    def initialize(*, accumulative_margin : Bool? = nil, allow_breaks : Bool? = nil, allow_breaks_set : Bool? = nil, background : ::String? = nil, background_full_height : Bool? = nil, background_full_height_set : Bool? = nil, background_rgba : Gdk::RGBA? = nil, background_set : Bool? = nil, direction : Gtk::TextDirection? = nil, editable : Bool? = nil, editable_set : Bool? = nil, fallback : Bool? = nil, fallback_set : Bool? = nil, family : ::String? = nil, family_set : Bool? = nil, font : ::String? = nil, font_desc : Pango::FontDescription? = nil, font_features : ::String? = nil, font_features_set : Bool? = nil, foreground : ::String? = nil, foreground_rgba : Gdk::RGBA? = nil, foreground_set : Bool? = nil, indent : Int32? = nil, indent_set : Bool? = nil, insert_hyphens : Bool? = nil, insert_hyphens_set : Bool? = nil, invisible : Bool? = nil, invisible_set : Bool? = nil, justification : Gtk::Justification? = nil, justification_set : Bool? = nil, language : ::String? = nil, language_set : Bool? = nil, left_margin : Int32? = nil, left_margin_set : Bool? = nil, letter_spacing : Int32? = nil, letter_spacing_set : Bool? = nil, line_height : Float32? = nil, line_height_set : Bool? = nil, name : ::String? = nil, overline : Pango::Overline? = nil, overline_rgba : Gdk::RGBA? = nil, overline_rgba_set : Bool? = nil, overline_set : Bool? = nil, paragraph_background : ::String? = nil, paragraph_background_rgba : Gdk::RGBA? = nil, paragraph_background_set : Bool? = nil, pixels_above_lines : Int32? = nil, pixels_above_lines_set : Bool? = nil, pixels_below_lines : Int32? = nil, pixels_below_lines_set : Bool? = nil, pixels_inside_wrap : Int32? = nil, pixels_inside_wrap_set : Bool? = nil, right_margin : Int32? = nil, right_margin_set : Bool? = nil, rise : Int32? = nil, rise_set : Bool? = nil, scale : Float64? = nil, scale_set : Bool? = nil, sentence : Bool? = nil, sentence_set : Bool? = nil, show_spaces : Pango::ShowFlags? = nil, show_spaces_set : Bool? = nil, size : Int32? = nil, size_points : Float64? = nil, size_set : Bool? = nil, stretch : Pango::Stretch? = nil, stretch_set : Bool? = nil, strikethrough : Bool? = nil, strikethrough_rgba : Gdk::RGBA? = nil, strikethrough_rgba_set : Bool? = nil, strikethrough_set : Bool? = nil, style : Pango::Style? = nil, style_set : Bool? = nil, tabs : Pango::TabArray? = nil, tabs_set : Bool? = nil, text_transform : Pango::TextTransform? = nil, text_transform_set : Bool? = nil, underline : Pango::Underline? = nil, underline_rgba : Gdk::RGBA? = nil, underline_rgba_set : Bool? = nil, underline_set : Bool? = nil, variant : Pango::Variant? = nil, variant_set : Bool? = nil, weight : Int32? = nil, weight_set : Bool? = nil, word : Bool? = nil, word_set : Bool? = nil, wrap_mode : Gtk::WrapMode? = nil, wrap_mode_set : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[89]
      _values = StaticArray(LibGObject::Value, 89).new(LibGObject::Value.new)
      _n = 0

      if !accumulative_margin.nil?
        (_names.to_unsafe + _n).value = "accumulative-margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accumulative_margin)
        _n += 1
      end
      if !allow_breaks.nil?
        (_names.to_unsafe + _n).value = "allow-breaks".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_breaks)
        _n += 1
      end
      if !allow_breaks_set.nil?
        (_names.to_unsafe + _n).value = "allow-breaks-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_breaks_set)
        _n += 1
      end
      if !background.nil?
        (_names.to_unsafe + _n).value = "background".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, background)
        _n += 1
      end
      if !background_full_height.nil?
        (_names.to_unsafe + _n).value = "background-full-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, background_full_height)
        _n += 1
      end
      if !background_full_height_set.nil?
        (_names.to_unsafe + _n).value = "background-full-height-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, background_full_height_set)
        _n += 1
      end
      if !background_rgba.nil?
        (_names.to_unsafe + _n).value = "background-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, background_rgba)
        _n += 1
      end
      if !background_set.nil?
        (_names.to_unsafe + _n).value = "background-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, background_set)
        _n += 1
      end
      if !direction.nil?
        (_names.to_unsafe + _n).value = "direction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, direction)
        _n += 1
      end
      if !editable.nil?
        (_names.to_unsafe + _n).value = "editable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editable)
        _n += 1
      end
      if !editable_set.nil?
        (_names.to_unsafe + _n).value = "editable-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editable_set)
        _n += 1
      end
      if !fallback.nil?
        (_names.to_unsafe + _n).value = "fallback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fallback)
        _n += 1
      end
      if !fallback_set.nil?
        (_names.to_unsafe + _n).value = "fallback-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fallback_set)
        _n += 1
      end
      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
        _n += 1
      end
      if !family_set.nil?
        (_names.to_unsafe + _n).value = "family-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family_set)
        _n += 1
      end
      if !font.nil?
        (_names.to_unsafe + _n).value = "font".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, font)
        _n += 1
      end
      if !font_desc.nil?
        (_names.to_unsafe + _n).value = "font-desc".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, font_desc)
        _n += 1
      end
      if !font_features.nil?
        (_names.to_unsafe + _n).value = "font-features".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, font_features)
        _n += 1
      end
      if !font_features_set.nil?
        (_names.to_unsafe + _n).value = "font-features-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, font_features_set)
        _n += 1
      end
      if !foreground.nil?
        (_names.to_unsafe + _n).value = "foreground".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, foreground)
        _n += 1
      end
      if !foreground_rgba.nil?
        (_names.to_unsafe + _n).value = "foreground-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, foreground_rgba)
        _n += 1
      end
      if !foreground_set.nil?
        (_names.to_unsafe + _n).value = "foreground-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, foreground_set)
        _n += 1
      end
      if !indent.nil?
        (_names.to_unsafe + _n).value = "indent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, indent)
        _n += 1
      end
      if !indent_set.nil?
        (_names.to_unsafe + _n).value = "indent-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, indent_set)
        _n += 1
      end
      if !insert_hyphens.nil?
        (_names.to_unsafe + _n).value = "insert-hyphens".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, insert_hyphens)
        _n += 1
      end
      if !insert_hyphens_set.nil?
        (_names.to_unsafe + _n).value = "insert-hyphens-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, insert_hyphens_set)
        _n += 1
      end
      if !invisible.nil?
        (_names.to_unsafe + _n).value = "invisible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, invisible)
        _n += 1
      end
      if !invisible_set.nil?
        (_names.to_unsafe + _n).value = "invisible-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, invisible_set)
        _n += 1
      end
      if !justification.nil?
        (_names.to_unsafe + _n).value = "justification".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, justification)
        _n += 1
      end
      if !justification_set.nil?
        (_names.to_unsafe + _n).value = "justification-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, justification_set)
        _n += 1
      end
      if !language.nil?
        (_names.to_unsafe + _n).value = "language".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, language)
        _n += 1
      end
      if !language_set.nil?
        (_names.to_unsafe + _n).value = "language-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, language_set)
        _n += 1
      end
      if !left_margin.nil?
        (_names.to_unsafe + _n).value = "left-margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, left_margin)
        _n += 1
      end
      if !left_margin_set.nil?
        (_names.to_unsafe + _n).value = "left-margin-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, left_margin_set)
        _n += 1
      end
      if !letter_spacing.nil?
        (_names.to_unsafe + _n).value = "letter-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, letter_spacing)
        _n += 1
      end
      if !letter_spacing_set.nil?
        (_names.to_unsafe + _n).value = "letter-spacing-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, letter_spacing_set)
        _n += 1
      end
      if !line_height.nil?
        (_names.to_unsafe + _n).value = "line-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, line_height)
        _n += 1
      end
      if !line_height_set.nil?
        (_names.to_unsafe + _n).value = "line-height-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, line_height_set)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !overline.nil?
        (_names.to_unsafe + _n).value = "overline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overline)
        _n += 1
      end
      if !overline_rgba.nil?
        (_names.to_unsafe + _n).value = "overline-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overline_rgba)
        _n += 1
      end
      if !overline_rgba_set.nil?
        (_names.to_unsafe + _n).value = "overline-rgba-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overline_rgba_set)
        _n += 1
      end
      if !overline_set.nil?
        (_names.to_unsafe + _n).value = "overline-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overline_set)
        _n += 1
      end
      if !paragraph_background.nil?
        (_names.to_unsafe + _n).value = "paragraph-background".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, paragraph_background)
        _n += 1
      end
      if !paragraph_background_rgba.nil?
        (_names.to_unsafe + _n).value = "paragraph-background-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, paragraph_background_rgba)
        _n += 1
      end
      if !paragraph_background_set.nil?
        (_names.to_unsafe + _n).value = "paragraph-background-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, paragraph_background_set)
        _n += 1
      end
      if !pixels_above_lines.nil?
        (_names.to_unsafe + _n).value = "pixels-above-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_above_lines)
        _n += 1
      end
      if !pixels_above_lines_set.nil?
        (_names.to_unsafe + _n).value = "pixels-above-lines-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_above_lines_set)
        _n += 1
      end
      if !pixels_below_lines.nil?
        (_names.to_unsafe + _n).value = "pixels-below-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_below_lines)
        _n += 1
      end
      if !pixels_below_lines_set.nil?
        (_names.to_unsafe + _n).value = "pixels-below-lines-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_below_lines_set)
        _n += 1
      end
      if !pixels_inside_wrap.nil?
        (_names.to_unsafe + _n).value = "pixels-inside-wrap".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_inside_wrap)
        _n += 1
      end
      if !pixels_inside_wrap_set.nil?
        (_names.to_unsafe + _n).value = "pixels-inside-wrap-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_inside_wrap_set)
        _n += 1
      end
      if !right_margin.nil?
        (_names.to_unsafe + _n).value = "right-margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, right_margin)
        _n += 1
      end
      if !right_margin_set.nil?
        (_names.to_unsafe + _n).value = "right-margin-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, right_margin_set)
        _n += 1
      end
      if !rise.nil?
        (_names.to_unsafe + _n).value = "rise".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, rise)
        _n += 1
      end
      if !rise_set.nil?
        (_names.to_unsafe + _n).value = "rise-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, rise_set)
        _n += 1
      end
      if !scale.nil?
        (_names.to_unsafe + _n).value = "scale".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale)
        _n += 1
      end
      if !scale_set.nil?
        (_names.to_unsafe + _n).value = "scale-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_set)
        _n += 1
      end
      if !sentence.nil?
        (_names.to_unsafe + _n).value = "sentence".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sentence)
        _n += 1
      end
      if !sentence_set.nil?
        (_names.to_unsafe + _n).value = "sentence-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sentence_set)
        _n += 1
      end
      if !show_spaces.nil?
        (_names.to_unsafe + _n).value = "show-spaces".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_spaces)
        _n += 1
      end
      if !show_spaces_set.nil?
        (_names.to_unsafe + _n).value = "show-spaces-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_spaces_set)
        _n += 1
      end
      if !size.nil?
        (_names.to_unsafe + _n).value = "size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, size)
        _n += 1
      end
      if !size_points.nil?
        (_names.to_unsafe + _n).value = "size-points".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, size_points)
        _n += 1
      end
      if !size_set.nil?
        (_names.to_unsafe + _n).value = "size-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, size_set)
        _n += 1
      end
      if !stretch.nil?
        (_names.to_unsafe + _n).value = "stretch".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, stretch)
        _n += 1
      end
      if !stretch_set.nil?
        (_names.to_unsafe + _n).value = "stretch-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, stretch_set)
        _n += 1
      end
      if !strikethrough.nil?
        (_names.to_unsafe + _n).value = "strikethrough".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, strikethrough)
        _n += 1
      end
      if !strikethrough_rgba.nil?
        (_names.to_unsafe + _n).value = "strikethrough-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, strikethrough_rgba)
        _n += 1
      end
      if !strikethrough_rgba_set.nil?
        (_names.to_unsafe + _n).value = "strikethrough-rgba-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, strikethrough_rgba_set)
        _n += 1
      end
      if !strikethrough_set.nil?
        (_names.to_unsafe + _n).value = "strikethrough-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, strikethrough_set)
        _n += 1
      end
      if !style.nil?
        (_names.to_unsafe + _n).value = "style".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, style)
        _n += 1
      end
      if !style_set.nil?
        (_names.to_unsafe + _n).value = "style-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, style_set)
        _n += 1
      end
      if !tabs.nil?
        (_names.to_unsafe + _n).value = "tabs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tabs)
        _n += 1
      end
      if !tabs_set.nil?
        (_names.to_unsafe + _n).value = "tabs-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tabs_set)
        _n += 1
      end
      if !text_transform.nil?
        (_names.to_unsafe + _n).value = "text-transform".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_transform)
        _n += 1
      end
      if !text_transform_set.nil?
        (_names.to_unsafe + _n).value = "text-transform-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_transform_set)
        _n += 1
      end
      if !underline.nil?
        (_names.to_unsafe + _n).value = "underline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, underline)
        _n += 1
      end
      if !underline_rgba.nil?
        (_names.to_unsafe + _n).value = "underline-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, underline_rgba)
        _n += 1
      end
      if !underline_rgba_set.nil?
        (_names.to_unsafe + _n).value = "underline-rgba-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, underline_rgba_set)
        _n += 1
      end
      if !underline_set.nil?
        (_names.to_unsafe + _n).value = "underline-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, underline_set)
        _n += 1
      end
      if !variant.nil?
        (_names.to_unsafe + _n).value = "variant".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, variant)
        _n += 1
      end
      if !variant_set.nil?
        (_names.to_unsafe + _n).value = "variant-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, variant_set)
        _n += 1
      end
      if !weight.nil?
        (_names.to_unsafe + _n).value = "weight".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, weight)
        _n += 1
      end
      if !weight_set.nil?
        (_names.to_unsafe + _n).value = "weight-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, weight_set)
        _n += 1
      end
      if !word.nil?
        (_names.to_unsafe + _n).value = "word".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, word)
        _n += 1
      end
      if !word_set.nil?
        (_names.to_unsafe + _n).value = "word-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, word_set)
        _n += 1
      end
      if !wrap_mode.nil?
        (_names.to_unsafe + _n).value = "wrap-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap_mode)
        _n += 1
      end
      if !wrap_mode_set.nil?
        (_names.to_unsafe + _n).value = "wrap-mode-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap_mode_set)
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
      @@g_type ||= LibGtk.gtk_text_tag_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TextTag.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accumulative_margin=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "accumulative-margin", unsafe_value, Pointer(Void).null)
      value
    end

    def accumulative_margin? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "accumulative-margin", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_breaks=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-breaks", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_breaks? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-breaks", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_breaks_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-breaks-set", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_breaks_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-breaks-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def background=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "background", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#background` property to nil.
    def background=(value : Nil) : Nil
      LibGObject.g_object_set(self, "background", Pointer(Void).null, Pointer(Void).null)
    end

    def background_full_height=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "background-full-height", unsafe_value, Pointer(Void).null)
      value
    end

    def background_full_height? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "background-full-height", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def background_full_height_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "background-full-height-set", unsafe_value, Pointer(Void).null)
      value
    end

    def background_full_height_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "background-full-height-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def background_rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "background-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def background_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "background-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def background_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "background-set", unsafe_value, Pointer(Void).null)
      value
    end

    def background_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "background-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def direction=(value : Gtk::TextDirection) : Gtk::TextDirection
      unsafe_value = value

      LibGObject.g_object_set(self, "direction", unsafe_value, Pointer(Void).null)
      value
    end

    def direction : Gtk::TextDirection
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "direction", pointerof(value), Pointer(Void).null)
      Gtk::TextDirection.new(value)
    end

    def editable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "editable", unsafe_value, Pointer(Void).null)
      value
    end

    def editable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "editable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def editable_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "editable-set", unsafe_value, Pointer(Void).null)
      value
    end

    def editable_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "editable-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def fallback=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "fallback", unsafe_value, Pointer(Void).null)
      value
    end

    def fallback? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "fallback", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def fallback_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "fallback-set", unsafe_value, Pointer(Void).null)
      value
    end

    def fallback_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "fallback-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "family", unsafe_value, Pointer(Void).null)
      value
    end

    def family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#family` property to nil.
    def family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#family`, but can return nil.
    def family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def family_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "family-set", unsafe_value, Pointer(Void).null)
      value
    end

    def family_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "family-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def font=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "font", unsafe_value, Pointer(Void).null)
      value
    end

    def font : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#font` property to nil.
    def font=(value : Nil) : Nil
      LibGObject.g_object_set(self, "font", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#font`, but can return nil.
    def font? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def font_desc=(value : Pango::FontDescription?) : Pango::FontDescription?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "font-desc", unsafe_value, Pointer(Void).null)
      value
    end

    def font_desc : Pango::FontDescription?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "font-desc", pointerof(value), Pointer(Void).null)
      Pango::FontDescription.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def font_features=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "font-features", unsafe_value, Pointer(Void).null)
      value
    end

    def font_features : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font-features", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#font_features` property to nil.
    def font_features=(value : Nil) : Nil
      LibGObject.g_object_set(self, "font-features", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#font_features`, but can return nil.
    def font_features? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font-features", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def font_features_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "font-features-set", unsafe_value, Pointer(Void).null)
      value
    end

    def font_features_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "font-features-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def foreground=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "foreground", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#foreground` property to nil.
    def foreground=(value : Nil) : Nil
      LibGObject.g_object_set(self, "foreground", Pointer(Void).null, Pointer(Void).null)
    end

    def foreground_rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "foreground-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def foreground_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "foreground-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def foreground_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "foreground-set", unsafe_value, Pointer(Void).null)
      value
    end

    def foreground_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "foreground-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def indent=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "indent", unsafe_value, Pointer(Void).null)
      value
    end

    def indent : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "indent", pointerof(value), Pointer(Void).null)
      value
    end

    def indent_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "indent-set", unsafe_value, Pointer(Void).null)
      value
    end

    def indent_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "indent-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def insert_hyphens=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "insert-hyphens", unsafe_value, Pointer(Void).null)
      value
    end

    def insert_hyphens? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "insert-hyphens", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def insert_hyphens_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "insert-hyphens-set", unsafe_value, Pointer(Void).null)
      value
    end

    def insert_hyphens_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "insert-hyphens-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def invisible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "invisible", unsafe_value, Pointer(Void).null)
      value
    end

    def invisible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "invisible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def invisible_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "invisible-set", unsafe_value, Pointer(Void).null)
      value
    end

    def invisible_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "invisible-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def justification=(value : Gtk::Justification) : Gtk::Justification
      unsafe_value = value

      LibGObject.g_object_set(self, "justification", unsafe_value, Pointer(Void).null)
      value
    end

    def justification : Gtk::Justification
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "justification", pointerof(value), Pointer(Void).null)
      Gtk::Justification.new(value)
    end

    def justification_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "justification-set", unsafe_value, Pointer(Void).null)
      value
    end

    def justification_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "justification-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def language=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "language", unsafe_value, Pointer(Void).null)
      value
    end

    def language : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "language", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#language` property to nil.
    def language=(value : Nil) : Nil
      LibGObject.g_object_set(self, "language", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#language`, but can return nil.
    def language? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "language", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def language_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "language-set", unsafe_value, Pointer(Void).null)
      value
    end

    def language_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "language-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def left_margin=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "left-margin", unsafe_value, Pointer(Void).null)
      value
    end

    def left_margin : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "left-margin", pointerof(value), Pointer(Void).null)
      value
    end

    def left_margin_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "left-margin-set", unsafe_value, Pointer(Void).null)
      value
    end

    def left_margin_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "left-margin-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def letter_spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "letter-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def letter_spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "letter-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def letter_spacing_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "letter-spacing-set", unsafe_value, Pointer(Void).null)
      value
    end

    def letter_spacing_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "letter-spacing-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def line_height=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "line-height", unsafe_value, Pointer(Void).null)
      value
    end

    def line_height : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "line-height", pointerof(value), Pointer(Void).null)
      value
    end

    def line_height_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "line-height-set", unsafe_value, Pointer(Void).null)
      value
    end

    def line_height_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "line-height-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def overline=(value : Pango::Overline) : Pango::Overline
      unsafe_value = value

      LibGObject.g_object_set(self, "overline", unsafe_value, Pointer(Void).null)
      value
    end

    def overline : Pango::Overline
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "overline", pointerof(value), Pointer(Void).null)
      Pango::Overline.new(value)
    end

    def overline_rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "overline-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def overline_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "overline-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def overline_rgba_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "overline-rgba-set", unsafe_value, Pointer(Void).null)
      value
    end

    def overline_rgba_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "overline-rgba-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def overline_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "overline-set", unsafe_value, Pointer(Void).null)
      value
    end

    def overline_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "overline-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def paragraph_background=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "paragraph-background", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#paragraph_background` property to nil.
    def paragraph_background=(value : Nil) : Nil
      LibGObject.g_object_set(self, "paragraph-background", Pointer(Void).null, Pointer(Void).null)
    end

    def paragraph_background_rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "paragraph-background-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def paragraph_background_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "paragraph-background-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def paragraph_background_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "paragraph-background-set", unsafe_value, Pointer(Void).null)
      value
    end

    def paragraph_background_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "paragraph-background-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def pixels_above_lines=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-above-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_above_lines : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixels-above-lines", pointerof(value), Pointer(Void).null)
      value
    end

    def pixels_above_lines_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-above-lines-set", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_above_lines_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "pixels-above-lines-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def pixels_below_lines=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-below-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_below_lines : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixels-below-lines", pointerof(value), Pointer(Void).null)
      value
    end

    def pixels_below_lines_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-below-lines-set", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_below_lines_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "pixels-below-lines-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def pixels_inside_wrap=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-inside-wrap", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_inside_wrap : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixels-inside-wrap", pointerof(value), Pointer(Void).null)
      value
    end

    def pixels_inside_wrap_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-inside-wrap-set", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_inside_wrap_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "pixels-inside-wrap-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def right_margin=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "right-margin", unsafe_value, Pointer(Void).null)
      value
    end

    def right_margin : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "right-margin", pointerof(value), Pointer(Void).null)
      value
    end

    def right_margin_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "right-margin-set", unsafe_value, Pointer(Void).null)
      value
    end

    def right_margin_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "right-margin-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def rise=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "rise", unsafe_value, Pointer(Void).null)
      value
    end

    def rise : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "rise", pointerof(value), Pointer(Void).null)
      value
    end

    def rise_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "rise-set", unsafe_value, Pointer(Void).null)
      value
    end

    def rise_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "rise-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def scale=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "scale", unsafe_value, Pointer(Void).null)
      value
    end

    def scale : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "scale", pointerof(value), Pointer(Void).null)
      value
    end

    def scale_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "scale-set", unsafe_value, Pointer(Void).null)
      value
    end

    def scale_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "scale-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sentence=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "sentence", unsafe_value, Pointer(Void).null)
      value
    end

    def sentence? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "sentence", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sentence_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "sentence-set", unsafe_value, Pointer(Void).null)
      value
    end

    def sentence_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "sentence-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_spaces=(value : Pango::ShowFlags) : Pango::ShowFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "show-spaces", unsafe_value, Pointer(Void).null)
      value
    end

    def show_spaces : Pango::ShowFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "show-spaces", pointerof(value), Pointer(Void).null)
      Pango::ShowFlags.new(value)
    end

    def show_spaces_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-spaces-set", unsafe_value, Pointer(Void).null)
      value
    end

    def show_spaces_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-spaces-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def size=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "size", unsafe_value, Pointer(Void).null)
      value
    end

    def size : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "size", pointerof(value), Pointer(Void).null)
      value
    end

    def size_points=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "size-points", unsafe_value, Pointer(Void).null)
      value
    end

    def size_points : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "size-points", pointerof(value), Pointer(Void).null)
      value
    end

    def size_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "size-set", unsafe_value, Pointer(Void).null)
      value
    end

    def size_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "size-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def stretch=(value : Pango::Stretch) : Pango::Stretch
      unsafe_value = value

      LibGObject.g_object_set(self, "stretch", unsafe_value, Pointer(Void).null)
      value
    end

    def stretch : Pango::Stretch
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "stretch", pointerof(value), Pointer(Void).null)
      Pango::Stretch.new(value)
    end

    def stretch_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "stretch-set", unsafe_value, Pointer(Void).null)
      value
    end

    def stretch_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "stretch-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def strikethrough=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "strikethrough", unsafe_value, Pointer(Void).null)
      value
    end

    def strikethrough? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "strikethrough", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def strikethrough_rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "strikethrough-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def strikethrough_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "strikethrough-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def strikethrough_rgba_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "strikethrough-rgba-set", unsafe_value, Pointer(Void).null)
      value
    end

    def strikethrough_rgba_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "strikethrough-rgba-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def strikethrough_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "strikethrough-set", unsafe_value, Pointer(Void).null)
      value
    end

    def strikethrough_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "strikethrough-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def style=(value : Pango::Style) : Pango::Style
      unsafe_value = value

      LibGObject.g_object_set(self, "style", unsafe_value, Pointer(Void).null)
      value
    end

    def style : Pango::Style
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "style", pointerof(value), Pointer(Void).null)
      Pango::Style.new(value)
    end

    def style_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "style-set", unsafe_value, Pointer(Void).null)
      value
    end

    def style_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "style-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tabs=(value : Pango::TabArray?) : Pango::TabArray?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tabs", unsafe_value, Pointer(Void).null)
      value
    end

    def tabs : Pango::TabArray?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tabs", pointerof(value), Pointer(Void).null)
      Pango::TabArray.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def tabs_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "tabs-set", unsafe_value, Pointer(Void).null)
      value
    end

    def tabs_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "tabs-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def text_transform=(value : Pango::TextTransform) : Pango::TextTransform
      unsafe_value = value

      LibGObject.g_object_set(self, "text-transform", unsafe_value, Pointer(Void).null)
      value
    end

    def text_transform : Pango::TextTransform
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "text-transform", pointerof(value), Pointer(Void).null)
      Pango::TextTransform.new(value)
    end

    def text_transform_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "text-transform-set", unsafe_value, Pointer(Void).null)
      value
    end

    def text_transform_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "text-transform-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def underline=(value : Pango::Underline) : Pango::Underline
      unsafe_value = value

      LibGObject.g_object_set(self, "underline", unsafe_value, Pointer(Void).null)
      value
    end

    def underline : Pango::Underline
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "underline", pointerof(value), Pointer(Void).null)
      Pango::Underline.new(value)
    end

    def underline_rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "underline-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def underline_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "underline-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def underline_rgba_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "underline-rgba-set", unsafe_value, Pointer(Void).null)
      value
    end

    def underline_rgba_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "underline-rgba-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def underline_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "underline-set", unsafe_value, Pointer(Void).null)
      value
    end

    def underline_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "underline-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def variant=(value : Pango::Variant) : Pango::Variant
      unsafe_value = value

      LibGObject.g_object_set(self, "variant", unsafe_value, Pointer(Void).null)
      value
    end

    def variant : Pango::Variant
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "variant", pointerof(value), Pointer(Void).null)
      Pango::Variant.new(value)
    end

    def variant_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "variant-set", unsafe_value, Pointer(Void).null)
      value
    end

    def variant_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "variant-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def weight=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "weight", unsafe_value, Pointer(Void).null)
      value
    end

    def weight : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "weight", pointerof(value), Pointer(Void).null)
      value
    end

    def weight_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "weight-set", unsafe_value, Pointer(Void).null)
      value
    end

    def weight_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "weight-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def word=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "word", unsafe_value, Pointer(Void).null)
      value
    end

    def word? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "word", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def word_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "word-set", unsafe_value, Pointer(Void).null)
      value
    end

    def word_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "word-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def wrap_mode=(value : Gtk::WrapMode) : Gtk::WrapMode
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap_mode : Gtk::WrapMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "wrap-mode", pointerof(value), Pointer(Void).null)
      Gtk::WrapMode.new(value)
    end

    def wrap_mode_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap-mode-set", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap_mode_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "wrap-mode-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(name : ::String?) : self
      # gtk_text_tag_new: (Constructor)
      # @name: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_text_tag_new(name)

      # Return value handling
      Gtk::TextTag.new(_retval, GICrystal::Transfer::Full)
    end

    def changed(size_changed : Bool) : Nil
      # gtk_text_tag_changed: (Method)
      # @size_changed:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_tag_changed(to_unsafe, size_changed)

      # Return value handling
    end

    def priority : Int32
      # gtk_text_tag_get_priority: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_tag_get_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def priority=(priority : Int32) : Nil
      # gtk_text_tag_set_priority: (Method)
      # @priority:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_tag_set_priority(to_unsafe, priority)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
