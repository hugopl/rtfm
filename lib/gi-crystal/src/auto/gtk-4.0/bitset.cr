module Gtk
  class Bitset
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Bitset.g_type, pointer)
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
      LibGObject.g_boxed_free(Bitset.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_bitset_get_type
    end

    def self.new_range(start : UInt32, n_items : UInt32) : self
      # gtk_bitset_new_range: (Constructor)
      # @start:
      # @n_items:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_bitset_new_range(start, n_items)

      # Return value handling
      Gtk::Bitset.new(_retval, GICrystal::Transfer::Full)
    end

    def add(value : UInt32) : Bool
      # gtk_bitset_add: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_add(to_unsafe, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_range(start : UInt32, n_items : UInt32) : Nil
      # gtk_bitset_add_range: (Method)
      # @start:
      # @n_items:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_add_range(to_unsafe, start, n_items)

      # Return value handling
    end

    def add_range_closed(first : UInt32, last : UInt32) : Nil
      # gtk_bitset_add_range_closed: (Method)
      # @first:
      # @last:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_add_range_closed(to_unsafe, first, last)

      # Return value handling
    end

    def add_rectangle(start : UInt32, width : UInt32, height : UInt32, stride : UInt32) : Nil
      # gtk_bitset_add_rectangle: (Method)
      # @start:
      # @width:
      # @height:
      # @stride:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_add_rectangle(to_unsafe, start, width, height, stride)

      # Return value handling
    end

    def contains(value : UInt32) : Bool
      # gtk_bitset_contains: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_contains(to_unsafe, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def copy : Gtk::Bitset
      # gtk_bitset_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_bitset_copy(to_unsafe)

      # Return value handling
      Gtk::Bitset.new(_retval, GICrystal::Transfer::Full)
    end

    def difference(other : Gtk::Bitset) : Nil
      # gtk_bitset_difference: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_difference(to_unsafe, other)

      # Return value handling
    end

    def equals(other : Gtk::Bitset) : Bool
      # gtk_bitset_equals: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_equals(to_unsafe, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def maximum : UInt32
      # gtk_bitset_get_maximum: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_get_maximum(to_unsafe)

      # Return value handling
      _retval
    end

    def minimum : UInt32
      # gtk_bitset_get_minimum: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_get_minimum(to_unsafe)

      # Return value handling
      _retval
    end

    def nth(nth : UInt32) : UInt32
      # gtk_bitset_get_nth: (Method)
      # @nth:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_get_nth(to_unsafe, nth)

      # Return value handling
      _retval
    end

    def size : UInt64
      # gtk_bitset_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def size_in_range(first : UInt32, last : UInt32) : UInt64
      # gtk_bitset_get_size_in_range: (Method)
      # @first:
      # @last:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_get_size_in_range(to_unsafe, first, last)

      # Return value handling
      _retval
    end

    def intersect(other : Gtk::Bitset) : Nil
      # gtk_bitset_intersect: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_intersect(to_unsafe, other)

      # Return value handling
    end

    def is_empty : Bool
      # gtk_bitset_is_empty: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_is_empty(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Gtk::Bitset
      # gtk_bitset_ref: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_ref(to_unsafe)

      # Return value handling
      Gtk::Bitset.new(_retval, GICrystal::Transfer::None)
    end

    def remove(value : UInt32) : Bool
      # gtk_bitset_remove: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_remove(to_unsafe, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove_all : Nil
      # gtk_bitset_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_remove_all(to_unsafe)

      # Return value handling
    end

    def remove_range(start : UInt32, n_items : UInt32) : Nil
      # gtk_bitset_remove_range: (Method)
      # @start:
      # @n_items:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_remove_range(to_unsafe, start, n_items)

      # Return value handling
    end

    def remove_range_closed(first : UInt32, last : UInt32) : Nil
      # gtk_bitset_remove_range_closed: (Method)
      # @first:
      # @last:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_remove_range_closed(to_unsafe, first, last)

      # Return value handling
    end

    def remove_rectangle(start : UInt32, width : UInt32, height : UInt32, stride : UInt32) : Nil
      # gtk_bitset_remove_rectangle: (Method)
      # @start:
      # @width:
      # @height:
      # @stride:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_remove_rectangle(to_unsafe, start, width, height, stride)

      # Return value handling
    end

    def shift_left(amount : UInt32) : Nil
      # gtk_bitset_shift_left: (Method)
      # @amount:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_shift_left(to_unsafe, amount)

      # Return value handling
    end

    def shift_right(amount : UInt32) : Nil
      # gtk_bitset_shift_right: (Method)
      # @amount:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_shift_right(to_unsafe, amount)

      # Return value handling
    end

    def splice(position : UInt32, removed : UInt32, added : UInt32) : Nil
      # gtk_bitset_splice: (Method)
      # @position:
      # @removed:
      # @added:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_splice(to_unsafe, position, removed, added)

      # Return value handling
    end

    def subtract(other : Gtk::Bitset) : Nil
      # gtk_bitset_subtract: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_subtract(to_unsafe, other)

      # Return value handling
    end

    def union(other : Gtk::Bitset) : Nil
      # gtk_bitset_union: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_union(to_unsafe, other)

      # Return value handling
    end

    def unref : Nil
      # gtk_bitset_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bitset_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
