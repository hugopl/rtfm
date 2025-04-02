require "../g_object-2.0/object"
require "../gio-2.0/list_model"

module Pango
  @[GICrystal::GeneratedWrapper]
  class FontFamily < GObject::Object
    include Gio::ListModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::FontFamilyClass), class_init,
        sizeof(LibPango::FontFamily), instance_init, 0)
    end

    GICrystal.declare_new_method(FontFamily, g_object_get_qdata)

    # Initialize a new `FontFamily`.
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

    def initialize(*, is_monospace : Bool? = nil, is_variable : Bool? = nil, item_type : UInt64? = nil, n_items : UInt32? = nil, name : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !is_monospace.nil?
        (_names.to_unsafe + _n).value = "is-monospace".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_monospace)
        _n += 1
      end
      if !is_variable.nil?
        (_names.to_unsafe + _n).value = "is-variable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_variable)
        _n += 1
      end
      if !item_type.nil?
        (_names.to_unsafe + _n).value = "item-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_type)
        _n += 1
      end
      if !n_items.nil?
        (_names.to_unsafe + _n).value = "n-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_items)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
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
      @@g_type ||= LibPango.pango_font_family_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::FontFamily.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def is_monospace? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-monospace", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_variable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-variable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def item_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "item-type", pointerof(value), Pointer(Void).null)
      value
    end

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def face(name : ::String?) : Pango::FontFace?
      # pango_font_family_get_face: (Method)
      # @name: (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibPango.pango_font_family_get_face(to_unsafe, name)

      # Return value handling
      Pango::FontFace.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def name : ::String
      # pango_font_family_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_family_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def is_monospace? : Bool
      # pango_font_family_is_monospace: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_family_is_monospace(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_variable? : Bool
      # pango_font_family_is_variable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_family_is_variable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_faces : Nil
      # pango_font_family_list_faces: (Method)
      # @faces: (out) (transfer container) (optional) (array length=n_faces element-type Interface)
      # @n_faces: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_faces = faces.size
      # Generator::OutArgUsedInReturnPlan
      faces = Pointer(Pointer(Pointer(LibPango::FontFace))).null # Generator::ArrayArgPlan
      faces = faces.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibPango::FontFace)))

      # C call
      LibPango.pango_font_family_list_faces(to_unsafe, faces, n_faces)

      # Return value handling
    end

    # get_face: (None)
    # @name: (nullable)
    # Returns: (transfer none) (nullable)
    private macro _register_get_face_vfunc(impl_method_name)
      private def self._vfunc_get_face(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @name: (nullable) 

# Generator::NullableArrayPlan
name=(lib_name.null? ? nil : ::String.new(lib_name))
# Generator::BuiltInTypeArgPlan
name=::String.new(lib_name) unless lib_name.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(name)
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_face(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_face: (None)
    # @name: (nullable)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_face_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_face(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @name: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_name)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_face = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_face(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_face : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_name: (None)
    # Returns: (transfer none)
    private macro _register_get_name_vfunc(impl_method_name)
      private def self._vfunc_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_name: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # is_monospace: (None)
    # Returns: (transfer none)
    private macro _register_is_monospace_vfunc(impl_method_name)
      private def self._vfunc_is_monospace(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_monospace(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_monospace: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_monospace_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_monospace(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_monospace = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_monospace(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_monospace : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # is_variable: (None)
    # Returns: (transfer none)
    private macro _register_is_variable_vfunc(impl_method_name)
      private def self._vfunc_is_variable(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_variable(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_variable: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_variable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_variable(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_variable = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_variable(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_variable : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # list_faces: (None)
    # @faces: (out) (transfer container) (optional) (array length=n_faces element-type Interface)
    # @n_faces: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_list_faces_vfunc(impl_method_name)
      private def self._vfunc_list_faces(%this : Pointer(Void), lib_faces :  Pointer(Pointer(LibPango::FontFace)), lib_n_faces :  Int32, ) : Void
        # @faces: (out) (transfer container) (optional) (array length=n_faces element-type Interface)
# @n_faces: (out) (transfer full) 

# Generator::ArrayLengthArgPlan
# Generator::OutArgUsedInReturnPlan
# Generator::ArrayArgPlan
lib_faces = lib_faces.as(Pointer(Pointer(Void)))
faces= Array(Pango::FontFace).new(lib_n_faces) do |_i|
Pango::FontFace.new((lib_faces + _i).value, GICrystal::Transfer::Container)
end


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(faces, n_faces)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_list_faces(Pointer(Void), Pointer(Pointer(LibPango::FontFace)), Int32)).pointer
        previous_def
      end
    end

    # list_faces: (None)
    # @faces: (out) (transfer container) (optional) (array length=n_faces element-type Interface)
    # @n_faces: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_list_faces_vfunc(impl_method_name)
      private def self._vfunc_unsafe_list_faces(%this : Pointer(Void), lib_faces :  Pointer(Pointer(LibPango::FontFace)), lib_n_faces :  Int32, ) : Void
# @faces: (out) (transfer container) (optional) (array length=n_faces element-type Interface)
# @n_faces: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_faces, lib_n_faces)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_list_faces = Proc(Pointer(Void), Pointer(Pointer(LibPango::FontFace)), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_list_faces(Pointer(Void), Pointer(Pointer(LibPango::FontFace)), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_list_faces : Proc(Pointer(Void), Pointer(Pointer(LibPango::FontFace)), Int32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
