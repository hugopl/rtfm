require "./socket_control_message"

module Gio
  @[GICrystal::GeneratedWrapper]
  class UnixFDMessage < SocketControlMessage
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::UnixFDMessageClass), class_init,
        sizeof(LibGio::UnixFDMessage), instance_init, 0)
    end

    GICrystal.declare_new_method(UnixFDMessage, g_object_get_qdata)

    # Initialize a new `UnixFDMessage`.
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

    def initialize(*, fd_list : Gio::UnixFDList? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !fd_list.nil?
        (_names.to_unsafe + _n).value = "fd-list".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fd_list)
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
      @@g_type ||= LibGio.g_unix_fd_message_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::UnixFDMessage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def fd_list=(value : Gio::UnixFDList?) : Gio::UnixFDList?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "fd-list", unsafe_value, Pointer(Void).null)
      value
    end

    def fd_list : Gio::UnixFDList?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "fd-list", pointerof(value), Pointer(Void).null)
      Gio::UnixFDList.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # g_unix_fd_message_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_fd_message_new

      # Return value handling
      Gio::UnixFDMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_fd_list(fd_list : Gio::UnixFDList) : self
      # g_unix_fd_message_new_with_fd_list: (Constructor)
      # @fd_list:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_fd_message_new_with_fd_list(fd_list)

      # Return value handling
      Gio::UnixFDMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def append_fd(fd : Int32) : Bool
      # g_unix_fd_message_append_fd: (Method | Throws)
      # @fd:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_unix_fd_message_append_fd(to_unsafe, fd, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def fd_list : Gio::UnixFDList
      # g_unix_fd_message_get_fd_list: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_fd_message_get_fd_list(to_unsafe)

      # Return value handling
      Gio::UnixFDList.new(_retval, GICrystal::Transfer::None)
    end

    def steal_fds : Enumerable(Int32)
      # g_unix_fd_message_steal_fds: (Method)
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (array length=length element-type Int32)

      # Generator::OutArgUsedInReturnPlan
      length = 0
      # C call
      _retval = LibGio.g_unix_fd_message_steal_fds(to_unsafe, pointerof(length))

      # Return value handling
      GICrystal.transfer_array(_retval, length, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
