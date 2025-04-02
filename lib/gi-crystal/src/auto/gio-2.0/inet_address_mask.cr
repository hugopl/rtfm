require "../g_object-2.0/object"
require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class InetAddressMask < GObject::Object
    include Initable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::InetAddressMaskClass), class_init,
        sizeof(LibGio::InetAddressMask), instance_init, 0)
    end

    GICrystal.declare_new_method(InetAddressMask, g_object_get_qdata)

    # Initialize a new `InetAddressMask`.
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

    def initialize(*, address : Gio::InetAddress? = nil, family : Gio::SocketFamily? = nil, length : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !address.nil?
        (_names.to_unsafe + _n).value = "address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, address)
        _n += 1
      end
      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
        _n += 1
      end
      if !length.nil?
        (_names.to_unsafe + _n).value = "length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, length)
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
      @@g_type ||= LibGio.g_inet_address_mask_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::InetAddressMask.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def address=(value : Gio::InetAddress?) : Gio::InetAddress?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "address", unsafe_value, Pointer(Void).null)
      value
    end

    def address : Gio::InetAddress?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "address", pointerof(value), Pointer(Void).null)
      Gio::InetAddress.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def family : Gio::SocketFamily
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "family", pointerof(value), Pointer(Void).null)
      Gio::SocketFamily.new(value)
    end

    def length=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "length", unsafe_value, Pointer(Void).null)
      value
    end

    def length : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "length", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(addr : Gio::InetAddress, length : UInt32) : self
      # g_inet_address_mask_new: (Constructor | Throws)
      # @addr:
      # @length:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_inet_address_mask_new(addr, length, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InetAddressMask.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_string(mask_string : ::String) : self
      # g_inet_address_mask_new_from_string: (Constructor | Throws)
      # @mask_string:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_inet_address_mask_new_from_string(mask_string, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InetAddressMask.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(mask2 : Gio::InetAddressMask) : Bool
      # g_inet_address_mask_equal: (Method)
      # @mask2:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_mask_equal(to_unsafe, mask2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def address : Gio::InetAddress
      # g_inet_address_mask_get_address: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_mask_get_address(to_unsafe)

      # Return value handling
      Gio::InetAddress.new(_retval, GICrystal::Transfer::None)
    end

    def family : Gio::SocketFamily
      # g_inet_address_mask_get_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_mask_get_family(to_unsafe)

      # Return value handling
      Gio::SocketFamily.new(_retval)
    end

    def length : UInt32
      # g_inet_address_mask_get_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_mask_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def matches(address : Gio::InetAddress) : Bool
      # g_inet_address_mask_matches: (Method)
      # @address:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_mask_matches(to_unsafe, address)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_string : ::String
      # g_inet_address_mask_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_inet_address_mask_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def_equals_and_hash @pointer
  end
end
