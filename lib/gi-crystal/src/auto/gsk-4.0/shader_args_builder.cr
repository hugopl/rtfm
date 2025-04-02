module Gsk
  class ShaderArgsBuilder
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ShaderArgsBuilder.g_type, pointer)
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
      LibGObject.g_boxed_free(ShaderArgsBuilder.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_shader_args_builder_get_type
    end

    @[Deprecated]
    def self.new(shader : Gsk::GLShader, initial_values : GLib::Bytes?) : self
      # gsk_shader_args_builder_new: (Constructor)
      # @shader:
      # @initial_values: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      initial_values = if initial_values.nil?
                         Pointer(Void).null
                       else
                         initial_values.to_unsafe
                       end

      # C call
      _retval = LibGsk.gsk_shader_args_builder_new(shader, initial_values)

      # Return value handling
      Gsk::ShaderArgsBuilder.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def ref : Gsk::ShaderArgsBuilder
      # gsk_shader_args_builder_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_shader_args_builder_ref(to_unsafe)

      # Return value handling
      Gsk::ShaderArgsBuilder.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def set_bool(idx : Int32, value : Bool) : Nil
      # gsk_shader_args_builder_set_bool: (Method)
      # @idx:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_set_bool(to_unsafe, idx, value)

      # Return value handling
    end

    def set_float(idx : Int32, value : Float32) : Nil
      # gsk_shader_args_builder_set_float: (Method)
      # @idx:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_set_float(to_unsafe, idx, value)

      # Return value handling
    end

    @[Deprecated]
    def set_int(idx : Int32, value : Int32) : Nil
      # gsk_shader_args_builder_set_int: (Method)
      # @idx:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_set_int(to_unsafe, idx, value)

      # Return value handling
    end

    @[Deprecated]
    def set_uint(idx : Int32, value : UInt32) : Nil
      # gsk_shader_args_builder_set_uint: (Method)
      # @idx:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_set_uint(to_unsafe, idx, value)

      # Return value handling
    end

    @[Deprecated]
    def set_vec2(idx : Int32, value : Graphene::Vec2) : Nil
      # gsk_shader_args_builder_set_vec2: (Method)
      # @idx:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_set_vec2(to_unsafe, idx, value)

      # Return value handling
    end

    @[Deprecated]
    def set_vec3(idx : Int32, value : Graphene::Vec3) : Nil
      # gsk_shader_args_builder_set_vec3: (Method)
      # @idx:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_set_vec3(to_unsafe, idx, value)

      # Return value handling
    end

    @[Deprecated]
    def set_vec4(idx : Int32, value : Graphene::Vec4) : Nil
      # gsk_shader_args_builder_set_vec4: (Method)
      # @idx:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_set_vec4(to_unsafe, idx, value)

      # Return value handling
    end

    @[Deprecated]
    def to_args : GLib::Bytes
      # gsk_shader_args_builder_to_args: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_shader_args_builder_to_args(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def unref : Nil
      # gsk_shader_args_builder_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_shader_args_builder_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
