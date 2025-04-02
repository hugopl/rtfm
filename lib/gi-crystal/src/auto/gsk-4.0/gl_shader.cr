require "../g_object-2.0/object"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class GLShader < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGsk::GLShaderClass), class_init,
        sizeof(LibGsk::GLShader), instance_init, 0)
    end

    GICrystal.declare_new_method(GLShader, g_object_get_qdata)

    # Initialize a new `GLShader`.
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

    def initialize(*, resource : ::String? = nil, source : GLib::Bytes? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !resource.nil?
        (_names.to_unsafe + _n).value = "resource".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resource)
        _n += 1
      end
      if !source.nil?
        (_names.to_unsafe + _n).value = "source".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, source)
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
      @@g_type ||= LibGsk.gsk_gl_shader_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::GLShader.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def resource=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "resource", unsafe_value, Pointer(Void).null)
      value
    end

    def resource : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#resource` property to nil.
    def resource=(value : Nil) : Nil
      LibGObject.g_object_set(self, "resource", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#resource`, but can return nil.
    def resource? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def source=(value : GLib::Bytes?) : GLib::Bytes?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "source", unsafe_value, Pointer(Void).null)
      value
    end

    def source : GLib::Bytes?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "source", pointerof(value), Pointer(Void).null)
      GLib::Bytes.new(value, GICrystal::Transfer::None) unless value.null?
    end

    @[Deprecated]
    def self.new_from_bytes(sourcecode : GLib::Bytes) : self
      # gsk_gl_shader_new_from_bytes: (Constructor)
      # @sourcecode:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_gl_shader_new_from_bytes(sourcecode)

      # Return value handling
      Gsk::GLShader.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_from_resource(resource_path : ::String) : self
      # gsk_gl_shader_new_from_resource: (Constructor)
      # @resource_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_gl_shader_new_from_resource(resource_path)

      # Return value handling
      Gsk::GLShader.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def compile(renderer : Gsk::Renderer) : Bool
      # gsk_gl_shader_compile: (Method | Throws)
      # @renderer:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGsk.gsk_gl_shader_compile(to_unsafe, renderer, pointerof(_error))

      # Error check
      Gsk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def find_uniform_by_name(name : ::String) : Int32
      # gsk_gl_shader_find_uniform_by_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_find_uniform_by_name(to_unsafe, name)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def arg_bool(args : GLib::Bytes, idx : Int32) : Bool
      # gsk_gl_shader_get_arg_bool: (Method)
      # @args:
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_arg_bool(to_unsafe, args, idx)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def arg_float(args : GLib::Bytes, idx : Int32) : Float32
      # gsk_gl_shader_get_arg_float: (Method)
      # @args:
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_arg_float(to_unsafe, args, idx)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def arg_int(args : GLib::Bytes, idx : Int32) : Int32
      # gsk_gl_shader_get_arg_int: (Method)
      # @args:
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_arg_int(to_unsafe, args, idx)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def arg_uint(args : GLib::Bytes, idx : Int32) : UInt32
      # gsk_gl_shader_get_arg_uint: (Method)
      # @args:
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_arg_uint(to_unsafe, args, idx)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def arg_vec2(args : GLib::Bytes, idx : Int32, out_value : Graphene::Vec2) : Nil
      # gsk_gl_shader_get_arg_vec2: (Method)
      # @args:
      # @idx:
      # @out_value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_gl_shader_get_arg_vec2(to_unsafe, args, idx, out_value)

      # Return value handling
    end

    @[Deprecated]
    def arg_vec3(args : GLib::Bytes, idx : Int32, out_value : Graphene::Vec3) : Nil
      # gsk_gl_shader_get_arg_vec3: (Method)
      # @args:
      # @idx:
      # @out_value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_gl_shader_get_arg_vec3(to_unsafe, args, idx, out_value)

      # Return value handling
    end

    @[Deprecated]
    def arg_vec4(args : GLib::Bytes, idx : Int32, out_value : Graphene::Vec4) : Nil
      # gsk_gl_shader_get_arg_vec4: (Method)
      # @args:
      # @idx:
      # @out_value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_gl_shader_get_arg_vec4(to_unsafe, args, idx, out_value)

      # Return value handling
    end

    @[Deprecated]
    def args_size : UInt64
      # gsk_gl_shader_get_args_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_args_size(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def n_textures : Int32
      # gsk_gl_shader_get_n_textures: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_n_textures(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def n_uniforms : Int32
      # gsk_gl_shader_get_n_uniforms: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_n_uniforms(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def resource : ::String?
      # gsk_gl_shader_get_resource: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_resource(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def source : GLib::Bytes
      # gsk_gl_shader_get_source: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_source(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def uniform_name(idx : Int32) : ::String
      # gsk_gl_shader_get_uniform_name: (Method)
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_uniform_name(to_unsafe, idx)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def uniform_offset(idx : Int32) : Int32
      # gsk_gl_shader_get_uniform_offset: (Method)
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_uniform_offset(to_unsafe, idx)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def uniform_type(idx : Int32) : Gsk::GLUniformType
      # gsk_gl_shader_get_uniform_type: (Method)
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_get_uniform_type(to_unsafe, idx)

      # Return value handling
      Gsk::GLUniformType.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
