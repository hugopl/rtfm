module WebKit
  class OptionMenuItem
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(OptionMenuItem.g_type, pointer)
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
      LibGObject.g_boxed_free(OptionMenuItem.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_option_menu_item_get_type
    end

    def copy : WebKit::OptionMenuItem
      # webkit_option_menu_item_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_option_menu_item_copy(to_unsafe)

      # Return value handling
      WebKit::OptionMenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # webkit_option_menu_item_free: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_option_menu_item_free(to_unsafe)

      # Return value handling
    end

    def label : ::String
      # webkit_option_menu_item_get_label: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_item_get_label(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def tooltip : ::String
      # webkit_option_menu_item_get_tooltip: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_item_get_tooltip(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def is_enabled : Bool
      # webkit_option_menu_item_is_enabled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_item_is_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_group_child : Bool
      # webkit_option_menu_item_is_group_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_item_is_group_child(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_group_label : Bool
      # webkit_option_menu_item_is_group_label: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_item_is_group_label(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_selected : Bool
      # webkit_option_menu_item_is_selected: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_option_menu_item_is_selected(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
