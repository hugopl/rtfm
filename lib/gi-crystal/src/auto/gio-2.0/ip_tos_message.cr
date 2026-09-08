require "./socket_control_message"

module Gio
  @[GICrystal::GeneratedWrapper]
  class IPTosMessage < SocketControlMessage
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::IPTosMessageClass), class_init,
        sizeof(LibGio::IPTosMessage), instance_init, 0)
    end

    GICrystal.declare_new_method(IPTosMessage, g_object_get_qdata)

    # Initialize a new `IPTosMessage`.
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
      @@g_type ||= LibGio.g_ip_tos_message_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::IPTosMessage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(dscp : UInt8, ecn : Gio::EcnCodePoint) : self
      # g_ip_tos_message_new: (Constructor)
      # @dscp:
      # @ecn:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_ip_tos_message_new(dscp, ecn)

      # Return value handling
      Gio::IPTosMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def dscp : UInt8
      # g_ip_tos_message_get_dscp: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_ip_tos_message_get_dscp(to_unsafe)

      # Return value handling
      _retval
    end

    def ecn : Gio::EcnCodePoint
      # g_ip_tos_message_get_ecn: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_ip_tos_message_get_ecn(to_unsafe)

      # Return value handling
      Gio::EcnCodePoint.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
