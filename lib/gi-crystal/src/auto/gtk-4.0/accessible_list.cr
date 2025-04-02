module Gtk
  class AccessibleList
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(AccessibleList.g_type, pointer)
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
      LibGObject.g_boxed_free(AccessibleList.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_list_get_type
    end

    def self.new_from_array(accessibles : Enumerable(Gtk::Accessible)) : self
      # gtk_accessible_list_new_from_array: (Constructor)
      # @accessibles: (array length=n_accessibles element-type Interface)
      # @n_accessibles:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_accessibles = accessibles.size
      # Generator::ArrayArgPlan
      accessibles = accessibles.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGtk::Accessible)))

      # C call
      _retval = LibGtk.gtk_accessible_list_new_from_array(accessibles, n_accessibles)

      # Return value handling
      Gtk::AccessibleList.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_array(*accessibles : Gtk::Accessible)
      self.new_from_array(accessibles)
    end

    def self.new_from_list(list : GLib::List) : self
      # gtk_accessible_list_new_from_list: (Constructor)
      # @list:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_accessible_list_new_from_list(list)

      # Return value handling
      Gtk::AccessibleList.new(_retval, GICrystal::Transfer::Full)
    end

    def objects : GLib::List
      # gtk_accessible_list_get_objects: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_accessible_list_get_objects(to_unsafe)

      # Return value handling
      GLib::List(Gtk::Accessible).new(_retval, GICrystal::Transfer::Container)
    end

    def to_unsafe
      @pointer
    end
  end
end
