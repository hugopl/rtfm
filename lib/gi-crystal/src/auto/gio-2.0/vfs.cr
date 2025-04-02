require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Vfs < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::VfsClass), class_init,
        sizeof(LibGio::Vfs), instance_init, 0)
    end

    GICrystal.declare_new_method(Vfs, g_object_get_qdata)

    # Initialize a new `Vfs`.
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
      @@g_type ||= LibGio.g_vfs_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Vfs.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.default : Gio::Vfs
      # g_vfs_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_vfs_get_default

      # Return value handling
      Gio::Vfs.new(_retval, GICrystal::Transfer::None)
    end

    def self.local : Gio::Vfs
      # g_vfs_get_local: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_vfs_get_local

      # Return value handling
      Gio::Vfs.new(_retval, GICrystal::Transfer::None)
    end

    def file_for_path(path : ::String) : Gio::File
      # g_vfs_get_file_for_path: (Method)
      # @path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_vfs_get_file_for_path(to_unsafe, path)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def file_for_uri(uri : ::String) : Gio::File
      # g_vfs_get_file_for_uri: (Method)
      # @uri:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_vfs_get_file_for_uri(to_unsafe, uri)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def supported_uri_schemes : Enumerable(::String)
      # g_vfs_get_supported_uri_schemes: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_vfs_get_supported_uri_schemes(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def is_active : Bool
      # g_vfs_is_active: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_vfs_is_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def parse_name(parse_name : ::String) : Gio::File
      # g_vfs_parse_name: (Method)
      # @parse_name:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_vfs_parse_name(to_unsafe, parse_name)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def register_uri_scheme(scheme : ::String, uri_func : Gio::VfsFileLookupFunc?, uri_data : Pointer(Void)?, uri_destroy : GLib::DestroyNotify?, parse_name_func : Gio::VfsFileLookupFunc?) : Bool
      # g_vfs_register_uri_scheme: (Method)
      # @scheme:
      # @uri_func: (nullable)
      # @uri_data: (nullable)
      # @uri_destroy: (nullable)
      # @parse_name_func: (nullable)
      # @parse_name_data: (nullable)
      # @parse_name_destroy: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      uri_data = if uri_data.nil?
                   Pointer(Void).null
                 else
                   uri_data.to_unsafe
                 end
      # Generator::CallbackArgPlan
      if parse_name_func
        _box = ::Box.box(parse_name_func)
        parse_name_func = ->(lib_vfs : Pointer(Void), lib_identifier : Pointer(LibC::Char), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          vfs = Gio::Vfs.new(lib_vfs, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          identifier = ::String.new(lib_identifier)
          ::Box(Proc(Gio::Vfs, ::String, Gio::File)).unbox(lib_user_data).call(vfs, identifier)
        }.pointer
        parse_name_data = GICrystal::ClosureDataManager.register(_box)
        parse_name_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        parse_name_func = parse_name_data = parse_name_destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGio.g_vfs_register_uri_scheme(to_unsafe, scheme, uri_func, uri_data, uri_destroy, parse_name_func, parse_name_data, parse_name_destroy)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def unregister_uri_scheme(scheme : ::String) : Bool
      # g_vfs_unregister_uri_scheme: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_vfs_unregister_uri_scheme(to_unsafe, scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # add_writable_namespaces: (None)
    # @list:
    # Returns: (transfer none)
    private macro _register_add_writable_namespaces_vfunc(impl_method_name)
      private def self._vfunc_add_writable_namespaces(%this : Pointer(Void), lib_list :  Pointer(Void), ) : Void
        # @list: 

# Generator::BuiltInTypeArgPlan
list=Gio::FileAttributeInfoList.new(lib_list, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(list)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_writable_namespaces(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # add_writable_namespaces: (None)
    # @list:
    # Returns: (transfer none)
    private macro _register_unsafe_add_writable_namespaces_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_writable_namespaces(%this : Pointer(Void), lib_list :  Pointer(Void), ) : Void
# @list: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_list)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_writable_namespaces = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_writable_namespaces(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_writable_namespaces : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # get_file_for_path: (None)
    # @path:
    # Returns: (transfer full)
    private macro _register_get_file_for_path_vfunc(impl_method_name)
      private def self._vfunc_get_file_for_path(%this : Pointer(Void), lib_path :  Pointer(LibC::Char), ) : Pointer(Void)
        # @path: 

# Generator::BuiltInTypeArgPlan
path=::String.new(lib_path)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_file_for_path(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_file_for_path: (None)
    # @path:
    # Returns: (transfer full)
    private macro _register_unsafe_get_file_for_path_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_file_for_path(%this : Pointer(Void), lib_path :  Pointer(LibC::Char), ) : Pointer(Void)
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_file_for_path = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_file_for_path(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_file_for_path : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_file_for_uri: (None)
    # @uri:
    # Returns: (transfer full)
    private macro _register_get_file_for_uri_vfunc(impl_method_name)
      private def self._vfunc_get_file_for_uri(%this : Pointer(Void), lib_uri :  Pointer(LibC::Char), ) : Pointer(Void)
        # @uri: 

# Generator::BuiltInTypeArgPlan
uri=::String.new(lib_uri)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uri)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_file_for_uri(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_file_for_uri: (None)
    # @uri:
    # Returns: (transfer full)
    private macro _register_unsafe_get_file_for_uri_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_file_for_uri(%this : Pointer(Void), lib_uri :  Pointer(LibC::Char), ) : Pointer(Void)
# @uri: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uri)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_file_for_uri = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_file_for_uri(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_file_for_uri : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_supported_uri_schemes: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)
    private macro _register_get_supported_uri_schemes_vfunc(impl_method_name)
      private def self._vfunc_get_supported_uri_schemes(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_supported_uri_schemes(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_supported_uri_schemes: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)
    private macro _register_unsafe_get_supported_uri_schemes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_supported_uri_schemes(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_supported_uri_schemes = Proc(Pointer(Void), Pointer(Pointer(LibC::Char))).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_supported_uri_schemes(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_supported_uri_schemes : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)))? = nil
    end

    # is_active: (None)
    # Returns: (transfer none)
    private macro _register_is_active_vfunc(impl_method_name)
      private def self._vfunc_is_active(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_active(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_active: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_active_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_active(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_active = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_active(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_active : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # local_file_add_info: (None)
    # @filename:
    # @device:
    # @attribute_matcher:
    # @info:
    # @cancellable: (nullable)
    # @extra_data: (nullable)
    # @free_extra_data:
    # Returns: (transfer none)
    private macro _register_local_file_add_info_vfunc(impl_method_name)
      private def self._vfunc_local_file_add_info(%this : Pointer(Void), lib_filename :  Pointer(LibC::Char), lib_device :  UInt64, lib_attribute_matcher :  Pointer(Void), lib_info :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_extra_data :  Pointer(Void), lib_free_extra_data :  Pointer(Void*), ) : Void
        # @filename: 
# @device: 
# @attribute_matcher: 
# @info: 
# @cancellable: (nullable) 
# @extra_data: (nullable) 
# @free_extra_data: 

# Generator::BuiltInTypeArgPlan
filename=::String.new(lib_filename)
device=lib_device
# Generator::BuiltInTypeArgPlan
attribute_matcher=Gio::FileAttributeMatcher.new(lib_attribute_matcher, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
info=Gio::FileInfo.new(lib_info, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::NullableArrayPlan
extra_data=(lib_extra_data.null? ? nil : lib_extra_data)
# Generator::BuiltInTypeArgPlan
free_extra_data=GLib::DestroyNotify.new(lib_free_extra_data, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(filename, device, attribute_matcher, info, cancellable, extra_data, free_extra_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_local_file_add_info(Pointer(Void), Pointer(LibC::Char), UInt64, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void*))).pointer
        previous_def
      end
    end

    # local_file_add_info: (None)
    # @filename:
    # @device:
    # @attribute_matcher:
    # @info:
    # @cancellable: (nullable)
    # @extra_data: (nullable)
    # @free_extra_data:
    # Returns: (transfer none)
    private macro _register_unsafe_local_file_add_info_vfunc(impl_method_name)
      private def self._vfunc_unsafe_local_file_add_info(%this : Pointer(Void), lib_filename :  Pointer(LibC::Char), lib_device :  UInt64, lib_attribute_matcher :  Pointer(Void), lib_info :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_extra_data :  Pointer(Void), lib_free_extra_data :  Pointer(Void*), ) : Void
# @filename: 
# @device: 
# @attribute_matcher: 
# @info: 
# @cancellable: (nullable) 
# @extra_data: (nullable) 
# @free_extra_data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_filename, lib_device, lib_attribute_matcher, lib_info, lib_cancellable, lib_extra_data, lib_free_extra_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_local_file_add_info = Proc(Pointer(Void), Pointer(LibC::Char), UInt64, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void*), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_local_file_add_info(Pointer(Void), Pointer(LibC::Char), UInt64, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void*))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_local_file_add_info : Proc(Pointer(Void), Pointer(LibC::Char), UInt64, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void*), Void)? = nil
    end

    # local_file_moved: (None)
    # @source:
    # @dest:
    # Returns: (transfer none)
    private macro _register_local_file_moved_vfunc(impl_method_name)
      private def self._vfunc_local_file_moved(%this : Pointer(Void), lib_source :  Pointer(LibC::Char), lib_dest :  Pointer(LibC::Char), ) : Void
        # @source: 
# @dest: 

# Generator::BuiltInTypeArgPlan
source=::String.new(lib_source)
# Generator::BuiltInTypeArgPlan
dest=::String.new(lib_dest)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(source, dest)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_local_file_moved(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # local_file_moved: (None)
    # @source:
    # @dest:
    # Returns: (transfer none)
    private macro _register_unsafe_local_file_moved_vfunc(impl_method_name)
      private def self._vfunc_unsafe_local_file_moved(%this : Pointer(Void), lib_source :  Pointer(LibC::Char), lib_dest :  Pointer(LibC::Char), ) : Void
# @source: 
# @dest: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_source, lib_dest)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_local_file_moved = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_local_file_moved(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_local_file_moved : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Void)? = nil
    end

    # local_file_removed: (None)
    # @filename:
    # Returns: (transfer none)
    private macro _register_local_file_removed_vfunc(impl_method_name)
      private def self._vfunc_local_file_removed(%this : Pointer(Void), lib_filename :  Pointer(LibC::Char), ) : Void
        # @filename: 

# Generator::BuiltInTypeArgPlan
filename=::String.new(lib_filename)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(filename)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_local_file_removed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # local_file_removed: (None)
    # @filename:
    # Returns: (transfer none)
    private macro _register_unsafe_local_file_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_local_file_removed(%this : Pointer(Void), lib_filename :  Pointer(LibC::Char), ) : Void
# @filename: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_filename)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_local_file_removed = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_local_file_removed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_local_file_removed : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # local_file_set_attributes: (Throws)
    # @filename:
    # @info:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_local_file_set_attributes_vfunc(impl_method_name)
      private def self._vfunc_local_file_set_attributes(%this : Pointer(Void), lib_filename :  Pointer(LibC::Char), lib_info :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @filename: 
# @info: 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
filename=::String.new(lib_filename)
# Generator::BuiltInTypeArgPlan
info=Gio::FileInfo.new(lib_info, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(filename, info, flags, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_local_file_set_attributes(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # local_file_set_attributes: (Throws)
    # @filename:
    # @info:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_local_file_set_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_local_file_set_attributes(%this : Pointer(Void), lib_filename :  Pointer(LibC::Char), lib_info :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @filename: 
# @info: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_filename, lib_info, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_local_file_set_attributes = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_local_file_set_attributes(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_local_file_set_attributes : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), LibC::Int)? = nil
    end

    # parse_name: (None)
    # @parse_name:
    # Returns: (transfer full)
    private macro _register_parse_name_vfunc(impl_method_name)
      private def self._vfunc_parse_name(%this : Pointer(Void), lib_parse_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @parse_name: 

# Generator::BuiltInTypeArgPlan
parse_name=::String.new(lib_parse_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(parse_name)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_parse_name(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # parse_name: (None)
    # @parse_name:
    # Returns: (transfer full)
    private macro _register_unsafe_parse_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_parse_name(%this : Pointer(Void), lib_parse_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @parse_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_parse_name)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_parse_name = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_parse_name(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_parse_name : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
