module Gtk
  class TreeRowReference
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(TreeRowReference.g_type, pointer)
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
      LibGObject.g_boxed_free(TreeRowReference.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_tree_row_reference_get_type
    end

    @[Deprecated]
    def self.new(model : Gtk::TreeModel, path : Gtk::TreePath) : self?
      # gtk_tree_row_reference_new: (Constructor)
      # @model:
      # @path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_row_reference_new(model, path)

      # Return value handling
      Gtk::TreeRowReference.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def self.new_proxy(proxy : GObject::Object, model : Gtk::TreeModel, path : Gtk::TreePath) : self?
      # gtk_tree_row_reference_new_proxy: (Constructor)
      # @proxy:
      # @model:
      # @path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_row_reference_new_proxy(proxy, model, path)

      # Return value handling
      Gtk::TreeRowReference.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def copy : Gtk::TreeRowReference
      # gtk_tree_row_reference_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_tree_row_reference_copy(to_unsafe)

      # Return value handling
      Gtk::TreeRowReference.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def free : Nil
      # gtk_tree_row_reference_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_row_reference_free(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def model : Gtk::TreeModel
      # gtk_tree_row_reference_get_model: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_row_reference_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def path : Gtk::TreePath?
      # gtk_tree_row_reference_get_path: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_row_reference_get_path(to_unsafe)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def valid : Bool
      # gtk_tree_row_reference_valid: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_row_reference_valid(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def self.deleted(proxy : GObject::Object, path : Gtk::TreePath) : Nil
      # gtk_tree_row_reference_deleted: (None)
      # @proxy:
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_row_reference_deleted(proxy, path)

      # Return value handling
    end

    @[Deprecated]
    def self.inserted(proxy : GObject::Object, path : Gtk::TreePath) : Nil
      # gtk_tree_row_reference_inserted: (None)
      # @proxy:
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_row_reference_inserted(proxy, path)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
