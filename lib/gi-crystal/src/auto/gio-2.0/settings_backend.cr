require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SettingsBackend < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SettingsBackendClass), class_init,
        sizeof(LibGio::SettingsBackend), instance_init, 0)
    end

    GICrystal.declare_new_method(SettingsBackend, g_object_get_qdata)

    # Initialize a new `SettingsBackend`.
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
      @@g_type ||= LibGio.g_settings_backend_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SettingsBackend.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.flatten_tree(tree : GLib::Tree, path : ::String, keys : Enumerable(::String)) : Nil
      # g_settings_backend_flatten_tree: (None)
      # @tree:
      # @path: (out) (transfer full)
      # @keys: (out) (transfer container) (array zero-terminated=1 element-type Utf8)
      # @values: (out) (transfer container) (optional) (array zero-terminated=1 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      keys = keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
      # Generator::OutArgUsedInReturnPlan
      values = Pointer(Pointer(Pointer(LibGLib::Variant))).null # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GLib::Variant.new(_i).to_unsafe }.to_unsafe.as(Pointer(Pointer(LibGLib::Variant)))

      # C call
      LibGio.g_settings_backend_flatten_tree(tree, path, keys, values)

      # Return value handling
    end

    def self.default : Gio::SettingsBackend
      # g_settings_backend_get_default: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_backend_get_default

      # Return value handling
      Gio::SettingsBackend.new(_retval, GICrystal::Transfer::Full)
    end

    def changed(key : ::String, origin_tag : Pointer(Void)?) : Nil
      # g_settings_backend_changed: (Method)
      # @key:
      # @origin_tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      origin_tag = if origin_tag.nil?
                     Pointer(Void).null
                   else
                     origin_tag.to_unsafe
                   end

      # C call
      LibGio.g_settings_backend_changed(to_unsafe, key, origin_tag)

      # Return value handling
    end

    def changed_tree(tree : GLib::Tree, origin_tag : Pointer(Void)?) : Nil
      # g_settings_backend_changed_tree: (Method)
      # @tree:
      # @origin_tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      origin_tag = if origin_tag.nil?
                     Pointer(Void).null
                   else
                     origin_tag.to_unsafe
                   end

      # C call
      LibGio.g_settings_backend_changed_tree(to_unsafe, tree, origin_tag)

      # Return value handling
    end

    def keys_changed(path : ::String, items : Enumerable(::String), origin_tag : Pointer(Void)?) : Nil
      # g_settings_backend_keys_changed: (Method)
      # @path:
      # @items: (array zero-terminated=1 element-type Utf8)
      # @origin_tag: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      items = items.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
      # Generator::NullableArrayPlan
      origin_tag = if origin_tag.nil?
                     Pointer(Void).null
                   else
                     origin_tag.to_unsafe
                   end

      # C call
      LibGio.g_settings_backend_keys_changed(to_unsafe, path, items, origin_tag)

      # Return value handling
    end

    def path_changed(path : ::String, origin_tag : Pointer(Void)?) : Nil
      # g_settings_backend_path_changed: (Method)
      # @path:
      # @origin_tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      origin_tag = if origin_tag.nil?
                     Pointer(Void).null
                   else
                     origin_tag.to_unsafe
                   end

      # C call
      LibGio.g_settings_backend_path_changed(to_unsafe, path, origin_tag)

      # Return value handling
    end

    def path_writable_changed(path : ::String) : Nil
      # g_settings_backend_path_writable_changed: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_backend_path_writable_changed(to_unsafe, path)

      # Return value handling
    end

    def writable_changed(key : ::String) : Nil
      # g_settings_backend_writable_changed: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_backend_writable_changed(to_unsafe, key)

      # Return value handling
    end

    # get_writable: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_get_writable_vfunc(impl_method_name)
      private def self._vfunc_get_writable(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), ) : LibC::Int
        # @key: 

# Generator::BuiltInTypeArgPlan
key=::String.new(lib_key)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_writable(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_writable: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_unsafe_get_writable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_writable(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), ) : LibC::Int
# @key: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_writable = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_writable(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_writable : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # read: (None)
    # @key:
    # @expected_type:
    # @default_value:
    # Returns: (transfer full)
    private macro _register_read_vfunc(impl_method_name)
      private def self._vfunc_read(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_expected_type :  Pointer(Void), lib_default_value :  LibC::Int, ) : Pointer(Void)
        # @key: 
# @expected_type: 
# @default_value: 

# Generator::BuiltInTypeArgPlan
key=::String.new(lib_key)
# Generator::BuiltInTypeArgPlan
expected_type=GLib::VariantType.new(lib_expected_type, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
default_value=GICrystal.to_bool(lib_default_value)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key, expected_type, default_value)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_read(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # read: (None)
    # @key:
    # @expected_type:
    # @default_value:
    # Returns: (transfer full)
    private macro _register_unsafe_read_vfunc(impl_method_name)
      private def self._vfunc_unsafe_read(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_expected_type :  Pointer(Void), lib_default_value :  LibC::Int, ) : Pointer(Void)
# @key: 
# @expected_type: 
# @default_value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key, lib_expected_type, lib_default_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_read = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_read(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_read : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int, Pointer(Void))? = nil
    end

    # read_user_value: (None)
    # @key:
    # @expected_type:
    # Returns: (transfer full)
    private macro _register_read_user_value_vfunc(impl_method_name)
      private def self._vfunc_read_user_value(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_expected_type :  Pointer(Void), ) : Pointer(Void)
        # @key: 
# @expected_type: 

# Generator::BuiltInTypeArgPlan
key=::String.new(lib_key)
# Generator::BuiltInTypeArgPlan
expected_type=GLib::VariantType.new(lib_expected_type, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key, expected_type)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_read_user_value(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # read_user_value: (None)
    # @key:
    # @expected_type:
    # Returns: (transfer full)
    private macro _register_unsafe_read_user_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_read_user_value(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_expected_type :  Pointer(Void), ) : Pointer(Void)
# @key: 
# @expected_type: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key, lib_expected_type)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_read_user_value = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_read_user_value(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_read_user_value : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))? = nil
    end

    # reset: (None)
    # @key:
    # @origin_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_reset_vfunc(impl_method_name)
      private def self._vfunc_reset(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_origin_tag :  Pointer(Void), ) : Void
        # @key: 
# @origin_tag: (nullable) 

# Generator::BuiltInTypeArgPlan
key=::String.new(lib_key)
# Generator::NullableArrayPlan
origin_tag=(lib_origin_tag.null? ? nil : lib_origin_tag)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key, origin_tag)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_reset(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # reset: (None)
    # @key:
    # @origin_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_reset_vfunc(impl_method_name)
      private def self._vfunc_unsafe_reset(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_origin_tag :  Pointer(Void), ) : Void
# @key: 
# @origin_tag: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key, lib_origin_tag)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reset = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reset(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reset : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    # subscribe: (None)
    # @name:
    # Returns: (transfer none)
    private macro _register_subscribe_vfunc(impl_method_name)
      private def self._vfunc_subscribe(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Void
        # @name: 

# Generator::BuiltInTypeArgPlan
name=::String.new(lib_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(name)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_subscribe(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # subscribe: (None)
    # @name:
    # Returns: (transfer none)
    private macro _register_unsafe_subscribe_vfunc(impl_method_name)
      private def self._vfunc_unsafe_subscribe(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Void
# @name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_name)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_subscribe = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_subscribe(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_subscribe : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # sync: (None)
    # Returns: (transfer none)
    private macro _register_sync_vfunc(impl_method_name)
      private def self._vfunc_sync(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_sync(Pointer(Void))).pointer
        previous_def
      end
    end

    # sync: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_sync_vfunc(impl_method_name)
      private def self._vfunc_unsafe_sync(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_sync = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_sync(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_sync : Proc(Pointer(Void), Void)? = nil
    end

    # unsubscribe: (None)
    # @name:
    # Returns: (transfer none)
    private macro _register_unsubscribe_vfunc(impl_method_name)
      private def self._vfunc_unsubscribe(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Void
        # @name: 

# Generator::BuiltInTypeArgPlan
name=::String.new(lib_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(name)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unsubscribe(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # unsubscribe: (None)
    # @name:
    # Returns: (transfer none)
    private macro _register_unsafe_unsubscribe_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unsubscribe(%this : Pointer(Void), lib_name :  Pointer(LibC::Char), ) : Void
# @name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_name)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unsubscribe = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unsubscribe(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unsubscribe : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # write: (None)
    # @key:
    # @value:
    # @origin_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_write_vfunc(impl_method_name)
      private def self._vfunc_write(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_value :  Pointer(Void), lib_origin_tag :  Pointer(Void), ) : LibC::Int
        # @key: 
# @value: 
# @origin_tag: (nullable) 

# Generator::BuiltInTypeArgPlan
key=::String.new(lib_key)
# Generator::HandmadeArgPlan
value=GLib::Variant.new(lib_value, :none)
# Generator::NullableArrayPlan
origin_tag=(lib_origin_tag.null? ? nil : lib_origin_tag)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key, value, origin_tag)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # write: (None)
    # @key:
    # @value:
    # @origin_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_write_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), lib_value :  Pointer(Void), lib_origin_tag :  Pointer(Void), ) : LibC::Int
# @key: 
# @value: 
# @origin_tag: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key, lib_value, lib_origin_tag)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # write_tree: (None)
    # @tree:
    # @origin_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_write_tree_vfunc(impl_method_name)
      private def self._vfunc_write_tree(%this : Pointer(Void), lib_tree :  Pointer(Void), lib_origin_tag :  Pointer(Void), ) : LibC::Int
        # @tree: 
# @origin_tag: (nullable) 

# Generator::BuiltInTypeArgPlan
tree=GLib::Tree.new(lib_tree, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
origin_tag=(lib_origin_tag.null? ? nil : lib_origin_tag)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(tree, origin_tag)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write_tree(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # write_tree: (None)
    # @tree:
    # @origin_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_write_tree_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write_tree(%this : Pointer(Void), lib_tree :  Pointer(Void), lib_origin_tag :  Pointer(Void), ) : LibC::Int
# @tree: 
# @origin_tag: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_tree, lib_origin_tag)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write_tree = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write_tree(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write_tree : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
