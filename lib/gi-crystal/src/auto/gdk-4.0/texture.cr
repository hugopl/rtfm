require "../g_object-2.0/object"
require "./paintable"

require "../gio-2.0/icon"

require "../gio-2.0/loadable_icon"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Texture < GObject::Object
    include Paintable
    include Gio::Icon
    include Gio::LoadableIcon

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::TextureClass), class_init,
        sizeof(LibGdk::Texture), instance_init, 0)
    end

    GICrystal.declare_new_method(Texture, g_object_get_qdata)

    # Initialize a new `Texture`.
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

    def initialize(*, color_state : Gdk::ColorState? = nil, height : Int32? = nil, width : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !color_state.nil?
        (_names.to_unsafe + _n).value = "color-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, color_state)
        _n += 1
      end
      if !height.nil?
        (_names.to_unsafe + _n).value = "height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height)
        _n += 1
      end
      if !width.nil?
        (_names.to_unsafe + _n).value = "width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width)
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
      @@g_type ||= LibGdk.gdk_texture_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Texture.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def color_state=(value : Gdk::ColorState?) : Gdk::ColorState?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "color-state", unsafe_value, Pointer(Void).null)
      value
    end

    def color_state : Gdk::ColorState?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "color-state", pointerof(value), Pointer(Void).null)
      Gdk::ColorState.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "height", unsafe_value, Pointer(Void).null)
      value
    end

    def height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "height", pointerof(value), Pointer(Void).null)
      value
    end

    def width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "width", unsafe_value, Pointer(Void).null)
      value
    end

    def width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def self.new_for_pixbuf(pixbuf : GdkPixbuf::Pixbuf) : self
      # gdk_texture_new_for_pixbuf: (Constructor)
      # @pixbuf:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_new_for_pixbuf(pixbuf)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_bytes(bytes : GLib::Bytes) : self
      # gdk_texture_new_from_bytes: (Constructor | Throws)
      # @bytes:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_texture_new_from_bytes(bytes, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_file(file : Gio::File) : self
      # gdk_texture_new_from_file: (Constructor | Throws)
      # @file:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_texture_new_from_file(file, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_filename(path : ::String) : self
      # gdk_texture_new_from_filename: (Constructor | Throws)
      # @path:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_texture_new_from_filename(path, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_resource(resource_path : ::String) : self
      # gdk_texture_new_from_resource: (Constructor)
      # @resource_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_new_from_resource(resource_path)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def download(data : ::Bytes, stride : UInt64) : Nil
      # gdk_texture_download: (Method)
      # @data: (array element-type UInt8)
      # @stride:
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      LibGdk.gdk_texture_download(to_unsafe, data, stride)

      # Return value handling
    end

    def color_state : Gdk::ColorState
      # gdk_texture_get_color_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_get_color_state(to_unsafe)

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::None)
    end

    def format : Gdk::MemoryFormat
      # gdk_texture_get_format: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_get_format(to_unsafe)

      # Return value handling
      Gdk::MemoryFormat.new(_retval)
    end

    def height : Int32
      # gdk_texture_get_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def width : Int32
      # gdk_texture_get_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def save_to_png(filename : ::String) : Bool
      # gdk_texture_save_to_png: (Method)
      # @filename:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_save_to_png(to_unsafe, filename)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def save_to_png_bytes : GLib::Bytes
      # gdk_texture_save_to_png_bytes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_save_to_png_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def save_to_tiff(filename : ::String) : Bool
      # gdk_texture_save_to_tiff: (Method)
      # @filename:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_save_to_tiff(to_unsafe, filename)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def save_to_tiff_bytes : GLib::Bytes
      # gdk_texture_save_to_tiff_bytes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_save_to_tiff_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
