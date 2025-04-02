require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class DmabufTextureBuilder < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::DmabufTextureBuilderClass), class_init,
        sizeof(LibGdk::DmabufTextureBuilder), instance_init, 0)
    end

    GICrystal.declare_new_method(DmabufTextureBuilder, g_object_get_qdata)

    # Initialize a new `DmabufTextureBuilder`.
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

    def initialize(*, color_state : Gdk::ColorState? = nil, display : Gdk::Display? = nil, fourcc : UInt32? = nil, height : UInt32? = nil, modifier : UInt64? = nil, n_planes : UInt32? = nil, premultiplied : Bool? = nil, update_region : Cairo::Region? = nil, update_texture : Gdk::Texture? = nil, width : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !color_state.nil?
        (_names.to_unsafe + _n).value = "color-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, color_state)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !fourcc.nil?
        (_names.to_unsafe + _n).value = "fourcc".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fourcc)
        _n += 1
      end
      if !height.nil?
        (_names.to_unsafe + _n).value = "height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height)
        _n += 1
      end
      if !modifier.nil?
        (_names.to_unsafe + _n).value = "modifier".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modifier)
        _n += 1
      end
      if !n_planes.nil?
        (_names.to_unsafe + _n).value = "n-planes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_planes)
        _n += 1
      end
      if !premultiplied.nil?
        (_names.to_unsafe + _n).value = "premultiplied".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, premultiplied)
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
      @@g_type ||= LibGdk.gdk_dmabuf_texture_builder_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::DmabufTextureBuilder.new(Void*, GICrystal::Transfer)
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

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def fourcc=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "fourcc", unsafe_value, Pointer(Void).null)
      value
    end

    def fourcc : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "fourcc", pointerof(value), Pointer(Void).null)
      value
    end

    def height=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "height", unsafe_value, Pointer(Void).null)
      value
    end

    def height : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "height", pointerof(value), Pointer(Void).null)
      value
    end

    def modifier=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "modifier", unsafe_value, Pointer(Void).null)
      value
    end

    def modifier : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "modifier", pointerof(value), Pointer(Void).null)
      value
    end

    def n_planes=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "n-planes", unsafe_value, Pointer(Void).null)
      value
    end

    def n_planes : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-planes", pointerof(value), Pointer(Void).null)
      value
    end

    def premultiplied=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "premultiplied", unsafe_value, Pointer(Void).null)
      value
    end

    def premultiplied? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "premultiplied", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def width=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "width", unsafe_value, Pointer(Void).null)
      value
    end

    def width : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "width", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # gdk_dmabuf_texture_builder_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_new

      # Return value handling
      Gdk::DmabufTextureBuilder.new(_retval, GICrystal::Transfer::Full)
    end

    def build(destroy : GLib::DestroyNotify?, data : Pointer(Void)?) : Gdk::Texture?
      # gdk_dmabuf_texture_builder_build: (Method | Throws)
      # @destroy: (nullable)
      # @data: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_build(to_unsafe, destroy, data, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def color_state : Gdk::ColorState?
      # gdk_dmabuf_texture_builder_get_color_state: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_color_state(to_unsafe)

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def display : Gdk::Display
      # gdk_dmabuf_texture_builder_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def fd(plane : UInt32) : Int32
      # gdk_dmabuf_texture_builder_get_fd: (Method)
      # @plane:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_fd(to_unsafe, plane)

      # Return value handling
      _retval
    end

    def fourcc : UInt32
      # gdk_dmabuf_texture_builder_get_fourcc: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_fourcc(to_unsafe)

      # Return value handling
      _retval
    end

    def height : UInt32
      # gdk_dmabuf_texture_builder_get_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def modifier : UInt64
      # gdk_dmabuf_texture_builder_get_modifier: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_modifier(to_unsafe)

      # Return value handling
      _retval
    end

    def n_planes : UInt32
      # gdk_dmabuf_texture_builder_get_n_planes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_n_planes(to_unsafe)

      # Return value handling
      _retval
    end

    def offset(plane : UInt32) : UInt32
      # gdk_dmabuf_texture_builder_get_offset: (Method)
      # @plane:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_offset(to_unsafe, plane)

      # Return value handling
      _retval
    end

    def premultiplied : Bool
      # gdk_dmabuf_texture_builder_get_premultiplied: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_premultiplied(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def stride(plane : UInt32) : UInt32
      # gdk_dmabuf_texture_builder_get_stride: (Method)
      # @plane:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_stride(to_unsafe, plane)

      # Return value handling
      _retval
    end

    def update_region : Cairo::Region?
      # gdk_dmabuf_texture_builder_get_update_region: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_update_region(to_unsafe)

      # Return value handling
      Cairo::Region.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def update_texture : Gdk::Texture?
      # gdk_dmabuf_texture_builder_get_update_texture: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_update_texture(to_unsafe)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def width : UInt32
      # gdk_dmabuf_texture_builder_get_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_texture_builder_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def color_state=(color_state : Gdk::ColorState?) : Nil
      # gdk_dmabuf_texture_builder_set_color_state: (Method | Setter)
      # @color_state: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      color_state = if color_state.nil?
                      Pointer(Void).null
                    else
                      color_state.to_unsafe
                    end

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_color_state(to_unsafe, color_state)

      # Return value handling
    end

    def display=(display : Gdk::Display) : Nil
      # gdk_dmabuf_texture_builder_set_display: (Method | Setter)
      # @display:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_display(to_unsafe, display)

      # Return value handling
    end

    def set_fd(plane : UInt32, fd : Int32) : Nil
      # gdk_dmabuf_texture_builder_set_fd: (Method)
      # @plane:
      # @fd:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_fd(to_unsafe, plane, fd)

      # Return value handling
    end

    def fourcc=(fourcc : UInt32) : Nil
      # gdk_dmabuf_texture_builder_set_fourcc: (Method | Setter)
      # @fourcc:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_fourcc(to_unsafe, fourcc)

      # Return value handling
    end

    def height=(height : UInt32) : Nil
      # gdk_dmabuf_texture_builder_set_height: (Method | Setter)
      # @height:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_height(to_unsafe, height)

      # Return value handling
    end

    def modifier=(modifier : UInt64) : Nil
      # gdk_dmabuf_texture_builder_set_modifier: (Method | Setter)
      # @modifier:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_modifier(to_unsafe, modifier)

      # Return value handling
    end

    def n_planes=(n_planes : UInt32) : Nil
      # gdk_dmabuf_texture_builder_set_n_planes: (Method | Setter)
      # @n_planes:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_n_planes(to_unsafe, n_planes)

      # Return value handling
    end

    def set_offset(plane : UInt32, offset : UInt32) : Nil
      # gdk_dmabuf_texture_builder_set_offset: (Method)
      # @plane:
      # @offset:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_offset(to_unsafe, plane, offset)

      # Return value handling
    end

    def premultiplied=(premultiplied : Bool) : Nil
      # gdk_dmabuf_texture_builder_set_premultiplied: (Method | Setter)
      # @premultiplied:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_premultiplied(to_unsafe, premultiplied)

      # Return value handling
    end

    def set_stride(plane : UInt32, stride : UInt32) : Nil
      # gdk_dmabuf_texture_builder_set_stride: (Method)
      # @plane:
      # @stride:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_stride(to_unsafe, plane, stride)

      # Return value handling
    end

    def update_region=(region : Cairo::Region?) : Nil
      # gdk_dmabuf_texture_builder_set_update_region: (Method | Setter)
      # @region: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      region = if region.nil?
                 Pointer(Void).null
               else
                 region.to_unsafe
               end

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_update_region(to_unsafe, region)

      # Return value handling
    end

    def update_texture=(texture : Gdk::Texture?) : Nil
      # gdk_dmabuf_texture_builder_set_update_texture: (Method | Setter)
      # @texture: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      texture = if texture.nil?
                  Pointer(Void).null
                else
                  texture.to_unsafe
                end

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_update_texture(to_unsafe, texture)

      # Return value handling
    end

    def width=(width : UInt32) : Nil
      # gdk_dmabuf_texture_builder_set_width: (Method | Setter)
      # @width:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_texture_builder_set_width(to_unsafe, width)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
