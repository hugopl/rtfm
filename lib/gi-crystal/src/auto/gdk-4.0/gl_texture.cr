require "./texture"
require "./paintable"

require "../gio-2.0/icon"

require "../gio-2.0/loadable_icon"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class GLTexture < Texture
    include Paintable
    include Gio::Icon
    include Gio::LoadableIcon

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::GLTextureClass), class_init,
        sizeof(LibGdk::GLTexture), instance_init, 0)
    end

    GICrystal.declare_new_method(GLTexture, g_object_get_qdata)

    # Initialize a new `GLTexture`.
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

    def initialize(*, color_state : Gdk::ColorState? = nil, height : Int32? = nil, width : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !color_state.nil?
        (_names.to_unsafe + _n).value = "color-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, color_state)
        _n += 1
      end
      if !height.nil?
        (_names.to_unsafe + _n).value = "height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height)
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
      @@g_type ||= LibGdk.gdk_gl_texture_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::GLTexture.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.new(context : Gdk::GLContext, id : UInt32, width : Int32, height : Int32, destroy : GLib::DestroyNotify, data : Pointer(Void)?) : self
      # gdk_gl_texture_new: (Constructor)
      # @context:
      # @id:
      # @width:
      # @height:
      # @destroy:
      # @data: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      _retval = LibGdk.gdk_gl_texture_new(context, id, width, height, destroy, data)

      # Return value handling
      Gdk::GLTexture.new(_retval, GICrystal::Transfer::Full)
    end

    def release : Nil
      # gdk_gl_texture_release: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_gl_texture_release(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
