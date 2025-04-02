require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class CicpParams < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::CicpParamsClass), class_init,
        sizeof(LibGdk::CicpParams), instance_init, 0)
    end

    GICrystal.declare_new_method(CicpParams, g_object_get_qdata)

    # Initialize a new `CicpParams`.
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

    def initialize(*, color_primaries : UInt32? = nil, matrix_coefficients : UInt32? = nil, range : Gdk::CicpRange? = nil, transfer_function : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !color_primaries.nil?
        (_names.to_unsafe + _n).value = "color-primaries".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, color_primaries)
        _n += 1
      end
      if !matrix_coefficients.nil?
        (_names.to_unsafe + _n).value = "matrix-coefficients".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, matrix_coefficients)
        _n += 1
      end
      if !range.nil?
        (_names.to_unsafe + _n).value = "range".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, range)
        _n += 1
      end
      if !transfer_function.nil?
        (_names.to_unsafe + _n).value = "transfer-function".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transfer_function)
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
      @@g_type ||= LibGdk.gdk_cicp_params_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::CicpParams.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def color_primaries=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "color-primaries", unsafe_value, Pointer(Void).null)
      value
    end

    def color_primaries : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "color-primaries", pointerof(value), Pointer(Void).null)
      value
    end

    def matrix_coefficients=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "matrix-coefficients", unsafe_value, Pointer(Void).null)
      value
    end

    def matrix_coefficients : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "matrix-coefficients", pointerof(value), Pointer(Void).null)
      value
    end

    def range=(value : Gdk::CicpRange) : Gdk::CicpRange
      unsafe_value = value

      LibGObject.g_object_set(self, "range", unsafe_value, Pointer(Void).null)
      value
    end

    def range : Gdk::CicpRange
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "range", pointerof(value), Pointer(Void).null)
      Gdk::CicpRange.new(value)
    end

    def transfer_function=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "transfer-function", unsafe_value, Pointer(Void).null)
      value
    end

    def transfer_function : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "transfer-function", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # gdk_cicp_params_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_cicp_params_new

      # Return value handling
      Gdk::CicpParams.new(_retval, GICrystal::Transfer::Full)
    end

    def build_color_state : Gdk::ColorState
      # gdk_cicp_params_build_color_state: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_cicp_params_build_color_state(to_unsafe, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def color_primaries : UInt32
      # gdk_cicp_params_get_color_primaries: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_cicp_params_get_color_primaries(to_unsafe)

      # Return value handling
      _retval
    end

    def matrix_coefficients : UInt32
      # gdk_cicp_params_get_matrix_coefficients: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_cicp_params_get_matrix_coefficients(to_unsafe)

      # Return value handling
      _retval
    end

    def range : Gdk::CicpRange
      # gdk_cicp_params_get_range: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_cicp_params_get_range(to_unsafe)

      # Return value handling
      Gdk::CicpRange.new(_retval)
    end

    def transfer_function : UInt32
      # gdk_cicp_params_get_transfer_function: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_cicp_params_get_transfer_function(to_unsafe)

      # Return value handling
      _retval
    end

    def color_primaries=(color_primaries : UInt32) : Nil
      # gdk_cicp_params_set_color_primaries: (Method | Setter)
      # @color_primaries:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_cicp_params_set_color_primaries(to_unsafe, color_primaries)

      # Return value handling
    end

    def matrix_coefficients=(matrix_coefficients : UInt32) : Nil
      # gdk_cicp_params_set_matrix_coefficients: (Method | Setter)
      # @matrix_coefficients:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_cicp_params_set_matrix_coefficients(to_unsafe, matrix_coefficients)

      # Return value handling
    end

    def range=(range : Gdk::CicpRange) : Nil
      # gdk_cicp_params_set_range: (Method | Setter)
      # @range:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_cicp_params_set_range(to_unsafe, range)

      # Return value handling
    end

    def transfer_function=(transfer_function : UInt32) : Nil
      # gdk_cicp_params_set_transfer_function: (Method | Setter)
      # @transfer_function:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_cicp_params_set_transfer_function(to_unsafe, transfer_function)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
