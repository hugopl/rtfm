require "./draw_context"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class GLContext < DrawContext
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(GLContext, g_object_get_qdata)

    # Initialize a new `GLContext`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    def initialize(*, allowed_apis : Gdk::GLAPI? = nil, api : Gdk::GLAPI? = nil, display : Gdk::Display? = nil, shared_context : Gdk::GLContext? = nil, surface : Gdk::Surface? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !allowed_apis.nil?
        (_names.to_unsafe + _n).value = "allowed-apis".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allowed_apis)
        _n += 1
      end
      if !api.nil?
        (_names.to_unsafe + _n).value = "api".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, api)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !shared_context.nil?
        (_names.to_unsafe + _n).value = "shared-context".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, shared_context)
        _n += 1
      end
      if !surface.nil?
        (_names.to_unsafe + _n).value = "surface".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, surface)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_gl_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::GLContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allowed_apis=(value : Gdk::GLAPI) : Gdk::GLAPI
      unsafe_value = value

      LibGObject.g_object_set(self, "allowed-apis", unsafe_value, Pointer(Void).null)
      value
    end

    def allowed_apis : Gdk::GLAPI
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "allowed-apis", pointerof(value), Pointer(Void).null)
      Gdk::GLAPI.new(value)
    end

    def api : Gdk::GLAPI
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "api", pointerof(value), Pointer(Void).null)
      Gdk::GLAPI.new(value)
    end

    def shared_context=(value : Gdk::GLContext?) : Gdk::GLContext?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "shared-context", unsafe_value, Pointer(Void).null)
      value
    end

    def shared_context : Gdk::GLContext?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "shared-context", pointerof(value), Pointer(Void).null)
      Gdk::GLContext.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.clear_current : Nil
      # gdk_gl_context_clear_current: (None)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_clear_current

      # Return value handling
    end

    def self.current : Gdk::GLContext?
      # gdk_gl_context_get_current: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_context_get_current

      # Return value handling
      Gdk::GLContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def allowed_apis : Gdk::GLAPI
      # gdk_gl_context_get_allowed_apis: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_context_get_allowed_apis(to_unsafe)

      # Return value handling
      Gdk::GLAPI.new(_retval)
    end

    def api : Gdk::GLAPI
      # gdk_gl_context_get_api: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_context_get_api(to_unsafe)

      # Return value handling
      Gdk::GLAPI.new(_retval)
    end

    def debug_enabled : Bool
      # gdk_gl_context_get_debug_enabled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_context_get_debug_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def display : Gdk::Display?
      # gdk_gl_context_get_display: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_context_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def forward_compatible : Bool
      # gdk_gl_context_get_forward_compatible: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_context_get_forward_compatible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def required_version(major : Int32?, minor : Int32?) : Nil
      # gdk_gl_context_get_required_version: (Method)
      # @major: (out) (transfer full) (nullable)
      # @minor: (out) (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      major = if major.nil?
                Int32.null
              else
                major.to_unsafe
              end
      # Generator::NullableArrayPlan
      minor = if minor.nil?
                Int32.null
              else
                minor.to_unsafe
              end

      # C call
      LibGdk.gdk_gl_context_get_required_version(to_unsafe, major, minor)

      # Return value handling
    end

    @[Deprecated]
    def shared_context : Gdk::GLContext?
      # gdk_gl_context_get_shared_context: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_context_get_shared_context(to_unsafe)

      # Return value handling
      Gdk::GLContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def surface : Gdk::Surface?
      # gdk_gl_context_get_surface: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_context_get_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def use_es : Bool
      # gdk_gl_context_get_use_es: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_context_get_use_es(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def version(major : Int32, minor : Int32) : Nil
      # gdk_gl_context_get_version: (Method)
      # @major: (out) (transfer full)
      # @minor: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_get_version(to_unsafe, major, minor)

      # Return value handling
    end

    def is_legacy : Bool
      # gdk_gl_context_is_legacy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_context_is_legacy(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_shared(other : Gdk::GLContext) : Bool
      # gdk_gl_context_is_shared: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_context_is_shared(to_unsafe, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_current : Nil
      # gdk_gl_context_make_current: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_make_current(to_unsafe)

      # Return value handling
    end

    def realize : Bool
      # gdk_gl_context_realize: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_gl_context_realize(to_unsafe, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allowed_apis=(apis : Gdk::GLAPI) : Nil
      # gdk_gl_context_set_allowed_apis: (Method | Setter)
      # @apis:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_set_allowed_apis(to_unsafe, apis)

      # Return value handling
    end

    def debug_enabled=(enabled : Bool) : Nil
      # gdk_gl_context_set_debug_enabled: (Method)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_set_debug_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def forward_compatible=(compatible : Bool) : Nil
      # gdk_gl_context_set_forward_compatible: (Method)
      # @compatible:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_set_forward_compatible(to_unsafe, compatible)

      # Return value handling
    end

    def set_required_version(major : Int32, minor : Int32) : Nil
      # gdk_gl_context_set_required_version: (Method)
      # @major:
      # @minor:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_set_required_version(to_unsafe, major, minor)

      # Return value handling
    end

    def use_es=(use_es : Int32) : Nil
      # gdk_gl_context_set_use_es: (Method)
      # @use_es:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_context_set_use_es(to_unsafe, use_es)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
