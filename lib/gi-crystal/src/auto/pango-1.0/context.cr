require "../g_object-2.0/object"

module Pango
  @[GICrystal::GeneratedWrapper]
  class Context < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::ContextClass), class_init,
        sizeof(LibPango::Context), instance_init, 0)
    end

    GICrystal.declare_new_method(Context, g_object_get_qdata)

    # Initialize a new `Context`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibPango.pango_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::Context.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # pango_context_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_context_new

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::Full)
    end

    def changed : Nil
      # pango_context_changed: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_context_changed(to_unsafe)

      # Return value handling
    end

    def base_dir : Pango::Direction
      # pango_context_get_base_dir: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_context_get_base_dir(to_unsafe)

      # Return value handling
      Pango::Direction.new(_retval)
    end

    def base_gravity : Pango::Gravity
      # pango_context_get_base_gravity: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_context_get_base_gravity(to_unsafe)

      # Return value handling
      Pango::Gravity.new(_retval)
    end

    def font_description : Pango::FontDescription?
      # pango_context_get_font_description: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_context_get_font_description(to_unsafe)

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def font_map : Pango::FontMap?
      # pango_context_get_font_map: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_context_get_font_map(to_unsafe)

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def gravity : Pango::Gravity
      # pango_context_get_gravity: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_context_get_gravity(to_unsafe)

      # Return value handling
      Pango::Gravity.new(_retval)
    end

    def gravity_hint : Pango::GravityHint
      # pango_context_get_gravity_hint: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_context_get_gravity_hint(to_unsafe)

      # Return value handling
      Pango::GravityHint.new(_retval)
    end

    def language : Pango::Language
      # pango_context_get_language: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_context_get_language(to_unsafe)

      # Return value handling
      Pango::Language.new(_retval, GICrystal::Transfer::None)
    end

    def matrix : Pango::Matrix?
      # pango_context_get_matrix: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_context_get_matrix(to_unsafe)

      # Return value handling
      Pango::Matrix.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def metrics(desc : Pango::FontDescription?, language : Pango::Language?) : Pango::FontMetrics
      # pango_context_get_metrics: (Method)
      # @desc: (nullable)
      # @language: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      desc = if desc.nil?
               Pointer(Void).null
             else
               desc.to_unsafe
             end
      # Generator::NullableArrayPlan
      language = if language.nil?
                   Pointer(Void).null
                 else
                   language.to_unsafe
                 end

      # C call
      _retval = LibPango.pango_context_get_metrics(to_unsafe, desc, language)

      # Return value handling
      Pango::FontMetrics.new(_retval, GICrystal::Transfer::Full)
    end

    def round_glyph_positions : Bool
      # pango_context_get_round_glyph_positions: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_context_get_round_glyph_positions(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def serial : UInt32
      # pango_context_get_serial: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_context_get_serial(to_unsafe)

      # Return value handling
      _retval
    end

    def list_families(families : Enumerable(Pango::FontFamily)) : Nil
      # pango_context_list_families: (Method)
      # @families: (out) (transfer container) (array length=n_families element-type Interface)
      # @n_families: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_families = families.size
      # Generator::ArrayArgPlan
      families = families.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibPango::FontFamily)))

      # C call
      LibPango.pango_context_list_families(to_unsafe, families, n_families)

      # Return value handling
    end

    def list_families(*families : Pango::FontFamily)
      list_families(families)
    end

    def load_font(desc : Pango::FontDescription) : Pango::Font?
      # pango_context_load_font: (Method)
      # @desc:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_context_load_font(to_unsafe, desc)

      # Return value handling
      Pango::Font.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def load_fontset(desc : Pango::FontDescription, language : Pango::Language) : Pango::Fontset?
      # pango_context_load_fontset: (Method)
      # @desc:
      # @language:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_context_load_fontset(to_unsafe, desc, language)

      # Return value handling
      Pango::Fontset.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def base_dir=(direction : Pango::Direction) : Nil
      # pango_context_set_base_dir: (Method)
      # @direction:
      # Returns: (transfer none)

      # C call
      LibPango.pango_context_set_base_dir(to_unsafe, direction)

      # Return value handling
    end

    def base_gravity=(gravity : Pango::Gravity) : Nil
      # pango_context_set_base_gravity: (Method)
      # @gravity:
      # Returns: (transfer none)

      # C call
      LibPango.pango_context_set_base_gravity(to_unsafe, gravity)

      # Return value handling
    end

    def font_description=(desc : Pango::FontDescription?) : Nil
      # pango_context_set_font_description: (Method)
      # @desc: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      desc = if desc.nil?
               Pointer(Void).null
             else
               desc.to_unsafe
             end

      # C call
      LibPango.pango_context_set_font_description(to_unsafe, desc)

      # Return value handling
    end

    def font_map=(font_map : Pango::FontMap?) : Nil
      # pango_context_set_font_map: (Method)
      # @font_map: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      font_map = if font_map.nil?
                   Pointer(Void).null
                 else
                   font_map.to_unsafe
                 end

      # C call
      LibPango.pango_context_set_font_map(to_unsafe, font_map)

      # Return value handling
    end

    def gravity_hint=(hint : Pango::GravityHint) : Nil
      # pango_context_set_gravity_hint: (Method)
      # @hint:
      # Returns: (transfer none)

      # C call
      LibPango.pango_context_set_gravity_hint(to_unsafe, hint)

      # Return value handling
    end

    def language=(language : Pango::Language?) : Nil
      # pango_context_set_language: (Method)
      # @language: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      language = if language.nil?
                   Pointer(Void).null
                 else
                   language.to_unsafe
                 end

      # C call
      LibPango.pango_context_set_language(to_unsafe, language)

      # Return value handling
    end

    def matrix=(matrix : Pango::Matrix?) : Nil
      # pango_context_set_matrix: (Method)
      # @matrix: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      matrix = if matrix.nil?
                 Pointer(Void).null
               else
                 matrix.to_unsafe
               end

      # C call
      LibPango.pango_context_set_matrix(to_unsafe, matrix)

      # Return value handling
    end

    def round_glyph_positions=(round_positions : Bool) : Nil
      # pango_context_set_round_glyph_positions: (Method)
      # @round_positions:
      # Returns: (transfer none)

      # C call
      LibPango.pango_context_set_round_glyph_positions(to_unsafe, round_positions)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
