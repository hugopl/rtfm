require "./input_stream"

module Gio
  @[GICrystal::GeneratedWrapper]
  class FilterInputStream < InputStream
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::FilterInputStreamClass), class_init,
        sizeof(LibGio::FilterInputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(FilterInputStream, g_object_get_qdata)

    # Initialize a new `FilterInputStream`.
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

    def initialize(*, base_stream : Gio::InputStream? = nil, close_base_stream : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !base_stream.nil?
        (_names.to_unsafe + _n).value = "base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_stream)
        _n += 1
      end
      if !close_base_stream.nil?
        (_names.to_unsafe + _n).value = "close-base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, close_base_stream)
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
      @@g_type ||= LibGio.g_filter_input_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::FilterInputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def base_stream=(value : Gio::InputStream?) : Gio::InputStream?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "base-stream", unsafe_value, Pointer(Void).null)
      value
    end

    def base_stream : Gio::InputStream?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "base-stream", pointerof(value), Pointer(Void).null)
      Gio::InputStream.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def close_base_stream=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "close-base-stream", unsafe_value, Pointer(Void).null)
      value
    end

    def close_base_stream? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "close-base-stream", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def base_stream : Gio::InputStream
      # g_filter_input_stream_get_base_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_filter_input_stream_get_base_stream(to_unsafe)

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::None)
    end

    def close_base_stream : Bool
      # g_filter_input_stream_get_close_base_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_filter_input_stream_get_close_base_stream(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def close_base_stream=(close_base : Bool) : Nil
      # g_filter_input_stream_set_close_base_stream: (Method | Setter)
      # @close_base:
      # Returns: (transfer none)

      # C call
      LibGio.g_filter_input_stream_set_close_base_stream(to_unsafe, close_base)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
