module WebKit
  class NavigationAction
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(NavigationAction.g_type, pointer)
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
      LibGObject.g_boxed_free(NavigationAction.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_navigation_action_get_type
    end

    def copy : WebKit::NavigationAction
      # webkit_navigation_action_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_navigation_action_copy(to_unsafe)

      # Return value handling
      WebKit::NavigationAction.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # webkit_navigation_action_free: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_navigation_action_free(to_unsafe)

      # Return value handling
    end

    def frame_name : ::String?
      # webkit_navigation_action_get_frame_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_navigation_action_get_frame_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def modifiers : UInt32
      # webkit_navigation_action_get_modifiers: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_navigation_action_get_modifiers(to_unsafe)

      # Return value handling
      _retval
    end

    def mouse_button : UInt32
      # webkit_navigation_action_get_mouse_button: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_navigation_action_get_mouse_button(to_unsafe)

      # Return value handling
      _retval
    end

    def navigation_type : WebKit::NavigationType
      # webkit_navigation_action_get_navigation_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_navigation_action_get_navigation_type(to_unsafe)

      # Return value handling
      WebKit::NavigationType.new(_retval)
    end

    def request : WebKit::URIRequest
      # webkit_navigation_action_get_request: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_navigation_action_get_request(to_unsafe)

      # Return value handling
      WebKit::URIRequest.new(_retval, GICrystal::Transfer::None)
    end

    def is_redirect : Bool
      # webkit_navigation_action_is_redirect: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_navigation_action_is_redirect(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_user_gesture : Bool
      # webkit_navigation_action_is_user_gesture: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_navigation_action_is_user_gesture(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
