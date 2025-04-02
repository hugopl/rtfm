require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class TestDBus < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TestDBus, g_object_get_qdata)

    # Initialize a new `TestDBus`.
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

    def initialize(*, flags : Gio::TestDBusFlags? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
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
      @@g_type ||= LibGio.g_test_dbus_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::TestDBus.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def flags=(value : Gio::TestDBusFlags) : Gio::TestDBusFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Gio::TestDBusFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Gio::TestDBusFlags.new(value)
    end

    def self.new(flags : Gio::TestDBusFlags) : self
      # g_test_dbus_new: (Constructor)
      # @flags:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_test_dbus_new(flags)

      # Return value handling
      Gio::TestDBus.new(_retval, GICrystal::Transfer::Full)
    end

    def self.unset : Nil
      # g_test_dbus_unset: (None)
      # Returns: (transfer none)

      # C call
      LibGio.g_test_dbus_unset

      # Return value handling
    end

    def add_service_dir(path : ::String) : Nil
      # g_test_dbus_add_service_dir: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGio.g_test_dbus_add_service_dir(to_unsafe, path)

      # Return value handling
    end

    def down : Nil
      # g_test_dbus_down: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_test_dbus_down(to_unsafe)

      # Return value handling
    end

    def bus_address : ::String?
      # g_test_dbus_get_bus_address: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_test_dbus_get_bus_address(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def flags : Gio::TestDBusFlags
      # g_test_dbus_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_test_dbus_get_flags(to_unsafe)

      # Return value handling
      Gio::TestDBusFlags.new(_retval)
    end

    def stop : Nil
      # g_test_dbus_stop: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_test_dbus_stop(to_unsafe)

      # Return value handling
    end

    def up : Nil
      # g_test_dbus_up: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_test_dbus_up(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
