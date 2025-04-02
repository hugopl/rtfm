require "./socket_address"
require "./socket_connectable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class NativeSocketAddress < SocketAddress
    include SocketConnectable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::NativeSocketAddressClass), class_init,
        sizeof(LibGio::NativeSocketAddress), instance_init, 0)
    end

    GICrystal.declare_new_method(NativeSocketAddress, g_object_get_qdata)

    # Initialize a new `NativeSocketAddress`.
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

    def initialize(*, family : Gio::SocketFamily? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
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
      @@g_type ||= LibGio.g_native_socket_address_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::NativeSocketAddress.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(native : Pointer(Void)?, len : UInt64) : self
      # g_native_socket_address_new: (Constructor)
      # @native: (nullable)
      # @len:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      native = if native.nil?
                 Pointer(Void).null
               else
                 native.to_unsafe
               end

      # C call
      _retval = LibGio.g_native_socket_address_new(native, len)

      # Return value handling
      Gio::NativeSocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
