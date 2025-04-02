require "../g_object-2.0/object"
require "./session_feature"

module Soup
  @[GICrystal::GeneratedWrapper]
  class Cache < GObject::Object
    include SessionFeature

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::CacheClass), class_init,
        sizeof(LibSoup::Cache), instance_init, 0)
    end

    GICrystal.declare_new_method(Cache, g_object_get_qdata)

    # Initialize a new `Cache`.
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

    def initialize(*, cache_dir : ::String? = nil, cache_type : Soup::CacheType? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !cache_dir.nil?
        (_names.to_unsafe + _n).value = "cache-dir".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cache_dir)
        _n += 1
      end
      if !cache_type.nil?
        (_names.to_unsafe + _n).value = "cache-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cache_type)
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
      @@g_type ||= LibSoup.soup_cache_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::Cache.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def cache_dir=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "cache-dir", unsafe_value, Pointer(Void).null)
      value
    end

    def cache_dir : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "cache-dir", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#cache_dir` property to nil.
    def cache_dir=(value : Nil) : Nil
      LibGObject.g_object_set(self, "cache-dir", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#cache_dir`, but can return nil.
    def cache_dir? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "cache-dir", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def cache_type=(value : Soup::CacheType) : Soup::CacheType
      unsafe_value = value

      LibGObject.g_object_set(self, "cache-type", unsafe_value, Pointer(Void).null)
      value
    end

    def cache_type : Soup::CacheType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "cache-type", pointerof(value), Pointer(Void).null)
      Soup::CacheType.new(value)
    end

    def self.new(cache_dir : ::String?, cache_type : Soup::CacheType) : self
      # soup_cache_new: (Constructor)
      # @cache_dir: (nullable)
      # @cache_type:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      cache_dir = if cache_dir.nil?
                    Pointer(LibC::Char).null
                  else
                    cache_dir.to_unsafe
                  end

      # C call
      _retval = LibSoup.soup_cache_new(cache_dir, cache_type)

      # Return value handling
      Soup::Cache.new(_retval, GICrystal::Transfer::Full)
    end

    def clear : Nil
      # soup_cache_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cache_clear(to_unsafe)

      # Return value handling
    end

    def dump : Nil
      # soup_cache_dump: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cache_dump(to_unsafe)

      # Return value handling
    end

    def flush : Nil
      # soup_cache_flush: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cache_flush(to_unsafe)

      # Return value handling
    end

    def max_size : UInt32
      # soup_cache_get_max_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cache_get_max_size(to_unsafe)

      # Return value handling
      _retval
    end

    def load : Nil
      # soup_cache_load: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cache_load(to_unsafe)

      # Return value handling
    end

    def max_size=(max_size : UInt32) : Nil
      # soup_cache_set_max_size: (Method)
      # @max_size:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cache_set_max_size(to_unsafe, max_size)

      # Return value handling
    end

    # get_cacheability: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_get_cacheability_vfunc(impl_method_name)
      private def self._vfunc_get_cacheability(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : UInt32
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::Message.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_cacheability(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_cacheability: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_get_cacheability_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_cacheability(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : UInt32
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_cacheability = Proc(Pointer(Void), Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_cacheability(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_cacheability : Proc(Pointer(Void), Pointer(Void), UInt32)? = nil
    end

    def_equals_and_hash @pointer
  end
end
