require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusMethodInvocation < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DBusMethodInvocation, g_object_get_qdata)

    # Initialize a new `DBusMethodInvocation`.
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
      @@g_type ||= LibGio.g_dbus_method_invocation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusMethodInvocation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def connection : Gio::DBusConnection
      # g_dbus_method_invocation_get_connection: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_connection(to_unsafe)

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::None)
    end

    def interface_name : ::String?
      # g_dbus_method_invocation_get_interface_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_interface_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def message : Gio::DBusMessage
      # g_dbus_method_invocation_get_message: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_message(to_unsafe)

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::None)
    end

    def method_info : Gio::DBusMethodInfo?
      # g_dbus_method_invocation_get_method_info: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_method_info(to_unsafe)

      # Return value handling
      Gio::DBusMethodInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def method_name : ::String
      # g_dbus_method_invocation_get_method_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_method_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def object_path : ::String
      # g_dbus_method_invocation_get_object_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_object_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def parameters : GLib::Variant
      # g_dbus_method_invocation_get_parameters: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_parameters(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None)
    end

    def property_info : Gio::DBusPropertyInfo?
      # g_dbus_method_invocation_get_property_info: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_property_info(to_unsafe)

      # Return value handling
      Gio::DBusPropertyInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def sender : ::String?
      # g_dbus_method_invocation_get_sender: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_method_invocation_get_sender(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def return_dbus_error(error_name : ::String, error_message : ::String) : Nil
      # g_dbus_method_invocation_return_dbus_error: (Method)
      # @error_name:
      # @error_message:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_method_invocation_return_dbus_error(to_unsafe, error_name, error_message)

      # Return value handling
    end

    def return_error_literal(domain : UInt32, code : Int32, message : ::String) : Nil
      # g_dbus_method_invocation_return_error_literal: (Method)
      # @domain:
      # @code:
      # @message:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_method_invocation_return_error_literal(to_unsafe, domain, code, message)

      # Return value handling
    end

    def return_gerror(error : GLib::Error) : Nil
      # g_dbus_method_invocation_return_gerror: (Method)
      # @error:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_method_invocation_return_gerror(to_unsafe, error)

      # Return value handling
    end

    def return_value(parameters : _?) : Nil
      # g_dbus_method_invocation_return_value: (Method)
      # @parameters: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end

      # C call
      LibGio.g_dbus_method_invocation_return_value(to_unsafe, parameters)

      # Return value handling
    end

    def return_value_with_unix_fd_list(parameters : _?, fd_list : Gio::UnixFDList?) : Nil
      # g_dbus_method_invocation_return_value_with_unix_fd_list: (Method)
      # @parameters: (nullable)
      # @fd_list: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      fd_list = if fd_list.nil?
                  Pointer(Void).null
                else
                  fd_list.to_unsafe
                end

      # C call
      LibGio.g_dbus_method_invocation_return_value_with_unix_fd_list(to_unsafe, parameters, fd_list)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
