module Gtk
  class TreePath
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(TreePath.g_type, pointer)
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
      LibGObject.g_boxed_free(TreePath.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_tree_path_get_type
    end

    @[Deprecated]
    def self.new_from_indices(indices : Enumerable(Int32)) : self
      # gtk_tree_path_new_from_indicesv: (Constructor)
      # @indices: (array length=length element-type Int32)
      # @length:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      length = indices.size
      # Generator::ArrayArgPlan
      indices = indices.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      _retval = LibGtk.gtk_tree_path_new_from_indicesv(indices, length)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_indices(*indices : Int32)
      self.new_from_indices(indices)
    end

    @[Deprecated]
    def self.new_from_string(path : ::String) : self?
      # gtk_tree_path_new_from_string: (Constructor)
      # @path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_path_new_from_string(path)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def append_index(index_ : Int32) : Nil
      # gtk_tree_path_append_index: (Method)
      # @index_:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_path_append_index(to_unsafe, index_)

      # Return value handling
    end

    @[Deprecated]
    def compare(b : Gtk::TreePath) : Int32
      # gtk_tree_path_compare: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_path_compare(to_unsafe, b)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def copy : Gtk::TreePath
      # gtk_tree_path_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_tree_path_copy(to_unsafe)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def down : Nil
      # gtk_tree_path_down: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_path_down(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def free : Nil
      # gtk_tree_path_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_path_free(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def depth : Int32
      # gtk_tree_path_get_depth: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_path_get_depth(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def indices : Enumerable(Int32)?
      # gtk_tree_path_get_indices_with_depth: (Method)
      # @depth: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable) (array length=depth element-type Int32)

      # Generator::OutArgUsedInReturnPlan
      depth = 0
      # C call
      _retval = LibGtk.gtk_tree_path_get_indices_with_depth(to_unsafe, pointerof(depth))

      # Return value handling
      GICrystal.transfer_array(_retval, depth, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def is_ancestor(descendant : Gtk::TreePath) : Bool
      # gtk_tree_path_is_ancestor: (Method)
      # @descendant:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_path_is_ancestor(to_unsafe, descendant)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def is_descendant(ancestor : Gtk::TreePath) : Bool
      # gtk_tree_path_is_descendant: (Method)
      # @ancestor:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_path_is_descendant(to_unsafe, ancestor)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def next : Nil
      # gtk_tree_path_next: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_path_next(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def prepend_index(index_ : Int32) : Nil
      # gtk_tree_path_prepend_index: (Method)
      # @index_:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_path_prepend_index(to_unsafe, index_)

      # Return value handling
    end

    @[Deprecated]
    def prev : Bool
      # gtk_tree_path_prev: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_path_prev(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def to_string : ::String?
      # gtk_tree_path_to_string: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_path_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    @[Deprecated]
    def up : Bool
      # gtk_tree_path_up: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_path_up(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
