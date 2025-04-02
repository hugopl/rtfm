module Gio
  class DBusAnnotationInfo
    @data : LibGio::DBusAnnotationInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusAnnotationInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref_count : Int32? = nil)
      _instance = allocate
      _instance.ref_count = ref_count unless ref_count.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusAnnotationInfo)).zero?
    end

    def ref_count : Int32
      value = to_unsafe.as(Pointer(LibGio::DBusAnnotationInfo)).value.ref_count
      value
    end

    def ref_count=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def key!
      self.key.not_nil!
    end

    def key : ::String?
      value = to_unsafe.as(Pointer(LibGio::DBusAnnotationInfo)).value.key
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def value!
      self.value.not_nil!
    end

    def value : ::String?
      value = to_unsafe.as(Pointer(LibGio::DBusAnnotationInfo)).value.value
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def annotations!
      self.annotations.not_nil!
    end

    def annotations : Enumerable(Gio::DBusAnnotationInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusAnnotationInfo)).value.annotations
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_annotation_info_get_type
    end

    def ref : Gio::DBusAnnotationInfo
      # g_dbus_annotation_info_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_annotation_info_ref(to_unsafe)

      # Return value handling
      Gio::DBusAnnotationInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_dbus_annotation_info_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_annotation_info_unref(to_unsafe)

      # Return value handling
    end

    def self.lookup(annotations : Enumerable(Gio::DBusAnnotationInfo)?, name : ::String) : ::String?
      # g_dbus_annotation_info_lookup: (None)
      # @annotations: (nullable) (array zero-terminated=1 element-type Interface)
      # @name:
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      annotations = if annotations.nil?
                      Pointer(Pointer(LibGio::DBusAnnotationInfo)).null
                    else
                      annotations.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGio::DBusAnnotationInfo)))
                    end

      # C call
      _retval = LibGio.g_dbus_annotation_info_lookup(annotations, name)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
