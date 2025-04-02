require "../g_object-2.0/object"

module Pango
  @[GICrystal::GeneratedWrapper]
  class Fontset < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::FontsetClass), class_init,
        sizeof(LibPango::Fontset), instance_init, 0)
    end

    GICrystal.declare_new_method(Fontset, g_object_get_qdata)

    # Initialize a new `Fontset`.
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
      @@g_type ||= LibPango.pango_fontset_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::Fontset.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def foreach(func : Pango::FontsetForeachFunc, data : Pointer(Void)?) : Nil
      # pango_fontset_foreach: (Method)
      # @func:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibPango.pango_fontset_foreach(to_unsafe, func, data)

      # Return value handling
    end

    def font(wc : UInt32) : Pango::Font
      # pango_fontset_get_font: (Method)
      # @wc:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_fontset_get_font(to_unsafe, wc)

      # Return value handling
      Pango::Font.new(_retval, GICrystal::Transfer::Full)
    end

    def metrics : Pango::FontMetrics
      # pango_fontset_get_metrics: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_fontset_get_metrics(to_unsafe)

      # Return value handling
      Pango::FontMetrics.new(_retval, GICrystal::Transfer::Full)
    end

    # foreach: (None)
    # @func:
    # @data: (nullable)
    # Returns: (transfer none)
    private macro _register_foreach_vfunc(impl_method_name)
      private def self._vfunc_foreach(%this : Pointer(Void), lib_func :  Void*, lib_data :  Pointer(Void), ) : Void
        # @func: 
# @data: (nullable) 

# Generator::BuiltInTypeArgPlan
func=Pango::FontsetForeachFunc.new(lib_func, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
data=(lib_data.null? ? nil : lib_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(func, data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_foreach(Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # foreach: (None)
    # @func:
    # @data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_foreach_vfunc(impl_method_name)
      private def self._vfunc_unsafe_foreach(%this : Pointer(Void), lib_func :  Void*, lib_data :  Pointer(Void), ) : Void
# @func: 
# @data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_func, lib_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_foreach = Proc(Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_foreach(Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_foreach : Proc(Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # get_font: (None)
    # @wc:
    # Returns: (transfer full)
    private macro _register_get_font_vfunc(impl_method_name)
      private def self._vfunc_get_font(%this : Pointer(Void), lib_wc :  UInt32, ) : Pointer(Void)
        # @wc: 

wc=lib_wc


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(wc)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_font(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # get_font: (None)
    # @wc:
    # Returns: (transfer full)
    private macro _register_unsafe_get_font_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_font(%this : Pointer(Void), lib_wc :  UInt32, ) : Pointer(Void)
# @wc: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_wc)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_font = Proc(Pointer(Void), UInt32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_font(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_font : Proc(Pointer(Void), UInt32, Pointer(Void))? = nil
    end

    # get_language: (None)
    # Returns: (transfer full)
    private macro _register_get_language_vfunc(impl_method_name)
      private def self._vfunc_get_language(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_language(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_language: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_language_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_language(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_language = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_language(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_language : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_metrics: (None)
    # Returns: (transfer full)
    private macro _register_get_metrics_vfunc(impl_method_name)
      private def self._vfunc_get_metrics(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_metrics(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_metrics: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_metrics_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_metrics(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_metrics = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_metrics(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_metrics : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
