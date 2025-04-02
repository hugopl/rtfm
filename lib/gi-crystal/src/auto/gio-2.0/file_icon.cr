require "../g_object-2.0/object"
require "./icon"

require "./loadable_icon"

module Gio
  @[GICrystal::GeneratedWrapper]
  class FileIcon < GObject::Object
    include Icon
    include LoadableIcon

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::FileIconClass), class_init,
        sizeof(LibGio::FileIcon), instance_init, 0)
    end

    GICrystal.declare_new_method(FileIcon, g_object_get_qdata)

    # Initialize a new `FileIcon`.
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

    def initialize(*, file : Gio::File? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !file.nil?
        (_names.to_unsafe + _n).value = "file".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, file)
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
      @@g_type ||= LibGio.g_file_icon_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::FileIcon.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def file=(value : Gio::File?) : Gio::File?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "file", unsafe_value, Pointer(Void).null)
      value
    end

    def file : Gio::File?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "file", pointerof(value), Pointer(Void).null)
      Gio::AbstractFile.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(file : Gio::File) : self
      # g_file_icon_new: (Constructor)
      # @file:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_icon_new(file)

      # Return value handling
      Gio::FileIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def file : Gio::File
      # g_file_icon_get_file: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_icon_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
