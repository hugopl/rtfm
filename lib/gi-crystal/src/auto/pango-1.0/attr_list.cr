module Pango
  class AttrList
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(AttrList.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(AttrList.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_attr_list_get_type
    end

    def change(attr : Pango::Attribute) : Nil
      # pango_attr_list_change: (Method)
      # @attr: (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_attr_list_change(to_unsafe, attr)

      # Return value handling
    end

    def copy : Pango::AttrList?
      # pango_attr_list_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_attr_list_copy(to_unsafe)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def equal(other_list : Pango::AttrList) : Bool
      # pango_attr_list_equal: (Method)
      # @other_list:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_attr_list_equal(to_unsafe, other_list)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def filter(func : Pango::AttrFilterFunc, data : Pointer(Void)?) : Pango::AttrList?
      # pango_attr_list_filter: (Method)
      # @func:
      # @data: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      _retval = LibPango.pango_attr_list_filter(to_unsafe, func, data)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def attributes : GLib::SList
      # pango_attr_list_get_attributes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_list_get_attributes(to_unsafe)

      # Return value handling
      GLib::SList(Pango::Attribute).new(_retval, GICrystal::Transfer::Full)
    end

    def iterator : Pango::AttrIterator
      # pango_attr_list_get_iterator: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_list_get_iterator(to_unsafe)

      # Return value handling
      Pango::AttrIterator.new(_retval, GICrystal::Transfer::Full)
    end

    def insert(attr : Pango::Attribute) : Nil
      # pango_attr_list_insert: (Method)
      # @attr: (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_attr_list_insert(to_unsafe, attr)

      # Return value handling
    end

    def insert_before(attr : Pango::Attribute) : Nil
      # pango_attr_list_insert_before: (Method)
      # @attr: (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_attr_list_insert_before(to_unsafe, attr)

      # Return value handling
    end

    def splice(other : Pango::AttrList, pos : Int32, len : Int32) : Nil
      # pango_attr_list_splice: (Method)
      # @other:
      # @pos:
      # @len:
      # Returns: (transfer none)

      # C call
      LibPango.pango_attr_list_splice(to_unsafe, other, pos, len)

      # Return value handling
    end

    def to_string : ::String
      # pango_attr_list_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_list_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def update(pos : Int32, remove : Int32, add : Int32) : Nil
      # pango_attr_list_update: (Method)
      # @pos:
      # @remove:
      # @add:
      # Returns: (transfer none)

      # C call
      LibPango.pango_attr_list_update(to_unsafe, pos, remove, add)

      # Return value handling
    end

    def self.from_string(text : ::String) : Pango::AttrList?
      # pango_attr_list_from_string: (None)
      # @text:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_attr_list_from_string(text)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
