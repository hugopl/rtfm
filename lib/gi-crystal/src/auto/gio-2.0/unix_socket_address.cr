require "./socket_address"
require "./socket_connectable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class UnixSocketAddress < SocketAddress
    include SocketConnectable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::UnixSocketAddressClass), class_init,
        sizeof(LibGio::UnixSocketAddress), instance_init, 0)
    end

    GICrystal.declare_new_method(UnixSocketAddress, g_object_get_qdata)

    # Initialize a new `UnixSocketAddress`.
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

    def initialize(*, abstract _abstract : Bool? = nil, address_type : Gio::UnixSocketAddressType? = nil, family : Gio::SocketFamily? = nil, path : ::String? = nil, path_as_array : ::Bytes? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !_abstract.nil?
        (_names.to_unsafe + _n).value = "abstract".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, _abstract)
        _n += 1
      end
      if !address_type.nil?
        (_names.to_unsafe + _n).value = "address-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, address_type)
        _n += 1
      end
      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
        _n += 1
      end
      if !path.nil?
        (_names.to_unsafe + _n).value = "path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, path)
        _n += 1
      end
      if !path_as_array.nil?
        (_names.to_unsafe + _n).value = "path-as-array".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, path_as_array)
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
      @@g_type ||= LibGio.g_unix_socket_address_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::UnixSocketAddress.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def abstract=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "abstract", unsafe_value, Pointer(Void).null)
      value
    end

    def abstract? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "abstract", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def address_type=(value : Gio::UnixSocketAddressType) : Gio::UnixSocketAddressType
      unsafe_value = value

      LibGObject.g_object_set(self, "address-type", unsafe_value, Pointer(Void).null)
      value
    end

    def address_type : Gio::UnixSocketAddressType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "address-type", pointerof(value), Pointer(Void).null)
      Gio::UnixSocketAddressType.new(value)
    end

    def path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "path", unsafe_value, Pointer(Void).null)
      value
    end

    def path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#path` property to nil.
    def path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#path`, but can return nil.
    def path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def path_as_array=(value : ::Bytes) : ::Bytes
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "path-as-array", unsafe_value, Pointer(Void).null)
      value
    end

    def path_as_array : ::Bytes
      # Returns: None

      value = uninitialized Pointer(UInt8)
      LibGObject.g_object_get(self, "path-as-array", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(path : ::String) : self
      # g_unix_socket_address_new: (Constructor)
      # @path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_socket_address_new(path)

      # Return value handling
      Gio::UnixSocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_abstract(path : Enumerable(Int8)) : self
      # g_unix_socket_address_new_abstract: (Constructor)
      # @path: (array length=path_len element-type Int8)
      # @path_len:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      path_len = path.size
      # Generator::ArrayArgPlan
      path = path.to_a.to_unsafe.as(Pointer(Int8))

      # C call
      _retval = LibGio.g_unix_socket_address_new_abstract(path, path_len)

      # Return value handling
      Gio::UnixSocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_abstract(*path : Int8)
      self.new_abstract(path)
    end

    def self.new_with_type(path : Enumerable(Int8), type : Gio::UnixSocketAddressType) : self
      # g_unix_socket_address_new_with_type: (Constructor)
      # @path: (array length=path_len element-type Int8)
      # @path_len:
      # @type:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      path_len = path.size
      # Generator::ArrayArgPlan
      path = path.to_a.to_unsafe.as(Pointer(Int8))

      # C call
      _retval = LibGio.g_unix_socket_address_new_with_type(path, path_len, type)

      # Return value handling
      Gio::UnixSocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def self.abstract_names_supported : Bool
      # g_unix_socket_address_abstract_names_supported: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_socket_address_abstract_names_supported

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def address_type : Gio::UnixSocketAddressType
      # g_unix_socket_address_get_address_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_socket_address_get_address_type(to_unsafe)

      # Return value handling
      Gio::UnixSocketAddressType.new(_retval)
    end

    @[Deprecated]
    def is_abstract : Bool
      # g_unix_socket_address_get_is_abstract: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_socket_address_get_is_abstract(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def path : ::String
      # g_unix_socket_address_get_path: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_socket_address_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def path_len : UInt64
      # g_unix_socket_address_get_path_len: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_socket_address_get_path_len(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
