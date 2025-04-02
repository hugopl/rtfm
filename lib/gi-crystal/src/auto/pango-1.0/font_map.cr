require "../g_object-2.0/object"
require "../gio-2.0/list_model"

module Pango
  @[GICrystal::GeneratedWrapper]
  class FontMap < GObject::Object
    include Gio::ListModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::FontMapClass), class_init,
        sizeof(LibPango::FontMap), instance_init, 0)
    end

    GICrystal.declare_new_method(FontMap, g_object_get_qdata)

    # Initialize a new `FontMap`.
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

    def initialize(*, item_type : UInt64? = nil, n_items : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

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
      @@g_type ||= LibPango.pango_font_map_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::FontMap.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def add_font_file(filename : ::String) : Bool
      # pango_font_map_add_font_file: (Method | Throws)
      # @filename:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibPango.pango_font_map_add_font_file(to_unsafe, filename, pointerof(_error))

      # Error check
      Pango.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def changed : Nil
      # pango_font_map_changed: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_font_map_changed(to_unsafe)

      # Return value handling
    end

    def create_context : Pango::Context
      # pango_font_map_create_context: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_font_map_create_context(to_unsafe)

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::Full)
    end

    def family(name : ::String) : Pango::FontFamily
      # pango_font_map_get_family: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_map_get_family(to_unsafe, name)

      # Return value handling
      Pango::FontFamily.new(_retval, GICrystal::Transfer::None)
    end

    def serial : UInt32
      # pango_font_map_get_serial: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_map_get_serial(to_unsafe)

      # Return value handling
      _retval
    end

    def list_families(families : Enumerable(Pango::FontFamily)) : Nil
      # pango_font_map_list_families: (Method)
      # @families: (out) (transfer container) (array length=n_families element-type Interface)
      # @n_families: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_families = families.size
      # Generator::ArrayArgPlan
      families = families.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibPango::FontFamily)))

      # C call
      LibPango.pango_font_map_list_families(to_unsafe, families, n_families)

      # Return value handling
    end

    def list_families(*families : Pango::FontFamily)
      list_families(families)
    end

    def load_font(context : Pango::Context, desc : Pango::FontDescription) : Pango::Font?
      # pango_font_map_load_font: (Method)
      # @context:
      # @desc:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_font_map_load_font(to_unsafe, context, desc)

      # Return value handling
      Pango::Font.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def load_fontset(context : Pango::Context, desc : Pango::FontDescription, language : Pango::Language) : Pango::Fontset?
      # pango_font_map_load_fontset: (Method)
      # @context:
      # @desc:
      # @language:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_font_map_load_fontset(to_unsafe, context, desc, language)

      # Return value handling
      Pango::Fontset.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def reload_font(font : Pango::Font, scale : Float64, context : Pango::Context?, variations : ::String?) : Pango::Font
      # pango_font_map_reload_font: (Method)
      # @font:
      # @scale:
      # @context: (nullable)
      # @variations: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end
      # Generator::NullableArrayPlan
      variations = if variations.nil?
                     Pointer(LibC::Char).null
                   else
                     variations.to_unsafe
                   end

      # C call
      _retval = LibPango.pango_font_map_reload_font(to_unsafe, font, scale, context, variations)

      # Return value handling
      Pango::Font.new(_retval, GICrystal::Transfer::Full)
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    # get_family: (None)
    # @name:
    # Returns: (transfer none)
    private macro _register_get_family_vfunc(impl_method_name)
      private def self._vfunc_get_family(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @name: 

# Generator::BuiltInTypeArgPlan
name=::String.new(lib_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(name)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_family(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_family: (None)
    # @name:
    # Returns: (transfer none)
    private macro _register_unsafe_get_family_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_family(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_name)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_family = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_family(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_family : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_serial: (None)
    # Returns: (transfer none)
    private macro _register_get_serial_vfunc(impl_method_name)
      private def self._vfunc_get_serial(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_serial(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_serial: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_serial_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_serial(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_serial = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_serial(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_serial : Proc(Pointer(Void), UInt32)? = nil
    end

    # list_families: (None)
    # @families: (out) (transfer container) (array length=n_families element-type Interface)
    # @n_families: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_list_families_vfunc(impl_method_name)
      private def self._vfunc_list_families(%this : Pointer(Void), lib_families :  Pointer(Pointer(LibPango::FontFamily)), lib_n_families :  Int32, ) : Void
        # @families: (out) (transfer container) (array length=n_families element-type Interface)
# @n_families: (out) (transfer full) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_families = lib_families.as(Pointer(Pointer(Void)))
families= Array(Pango::FontFamily).new(lib_n_families) do |_i|
Pango::FontFamily.new((lib_families + _i).value, GICrystal::Transfer::Container)
end


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(families, n_families)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_list_families(Pointer(Void), Pointer(Pointer(LibPango::FontFamily)), Int32)).pointer
        previous_def
      end
    end

    # list_families: (None)
    # @families: (out) (transfer container) (array length=n_families element-type Interface)
    # @n_families: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_list_families_vfunc(impl_method_name)
      private def self._vfunc_unsafe_list_families(%this : Pointer(Void), lib_families :  Pointer(Pointer(LibPango::FontFamily)), lib_n_families :  Int32, ) : Void
# @families: (out) (transfer container) (array length=n_families element-type Interface)
# @n_families: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_families, lib_n_families)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_list_families = Proc(Pointer(Void), Pointer(Pointer(LibPango::FontFamily)), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_list_families(Pointer(Void), Pointer(Pointer(LibPango::FontFamily)), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_list_families : Proc(Pointer(Void), Pointer(Pointer(LibPango::FontFamily)), Int32, Void)? = nil
    end

    # load_font: (None)
    # @context:
    # @desc:
    # Returns: (transfer full) (nullable)
    private macro _register_load_font_vfunc(impl_method_name)
      private def self._vfunc_load_font(%this : Pointer(Void), lib_context :  Pointer(Void), lib_desc :  Pointer(Void), ) : Pointer(Void)
        # @context: 
# @desc: 

# Generator::BuiltInTypeArgPlan
context=Pango::Context.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
desc=Pango::FontDescription.new(lib_desc, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, desc)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load_font(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # load_font: (None)
    # @context:
    # @desc:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_load_font_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load_font(%this : Pointer(Void), lib_context :  Pointer(Void), lib_desc :  Pointer(Void), ) : Pointer(Void)
# @context: 
# @desc: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_desc)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load_font = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load_font(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load_font : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # load_fontset: (None)
    # @context:
    # @desc:
    # @language:
    # Returns: (transfer full) (nullable)
    private macro _register_load_fontset_vfunc(impl_method_name)
      private def self._vfunc_load_fontset(%this : Pointer(Void), lib_context :  Pointer(Void), lib_desc :  Pointer(Void), lib_language :  Pointer(Void), ) : Pointer(Void)
        # @context: 
# @desc: 
# @language: 

# Generator::BuiltInTypeArgPlan
context=Pango::Context.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
desc=Pango::FontDescription.new(lib_desc, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
language=Pango::Language.new(lib_language, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, desc, language)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load_fontset(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # load_fontset: (None)
    # @context:
    # @desc:
    # @language:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_load_fontset_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load_fontset(%this : Pointer(Void), lib_context :  Pointer(Void), lib_desc :  Pointer(Void), lib_language :  Pointer(Void), ) : Pointer(Void)
# @context: 
# @desc: 
# @language: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_desc, lib_language)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load_fontset = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load_fontset(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load_fontset : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
