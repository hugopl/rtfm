require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusMessage < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DBusMessage, g_object_get_qdata)

    # Initialize a new `DBusMessage`.
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

    def initialize(*, locked : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !locked.nil?
        (_names.to_unsafe + _n).value = "locked".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, locked)
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
      @@g_type ||= LibGio.g_dbus_message_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusMessage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def locked? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "locked", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # g_dbus_message_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_message_new

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_blob(blob : ::Bytes, capabilities : Gio::DBusCapabilityFlags) : self
      # g_dbus_message_new_from_blob: (Constructor | Throws)
      # @blob: (array length=blob_len element-type UInt8)
      # @blob_len:
      # @capabilities:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      blob_len = blob.size
      # Generator::ArrayArgPlan
      blob = blob.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_dbus_message_new_from_blob(blob, blob_len, capabilities, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_method_call(name : ::String?, path : ::String, interface_ : ::String?, method : ::String) : self
      # g_dbus_message_new_method_call: (Constructor)
      # @name: (nullable)
      # @path:
      # @interface_: (nullable)
      # @method:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::NullableArrayPlan
      interface_ = if interface_.nil?
                     Pointer(LibC::Char).null
                   else
                     interface_.to_unsafe
                   end

      # C call
      _retval = LibGio.g_dbus_message_new_method_call(name, path, interface_, method)

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_signal(path : ::String, interface_ : ::String, signal : ::String) : self
      # g_dbus_message_new_signal: (Constructor)
      # @path:
      # @interface_:
      # @signal:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_message_new_signal(path, interface_, signal)

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def bytes_needed(blob : ::Bytes) : Int64
      # g_dbus_message_bytes_needed: (Throws)
      # @blob: (array length=blob_len element-type UInt8)
      # @blob_len:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      blob_len = blob.size
      # Generator::ArrayArgPlan
      blob = blob.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_dbus_message_bytes_needed(blob, blob_len, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def bytes_needed(*blob : UInt8)
      bytes_needed(blob)
    end

    def copy : Gio::DBusMessage
      # g_dbus_message_copy: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_message_copy(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def arg0 : ::String?
      # g_dbus_message_get_arg0: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_arg0(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def arg0_path : ::String?
      # g_dbus_message_get_arg0_path: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_arg0_path(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def body : GLib::Variant?
      # g_dbus_message_get_body: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_body(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def byte_order : Gio::DBusMessageByteOrder
      # g_dbus_message_get_byte_order: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_byte_order(to_unsafe)

      # Return value handling
      Gio::DBusMessageByteOrder.new(_retval)
    end

    def destination : ::String?
      # g_dbus_message_get_destination: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_destination(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def error_name : ::String?
      # g_dbus_message_get_error_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_error_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def flags : Gio::DBusMessageFlags
      # g_dbus_message_get_flags: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_flags(to_unsafe)

      # Return value handling
      Gio::DBusMessageFlags.new(_retval)
    end

    def header(header_field : Gio::DBusMessageHeaderField) : GLib::Variant?
      # g_dbus_message_get_header: (Method)
      # @header_field:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_header(to_unsafe, header_field)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def header_fields : ::Bytes
      # g_dbus_message_get_header_fields: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type UInt8)

      # C call
      _retval = LibGio.g_dbus_message_get_header_fields(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def interface : ::String?
      # g_dbus_message_get_interface: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_interface(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def locked : Bool
      # g_dbus_message_get_locked: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_locked(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def member : ::String?
      # g_dbus_message_get_member: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_member(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def message_type : Gio::DBusMessageType
      # g_dbus_message_get_message_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_message_type(to_unsafe)

      # Return value handling
      Gio::DBusMessageType.new(_retval)
    end

    def num_unix_fds : UInt32
      # g_dbus_message_get_num_unix_fds: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_num_unix_fds(to_unsafe)

      # Return value handling
      _retval
    end

    def path : ::String?
      # g_dbus_message_get_path: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def reply_serial : UInt32
      # g_dbus_message_get_reply_serial: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_reply_serial(to_unsafe)

      # Return value handling
      _retval
    end

    def sender : ::String?
      # g_dbus_message_get_sender: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_sender(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def serial : UInt32
      # g_dbus_message_get_serial: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_serial(to_unsafe)

      # Return value handling
      _retval
    end

    def signature : ::String
      # g_dbus_message_get_signature: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_message_get_signature(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def unix_fd_list : Gio::UnixFDList?
      # g_dbus_message_get_unix_fd_list: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_message_get_unix_fd_list(to_unsafe)

      # Return value handling
      Gio::UnixFDList.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def lock : Nil
      # g_dbus_message_lock: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_lock(to_unsafe)

      # Return value handling
    end

    def new_method_error_literal(error_name : ::String, error_message : ::String) : Gio::DBusMessage
      # g_dbus_message_new_method_error_literal: (Method)
      # @error_name:
      # @error_message:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_message_new_method_error_literal(to_unsafe, error_name, error_message)

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def new_method_reply : Gio::DBusMessage
      # g_dbus_message_new_method_reply: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_message_new_method_reply(to_unsafe)

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def print(indent : UInt32) : ::String
      # g_dbus_message_print: (Method)
      # @indent:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_message_print(to_unsafe, indent)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def body=(body : _) : Nil
      # g_dbus_message_set_body: (Method)
      # @body:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      body = if !body.is_a?(GLib::Variant)
               GLib::Variant.new(body).to_unsafe
             else
               body.to_unsafe
             end

      # C call
      LibGio.g_dbus_message_set_body(to_unsafe, body)

      # Return value handling
    end

    def byte_order=(byte_order : Gio::DBusMessageByteOrder) : Nil
      # g_dbus_message_set_byte_order: (Method)
      # @byte_order:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_set_byte_order(to_unsafe, byte_order)

      # Return value handling
    end

    def destination=(value : ::String?) : Nil
      # g_dbus_message_set_destination: (Method)
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(LibC::Char).null
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_message_set_destination(to_unsafe, value)

      # Return value handling
    end

    def error_name=(value : ::String) : Nil
      # g_dbus_message_set_error_name: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_set_error_name(to_unsafe, value)

      # Return value handling
    end

    def flags=(flags : Gio::DBusMessageFlags) : Nil
      # g_dbus_message_set_flags: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_set_flags(to_unsafe, flags)

      # Return value handling
    end

    def set_header(header_field : Gio::DBusMessageHeaderField, value : _?) : Nil
      # g_dbus_message_set_header: (Method)
      # @header_field:
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if value.nil?
                Pointer(Void).null
              elsif !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_message_set_header(to_unsafe, header_field, value)

      # Return value handling
    end

    def interface=(value : ::String?) : Nil
      # g_dbus_message_set_interface: (Method)
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(LibC::Char).null
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_message_set_interface(to_unsafe, value)

      # Return value handling
    end

    def member=(value : ::String?) : Nil
      # g_dbus_message_set_member: (Method)
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(LibC::Char).null
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_message_set_member(to_unsafe, value)

      # Return value handling
    end

    def message_type=(type : Gio::DBusMessageType) : Nil
      # g_dbus_message_set_message_type: (Method)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_set_message_type(to_unsafe, type)

      # Return value handling
    end

    def num_unix_fds=(value : UInt32) : Nil
      # g_dbus_message_set_num_unix_fds: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_set_num_unix_fds(to_unsafe, value)

      # Return value handling
    end

    def path=(value : ::String?) : Nil
      # g_dbus_message_set_path: (Method)
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(LibC::Char).null
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_message_set_path(to_unsafe, value)

      # Return value handling
    end

    def reply_serial=(value : UInt32) : Nil
      # g_dbus_message_set_reply_serial: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_set_reply_serial(to_unsafe, value)

      # Return value handling
    end

    def sender=(value : ::String?) : Nil
      # g_dbus_message_set_sender: (Method)
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(LibC::Char).null
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_message_set_sender(to_unsafe, value)

      # Return value handling
    end

    def serial=(serial : UInt32) : Nil
      # g_dbus_message_set_serial: (Method)
      # @serial:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_message_set_serial(to_unsafe, serial)

      # Return value handling
    end

    def signature=(value : ::String?) : Nil
      # g_dbus_message_set_signature: (Method)
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(LibC::Char).null
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_message_set_signature(to_unsafe, value)

      # Return value handling
    end

    def unix_fd_list=(fd_list : Gio::UnixFDList?) : Nil
      # g_dbus_message_set_unix_fd_list: (Method)
      # @fd_list: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      fd_list = if fd_list.nil?
                  Pointer(Void).null
                else
                  fd_list.to_unsafe
                end

      # C call
      LibGio.g_dbus_message_set_unix_fd_list(to_unsafe, fd_list)

      # Return value handling
    end

    def to_blob(capabilities : Gio::DBusCapabilityFlags) : ::Bytes
      # g_dbus_message_to_blob: (Method | Throws)
      # @out_size: (out) (transfer full)
      # @capabilities:
      # Returns: (transfer full) (array length=out_size element-type UInt8)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      out_size = 0_u64
      # C call
      _retval = LibGio.g_dbus_message_to_blob(to_unsafe, pointerof(out_size), capabilities, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_array(_retval, out_size, GICrystal::Transfer::Full)
    end

    def to_gerror : Bool
      # g_dbus_message_to_gerror: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_message_to_gerror(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
