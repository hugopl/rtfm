require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class MenuAttributeIter < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::MenuAttributeIterClass), class_init,
        sizeof(LibGio::MenuAttributeIter), instance_init, 0)
    end

    GICrystal.declare_new_method(MenuAttributeIter, g_object_get_qdata)

    # Initialize a new `MenuAttributeIter`.
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
      @@g_type ||= LibGio.g_menu_attribute_iter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::MenuAttributeIter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def name : ::String
      # g_menu_attribute_iter_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_menu_attribute_iter_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def next : Bool
      # g_menu_attribute_iter_get_next: (Method)
      # @out_name: (out) (optional)
      # @value: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      out_name = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
      value = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_menu_attribute_iter_get_next(to_unsafe, out_name, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def value : GLib::Variant
      # g_menu_attribute_iter_get_value: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_menu_attribute_iter_get_value(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def next : Bool
      # g_menu_attribute_iter_next: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_menu_attribute_iter_next(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # get_next: (None)
    # @out_name: (out) (optional)
    # @value: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_next_vfunc(impl_method_name)
      private def self._vfunc_get_next(%this : Pointer(Void), lib_out_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), ) : LibC::Int
        # @out_name: (out) (optional) 
# @value: (out) (transfer full) (optional) 

# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(out_name, value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_next(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_next: (None)
    # @out_name: (out) (optional)
    # @value: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_next_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_next(%this : Pointer(Void), lib_out_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), ) : LibC::Int
# @out_name: (out) (optional) 
# @value: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_out_name, lib_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_next = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_next(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_next : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
