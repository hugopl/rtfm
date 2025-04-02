require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Credentials < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::CredentialsClass), class_init,
        sizeof(LibGio::Credentials), instance_init, 0)
    end

    GICrystal.declare_new_method(Credentials, g_object_get_qdata)

    # Initialize a new `Credentials`.
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
      @@g_type ||= LibGio.g_credentials_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Credentials.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_credentials_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_credentials_new

      # Return value handling
      Gio::Credentials.new(_retval, GICrystal::Transfer::Full)
    end

    def unix_pid : Int32
      # g_credentials_get_unix_pid: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_credentials_get_unix_pid(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def unix_user : UInt32
      # g_credentials_get_unix_user: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_credentials_get_unix_user(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def is_same_user(other_credentials : Gio::Credentials) : Bool
      # g_credentials_is_same_user: (Method | Throws)
      # @other_credentials:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_credentials_is_same_user(to_unsafe, other_credentials, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_native(native_type : Gio::CredentialsType, native : Pointer(Void)) : Nil
      # g_credentials_set_native: (Method)
      # @native_type:
      # @native:
      # Returns: (transfer none)

      # C call
      LibGio.g_credentials_set_native(to_unsafe, native_type, native)

      # Return value handling
    end

    def unix_user=(uid : UInt32) : Bool
      # g_credentials_set_unix_user: (Method | Throws)
      # @uid:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_credentials_set_unix_user(to_unsafe, uid, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_string : ::String
      # g_credentials_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_credentials_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def_equals_and_hash @pointer
  end
end
