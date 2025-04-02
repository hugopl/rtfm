require "./input_stream"
require "./file_descriptor_based"

require "./pollable_input_stream"

module Gio
  @[GICrystal::GeneratedWrapper]
  class UnixInputStream < InputStream
    include FileDescriptorBased
    include PollableInputStream

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::UnixInputStreamClass), class_init,
        sizeof(LibGio::UnixInputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(UnixInputStream, g_object_get_qdata)

    # Initialize a new `UnixInputStream`.
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

    def initialize(*, close_fd : Bool? = nil, fd : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !close_fd.nil?
        (_names.to_unsafe + _n).value = "close-fd".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, close_fd)
        _n += 1
      end
      if !fd.nil?
        (_names.to_unsafe + _n).value = "fd".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fd)
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
      @@g_type ||= LibGio.g_unix_input_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::UnixInputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def close_fd=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "close-fd", unsafe_value, Pointer(Void).null)
      value
    end

    def close_fd? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "close-fd", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def fd=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "fd", unsafe_value, Pointer(Void).null)
      value
    end

    def fd : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "fd", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(fd : Int32, close_fd : Bool) : self
      # g_unix_input_stream_new: (Constructor)
      # @fd:
      # @close_fd:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_input_stream_new(fd, close_fd)

      # Return value handling
      Gio::UnixInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def close_fd : Bool
      # g_unix_input_stream_get_close_fd: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_input_stream_get_close_fd(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def fd : Int32
      # g_unix_input_stream_get_fd: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_input_stream_get_fd(to_unsafe)

      # Return value handling
      _retval
    end

    def close_fd=(close_fd : Bool) : Nil
      # g_unix_input_stream_set_close_fd: (Method | Setter)
      # @close_fd:
      # Returns: (transfer none)

      # C call
      LibGio.g_unix_input_stream_set_close_fd(to_unsafe, close_fd)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
