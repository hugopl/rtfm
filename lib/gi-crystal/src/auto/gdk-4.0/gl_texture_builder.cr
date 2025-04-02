require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class GLTextureBuilder < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::GLTextureBuilderClass), class_init,
        sizeof(LibGdk::GLTextureBuilder), instance_init, 0)
    end

    GICrystal.declare_new_method(GLTextureBuilder, g_object_get_qdata)

    # Initialize a new `GLTextureBuilder`.
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

    def initialize(*, color_state : Gdk::ColorState? = nil, context : Gdk::GLContext? = nil, format : Gdk::MemoryFormat? = nil, has_mipmap : Bool? = nil, height : Int32? = nil, id : UInt32? = nil, sync : Pointer(Void)? = nil, update_region : Cairo::Region? = nil, update_texture : Gdk::Texture? = nil, width : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !color_state.nil?
        (_names.to_unsafe + _n).value = "color-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, color_state)
        _n += 1
      end
      if !context.nil?
        (_names.to_unsafe + _n).value = "context".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, context)
        _n += 1
      end
      if !format.nil?
        (_names.to_unsafe + _n).value = "format".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, format)
        _n += 1
      end
      if !has_mipmap.nil?
        (_names.to_unsafe + _n).value = "has-mipmap".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_mipmap)
        _n += 1
      end
      if !height.nil?
        (_names.to_unsafe + _n).value = "height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height)
        _n += 1
      end
      if !id.nil?
        (_names.to_unsafe + _n).value = "id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, id)
        _n += 1
      end
      if !sync.nil?
        (_names.to_unsafe + _n).value = "sync".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sync)
        _n += 1
      end
      if !update_region.nil?
        (_names.to_unsafe + _n).value = "update-region".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, update_region)
        _n += 1
      end
      if !update_texture.nil?
        (_names.to_unsafe + _n).value = "update-texture".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, update_texture)
        _n += 1
      end
      if !width.nil?
        (_names.to_unsafe + _n).value = "width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width)
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
      @@g_type ||= LibGdk.gdk_gl_texture_builder_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::GLTextureBuilder.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def color_state=(value : Gdk::ColorState?) : Gdk::ColorState?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "color-state", unsafe_value, Pointer(Void).null)
      value
    end

    def color_state : Gdk::ColorState?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "color-state", pointerof(value), Pointer(Void).null)
      Gdk::ColorState.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def context=(value : Gdk::GLContext?) : Gdk::GLContext?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "context", unsafe_value, Pointer(Void).null)
      value
    end

    def context : Gdk::GLContext?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "context", pointerof(value), Pointer(Void).null)
      Gdk::GLContext.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def format=(value : Gdk::MemoryFormat) : Gdk::MemoryFormat
      unsafe_value = value

      LibGObject.g_object_set(self, "format", unsafe_value, Pointer(Void).null)
      value
    end

    def format : Gdk::MemoryFormat
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "format", pointerof(value), Pointer(Void).null)
      Gdk::MemoryFormat.new(value)
    end

    def has_mipmap=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-mipmap", unsafe_value, Pointer(Void).null)
      value
    end

    def has_mipmap? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-mipmap", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "height", unsafe_value, Pointer(Void).null)
      value
    end

    def height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "height", pointerof(value), Pointer(Void).null)
      value
    end

    def id=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "id", unsafe_value, Pointer(Void).null)
      value
    end

    def id : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "id", pointerof(value), Pointer(Void).null)
      value
    end

    def sync=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "sync", unsafe_value, Pointer(Void).null)
      value
    end

    def sync : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sync", pointerof(value), Pointer(Void).null)
      value
    end

    def update_region=(value : Cairo::Region?) : Cairo::Region?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "update-region", unsafe_value, Pointer(Void).null)
      value
    end

    def update_region : Cairo::Region?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "update-region", pointerof(value), Pointer(Void).null)
      Cairo::Region.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def update_texture=(value : Gdk::Texture?) : Gdk::Texture?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "update-texture", unsafe_value, Pointer(Void).null)
      value
    end

    def update_texture : Gdk::Texture?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "update-texture", pointerof(value), Pointer(Void).null)
      Gdk::Texture.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "width", unsafe_value, Pointer(Void).null)
      value
    end

    def width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # gdk_gl_texture_builder_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_new

      # Return value handling
      Gdk::GLTextureBuilder.new(_retval, GICrystal::Transfer::Full)
    end

    def build(destroy : GLib::DestroyNotify?, data : Pointer(Void)?) : Gdk::Texture
      # gdk_gl_texture_builder_build: (Method)
      # @destroy: (nullable)
      # @data: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_build(to_unsafe, destroy, data)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def color_state : Gdk::ColorState
      # gdk_gl_texture_builder_get_color_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_color_state(to_unsafe)

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::None)
    end

    def context : Gdk::GLContext?
      # gdk_gl_texture_builder_get_context: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_context(to_unsafe)

      # Return value handling
      Gdk::GLContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def format : Gdk::MemoryFormat
      # gdk_gl_texture_builder_get_format: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_format(to_unsafe)

      # Return value handling
      Gdk::MemoryFormat.new(_retval)
    end

    def has_mipmap : Bool
      # gdk_gl_texture_builder_get_has_mipmap: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_has_mipmap(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def height : Int32
      # gdk_gl_texture_builder_get_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def id : UInt32
      # gdk_gl_texture_builder_get_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_id(to_unsafe)

      # Return value handling
      _retval
    end

    def sync : Pointer(Void)?
      # gdk_gl_texture_builder_get_sync: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_sync(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def update_region : Cairo::Region?
      # gdk_gl_texture_builder_get_update_region: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_update_region(to_unsafe)

      # Return value handling
      Cairo::Region.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def update_texture : Gdk::Texture?
      # gdk_gl_texture_builder_get_update_texture: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_update_texture(to_unsafe)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def width : Int32
      # gdk_gl_texture_builder_get_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_gl_texture_builder_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def color_state=(color_state : Gdk::ColorState) : Nil
      # gdk_gl_texture_builder_set_color_state: (Method | Setter)
      # @color_state:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_texture_builder_set_color_state(to_unsafe, color_state)

      # Return value handling
    end

    def context=(context : Gdk::GLContext?) : Nil
      # gdk_gl_texture_builder_set_context: (Method | Setter)
      # @context: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end

      # C call
      LibGdk.gdk_gl_texture_builder_set_context(to_unsafe, context)

      # Return value handling
    end

    def format=(format : Gdk::MemoryFormat) : Nil
      # gdk_gl_texture_builder_set_format: (Method | Setter)
      # @format:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_texture_builder_set_format(to_unsafe, format)

      # Return value handling
    end

    def has_mipmap=(has_mipmap : Bool) : Nil
      # gdk_gl_texture_builder_set_has_mipmap: (Method | Setter)
      # @has_mipmap:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_texture_builder_set_has_mipmap(to_unsafe, has_mipmap)

      # Return value handling
    end

    def height=(height : Int32) : Nil
      # gdk_gl_texture_builder_set_height: (Method | Setter)
      # @height:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_texture_builder_set_height(to_unsafe, height)

      # Return value handling
    end

    def id=(id : UInt32) : Nil
      # gdk_gl_texture_builder_set_id: (Method | Setter)
      # @id:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_texture_builder_set_id(to_unsafe, id)

      # Return value handling
    end

    def sync=(sync : Pointer(Void)?) : Nil
      # gdk_gl_texture_builder_set_sync: (Method | Setter)
      # @sync: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sync = if sync.nil?
               Pointer(Void).null
             else
               sync.to_unsafe
             end

      # C call
      LibGdk.gdk_gl_texture_builder_set_sync(to_unsafe, sync)

      # Return value handling
    end

    def update_region=(region : Cairo::Region?) : Nil
      # gdk_gl_texture_builder_set_update_region: (Method | Setter)
      # @region: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      region = if region.nil?
                 Pointer(Void).null
               else
                 region.to_unsafe
               end

      # C call
      LibGdk.gdk_gl_texture_builder_set_update_region(to_unsafe, region)

      # Return value handling
    end

    def update_texture=(texture : Gdk::Texture?) : Nil
      # gdk_gl_texture_builder_set_update_texture: (Method | Setter)
      # @texture: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      texture = if texture.nil?
                  Pointer(Void).null
                else
                  texture.to_unsafe
                end

      # C call
      LibGdk.gdk_gl_texture_builder_set_update_texture(to_unsafe, texture)

      # Return value handling
    end

    def width=(width : Int32) : Nil
      # gdk_gl_texture_builder_set_width: (Method | Setter)
      # @width:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_texture_builder_set_width(to_unsafe, width)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
