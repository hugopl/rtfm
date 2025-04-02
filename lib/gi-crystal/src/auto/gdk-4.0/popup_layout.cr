module Gdk
  class PopupLayout
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(PopupLayout.g_type, pointer)
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
      LibGObject.g_boxed_free(PopupLayout.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_popup_layout_get_type
    end

    def self.new(anchor_rect : Gdk::Rectangle, rect_anchor : Gdk::Gravity, surface_anchor : Gdk::Gravity) : self
      # gdk_popup_layout_new: (Constructor)
      # @anchor_rect:
      # @rect_anchor:
      # @surface_anchor:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_popup_layout_new(anchor_rect, rect_anchor, surface_anchor)

      # Return value handling
      Gdk::PopupLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Gdk::PopupLayout
      # gdk_popup_layout_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_popup_layout_copy(to_unsafe)

      # Return value handling
      Gdk::PopupLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(other : Gdk::PopupLayout) : Bool
      # gdk_popup_layout_equal: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_layout_equal(to_unsafe, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def anchor_hints : Gdk::AnchorHints
      # gdk_popup_layout_get_anchor_hints: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_layout_get_anchor_hints(to_unsafe)

      # Return value handling
      Gdk::AnchorHints.new(_retval)
    end

    def anchor_rect : Gdk::Rectangle
      # gdk_popup_layout_get_anchor_rect: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_layout_get_anchor_rect(to_unsafe)

      # Return value handling
      Gdk::Rectangle.new(_retval, GICrystal::Transfer::None)
    end

    def offset(dx : Int32, dy : Int32) : Nil
      # gdk_popup_layout_get_offset: (Method)
      # @dx: (out) (transfer full)
      # @dy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_get_offset(to_unsafe, dx, dy)

      # Return value handling
    end

    def rect_anchor : Gdk::Gravity
      # gdk_popup_layout_get_rect_anchor: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_layout_get_rect_anchor(to_unsafe)

      # Return value handling
      Gdk::Gravity.new(_retval)
    end

    def shadow_width(left : Int32, right : Int32, top : Int32, bottom : Int32) : Nil
      # gdk_popup_layout_get_shadow_width: (Method)
      # @left: (out) (transfer full)
      # @right: (out) (transfer full)
      # @top: (out) (transfer full)
      # @bottom: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_get_shadow_width(to_unsafe, left, right, top, bottom)

      # Return value handling
    end

    def surface_anchor : Gdk::Gravity
      # gdk_popup_layout_get_surface_anchor: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_popup_layout_get_surface_anchor(to_unsafe)

      # Return value handling
      Gdk::Gravity.new(_retval)
    end

    def ref : Gdk::PopupLayout
      # gdk_popup_layout_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_popup_layout_ref(to_unsafe)

      # Return value handling
      Gdk::PopupLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def anchor_hints=(anchor_hints : Gdk::AnchorHints) : Nil
      # gdk_popup_layout_set_anchor_hints: (Method)
      # @anchor_hints:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_set_anchor_hints(to_unsafe, anchor_hints)

      # Return value handling
    end

    def anchor_rect=(anchor_rect : Gdk::Rectangle) : Nil
      # gdk_popup_layout_set_anchor_rect: (Method)
      # @anchor_rect:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_set_anchor_rect(to_unsafe, anchor_rect)

      # Return value handling
    end

    def set_offset(dx : Int32, dy : Int32) : Nil
      # gdk_popup_layout_set_offset: (Method)
      # @dx:
      # @dy:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_set_offset(to_unsafe, dx, dy)

      # Return value handling
    end

    def rect_anchor=(anchor : Gdk::Gravity) : Nil
      # gdk_popup_layout_set_rect_anchor: (Method)
      # @anchor:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_set_rect_anchor(to_unsafe, anchor)

      # Return value handling
    end

    def set_shadow_width(left : Int32, right : Int32, top : Int32, bottom : Int32) : Nil
      # gdk_popup_layout_set_shadow_width: (Method)
      # @left:
      # @right:
      # @top:
      # @bottom:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_set_shadow_width(to_unsafe, left, right, top, bottom)

      # Return value handling
    end

    def surface_anchor=(anchor : Gdk::Gravity) : Nil
      # gdk_popup_layout_set_surface_anchor: (Method)
      # @anchor:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_set_surface_anchor(to_unsafe, anchor)

      # Return value handling
    end

    def unref : Nil
      # gdk_popup_layout_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_popup_layout_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
