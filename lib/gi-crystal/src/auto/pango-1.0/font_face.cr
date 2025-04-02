require "../g_object-2.0/object"

module Pango
  @[GICrystal::GeneratedWrapper]
  class FontFace < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::FontFaceClass), class_init,
        sizeof(LibPango::FontFace), instance_init, 0)
    end

    GICrystal.declare_new_method(FontFace, g_object_get_qdata)

    # Initialize a new `FontFace`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibPango.pango_font_face_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::FontFace.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def describe : Pango::FontDescription
      # pango_font_face_describe: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_font_face_describe(to_unsafe)

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::Full)
    end

    def face_name : ::String
      # pango_font_face_get_face_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_face_get_face_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def family : Pango::FontFamily
      # pango_font_face_get_family: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_face_get_family(to_unsafe)

      # Return value handling
      Pango::FontFamily.new(_retval, GICrystal::Transfer::None)
    end

    def is_synthesized : Bool
      # pango_font_face_is_synthesized: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_face_is_synthesized(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_sizes : Nil
      # pango_font_face_list_sizes: (Method)
      # @sizes: (out) (transfer full) (nullable) (optional) (array length=n_sizes element-type Int32)
      # @n_sizes: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_sizes = sizes.try(&.size) || 0
      # Generator::OutArgUsedInReturnPlan
      sizes = Pointer(Pointer(Int32)).null
      # C call
      LibPango.pango_font_face_list_sizes(to_unsafe, sizes, n_sizes)

      # Return value handling
    end

    # describe: (None)
    # Returns: (transfer full)
    private macro _register_describe_vfunc(impl_method_name)
      private def self._vfunc_describe(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_describe(Pointer(Void))).pointer
        previous_def
      end
    end

    # describe: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_describe_vfunc(impl_method_name)
      private def self._vfunc_unsafe_describe(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_describe = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_describe(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_describe : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_face_name: (None)
    # Returns: (transfer none)
    private macro _register_get_face_name_vfunc(impl_method_name)
      private def self._vfunc_get_face_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_face_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_face_name: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_face_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_face_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_face_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_face_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_face_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_family: (None)
    # Returns: (transfer none)
    private macro _register_get_family_vfunc(impl_method_name)
      private def self._vfunc_get_family(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_family(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_family: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_family_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_family(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_family = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_family(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_family : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # is_synthesized: (None)
    # Returns: (transfer none)
    private macro _register_is_synthesized_vfunc(impl_method_name)
      private def self._vfunc_is_synthesized(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_synthesized(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_synthesized: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_synthesized_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_synthesized(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_synthesized = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_synthesized(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_synthesized : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # list_sizes: (None)
    # @sizes: (out) (transfer full) (nullable) (optional) (array length=n_sizes element-type Int32)
    # @n_sizes: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_list_sizes_vfunc(impl_method_name)
      private def self._vfunc_list_sizes(%this : Pointer(Void), lib_sizes :  Pointer(Int32), lib_n_sizes :  Int32, ) : Void
        # @sizes: (out) (transfer full) (nullable) (optional) (array length=n_sizes element-type Int32)
# @n_sizes: (out) (transfer full) 

# Generator::ArrayLengthArgPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(sizes, n_sizes)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_list_sizes(Pointer(Void), Pointer(Int32), Int32)).pointer
        previous_def
      end
    end

    # list_sizes: (None)
    # @sizes: (out) (transfer full) (nullable) (optional) (array length=n_sizes element-type Int32)
    # @n_sizes: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_list_sizes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_list_sizes(%this : Pointer(Void), lib_sizes :  Pointer(Int32), lib_n_sizes :  Int32, ) : Void
# @sizes: (out) (transfer full) (nullable) (optional) (array length=n_sizes element-type Int32)
# @n_sizes: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_sizes, lib_n_sizes)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_list_sizes = Proc(Pointer(Void), Pointer(Int32), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_list_sizes(Pointer(Void), Pointer(Int32), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_list_sizes : Proc(Pointer(Void), Pointer(Int32), Int32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
