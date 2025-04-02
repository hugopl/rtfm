require "../g_object-2.0/object"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class Renderer < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGsk::RendererClass), class_init,
        sizeof(LibGsk::Renderer), instance_init, 0)
    end

    GICrystal.declare_new_method(Renderer, g_object_get_qdata)

    # Initialize a new `Renderer`.
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

    def initialize(*, realized : Bool? = nil, surface : Gdk::Surface? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !realized.nil?
        (_names.to_unsafe + _n).value = "realized".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, realized)
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
      @@g_type ||= LibGsk.gsk_renderer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::Renderer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def realized? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "realized", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def surface : Gdk::Surface?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "surface", pointerof(value), Pointer(Void).null)
      Gdk::Surface.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new_for_surface(surface : Gdk::Surface) : self?
      # gsk_renderer_new_for_surface: (Constructor)
      # @surface:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_renderer_new_for_surface(surface)

      # Return value handling
      Gsk::Renderer.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def surface : Gdk::Surface?
      # gsk_renderer_get_surface: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGsk.gsk_renderer_get_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def is_realized? : Bool
      # gsk_renderer_is_realized: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_renderer_is_realized(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def realize(surface : Gdk::Surface?) : Bool
      # gsk_renderer_realize: (Method | Throws)
      # @surface: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      surface = if surface.nil?
                  Pointer(Void).null
                else
                  surface.to_unsafe
                end

      # C call
      _retval = LibGsk.gsk_renderer_realize(to_unsafe, surface, pointerof(_error))

      # Error check
      Gsk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def realize_for_display(display : Gdk::Display) : Bool
      # gsk_renderer_realize_for_display: (Method | Throws)
      # @display:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGsk.gsk_renderer_realize_for_display(to_unsafe, display, pointerof(_error))

      # Error check
      Gsk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def render(root : Gsk::RenderNode, region : Cairo::Region?) : Nil
      # gsk_renderer_render: (Method)
      # @root:
      # @region: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      region = if region.nil?
                 Pointer(Void).null
               else
                 region.to_unsafe
               end

      # C call
      LibGsk.gsk_renderer_render(to_unsafe, root, region)

      # Return value handling
    end

    def render_texture(root : Gsk::RenderNode, viewport : Graphene::Rect?) : Gdk::Texture
      # gsk_renderer_render_texture: (Method)
      # @root:
      # @viewport: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      viewport = if viewport.nil?
                   Pointer(Void).null
                 else
                   viewport.to_unsafe
                 end

      # C call
      _retval = LibGsk.gsk_renderer_render_texture(to_unsafe, root, viewport)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def unrealize : Nil
      # gsk_renderer_unrealize: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_renderer_unrealize(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
