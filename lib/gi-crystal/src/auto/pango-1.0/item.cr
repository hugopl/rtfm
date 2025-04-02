module Pango
  class Item
    @data : LibPango::Item

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::Item)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(offset : Int32? = nil, length : Int32? = nil, num_chars : Int32? = nil, analysis : Pango::Analysis? = nil)
      _instance = allocate
      _instance.offset = offset unless offset.nil?
      _instance.length = length unless length.nil?
      _instance.num_chars = num_chars unless num_chars.nil?
      _instance.analysis = analysis unless analysis.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::Item)).zero?
    end

    def offset : Int32
      value = to_unsafe.as(Pointer(LibPango::Item)).value.offset
      value
    end

    def offset=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def length : Int32
      value = to_unsafe.as(Pointer(LibPango::Item)).value.length
      value
    end

    def length=(value : Int32)
      _var = (to_unsafe + 4).as(Pointer(Int32)).value = value
      value
    end

    def num_chars : Int32
      value = to_unsafe.as(Pointer(LibPango::Item)).value.num_chars
      value
    end

    def num_chars=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def analysis : Pango::Analysis
      value = to_unsafe.as(Pointer(LibPango::Item)).value.analysis
      Pango::Analysis.new(value, GICrystal::Transfer::None)
    end

    def analysis=(value : Pango::Analysis)
      _var = (to_unsafe + 16).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::Item))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_item_get_type
    end

    def apply_attrs(iter : Pango::AttrIterator) : Nil
      # pango_item_apply_attrs: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      LibPango.pango_item_apply_attrs(to_unsafe, iter)

      # Return value handling
    end

    def copy : Pango::Item?
      # pango_item_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_item_copy(to_unsafe)

      # Return value handling
      Pango::Item.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def free : Nil
      # pango_item_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_item_free(to_unsafe)

      # Return value handling
    end

    def char_offset : Int32
      # pango_item_get_char_offset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_item_get_char_offset(to_unsafe)

      # Return value handling
      _retval
    end

    def split(split_index : Int32, split_offset : Int32) : Pango::Item
      # pango_item_split: (Method)
      # @split_index:
      # @split_offset:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_item_split(to_unsafe, split_index, split_offset)

      # Return value handling
      Pango::Item.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
