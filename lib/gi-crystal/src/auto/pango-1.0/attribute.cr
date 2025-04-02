module Pango
  class Attribute
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = pointer
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

    def start_index : UInt32
      value = to_unsafe.as(Pointer(LibPango::Attribute)).value.start_index
      value
    end

    def start_index=(value : UInt32)
      _var = (to_unsafe + 8).as(Pointer(UInt32)).value = value
      value
    end

    def end_index : UInt32
      value = to_unsafe.as(Pointer(LibPango::Attribute)).value.end_index
      value
    end

    def end_index=(value : UInt32)
      _var = (to_unsafe + 12).as(Pointer(UInt32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_attribute_get_type
    end

    def as_color : Pango::AttrColor?
      # pango_attribute_as_color: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_color(to_unsafe)

      # Return value handling
      Pango::AttrColor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_float : Pango::AttrFloat?
      # pango_attribute_as_float: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_float(to_unsafe)

      # Return value handling
      Pango::AttrFloat.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_font_desc : Pango::AttrFontDesc?
      # pango_attribute_as_font_desc: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_font_desc(to_unsafe)

      # Return value handling
      Pango::AttrFontDesc.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_font_features : Pango::AttrFontFeatures?
      # pango_attribute_as_font_features: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_font_features(to_unsafe)

      # Return value handling
      Pango::AttrFontFeatures.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_int : Pango::AttrInt?
      # pango_attribute_as_int: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_int(to_unsafe)

      # Return value handling
      Pango::AttrInt.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_language : Pango::AttrLanguage?
      # pango_attribute_as_language: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_language(to_unsafe)

      # Return value handling
      Pango::AttrLanguage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_shape : Pango::AttrShape?
      # pango_attribute_as_shape: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_shape(to_unsafe)

      # Return value handling
      Pango::AttrShape.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_size : Pango::AttrSize?
      # pango_attribute_as_size: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_size(to_unsafe)

      # Return value handling
      Pango::AttrSize.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def as_string : Pango::AttrString?
      # pango_attribute_as_string: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attribute_as_string(to_unsafe)

      # Return value handling
      Pango::AttrString.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def copy : Pango::Attribute
      # pango_attribute_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attribute_copy(to_unsafe)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(attr2 : Pango::Attribute) : Bool
      # pango_attribute_equal: (Method)
      # @attr2:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_attribute_equal(to_unsafe, attr2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
