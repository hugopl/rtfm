require "./cookie_jar"
require "./session_feature"

module Soup
  @[GICrystal::GeneratedWrapper]
  class CookieJarDB < CookieJar
    include SessionFeature

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(CookieJarDB, g_object_get_qdata)

    # Initialize a new `CookieJarDB`.
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

    def initialize(*, accept_policy : Soup::CookieJarAcceptPolicy? = nil, filename : ::String? = nil, read_only : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !accept_policy.nil?
        (_names.to_unsafe + _n).value = "accept-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_policy)
        _n += 1
      end
      if !filename.nil?
        (_names.to_unsafe + _n).value = "filename".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filename)
        _n += 1
      end
      if !read_only.nil?
        (_names.to_unsafe + _n).value = "read-only".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, read_only)
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
      @@g_type ||= LibSoup.soup_cookie_jar_db_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::CookieJarDB.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def filename=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "filename", unsafe_value, Pointer(Void).null)
      value
    end

    def filename : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#filename` property to nil.
    def filename=(value : Nil) : Nil
      LibGObject.g_object_set(self, "filename", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#filename`, but can return nil.
    def filename? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(filename : ::String, read_only : Bool) : self
      # soup_cookie_jar_db_new: (Constructor)
      # @filename:
      # @read_only:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_jar_db_new(filename, read_only)

      # Return value handling
      Soup::CookieJarDB.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
