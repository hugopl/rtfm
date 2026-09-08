require "../g_object-2.0/object"
require "../gio-2.0/icon"

require "../gio-2.0/loadable_icon"

module GdkPixbuf
  @[GICrystal::GeneratedWrapper]
  class Pixbuf < GObject::Object
    include Gio::Icon
    include Gio::LoadableIcon

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Pixbuf, g_object_get_qdata)

    # Initialize a new `Pixbuf`.
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

    def initialize(*, bits_per_sample : Int32? = nil, colorspace : GdkPixbuf::Colorspace? = nil, has_alpha : Bool? = nil, height : Int32? = nil, n_channels : Int32? = nil, pixel_bytes : GLib::Bytes? = nil, pixels : Pointer(Void)? = nil, rowstride : Int32? = nil, width : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !bits_per_sample.nil?
        (_names.to_unsafe + _n).value = "bits-per-sample".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bits_per_sample)
        _n += 1
      end
      if !colorspace.nil?
        (_names.to_unsafe + _n).value = "colorspace".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, colorspace)
        _n += 1
      end
      if !has_alpha.nil?
        (_names.to_unsafe + _n).value = "has-alpha".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_alpha)
        _n += 1
      end
      if !height.nil?
        (_names.to_unsafe + _n).value = "height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height)
        _n += 1
      end
      if !n_channels.nil?
        (_names.to_unsafe + _n).value = "n-channels".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_channels)
        _n += 1
      end
      if !pixel_bytes.nil?
        (_names.to_unsafe + _n).value = "pixel-bytes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixel_bytes)
        _n += 1
      end
      if !pixels.nil?
        (_names.to_unsafe + _n).value = "pixels".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels)
        _n += 1
      end
      if !rowstride.nil?
        (_names.to_unsafe + _n).value = "rowstride".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, rowstride)
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
      @@g_type ||= LibGdkPixbuf.gdk_pixbuf_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GdkPixbuf::Pixbuf.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def bits_per_sample=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "bits-per-sample", unsafe_value, Pointer(Void).null)
      value
    end

    def bits_per_sample : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "bits-per-sample", pointerof(value), Pointer(Void).null)
      value
    end

    def colorspace=(value : GdkPixbuf::Colorspace) : GdkPixbuf::Colorspace
      unsafe_value = value

      LibGObject.g_object_set(self, "colorspace", unsafe_value, Pointer(Void).null)
      value
    end

    def colorspace : GdkPixbuf::Colorspace
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "colorspace", pointerof(value), Pointer(Void).null)
      GdkPixbuf::Colorspace.new(value)
    end

    def has_alpha=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-alpha", unsafe_value, Pointer(Void).null)
      value
    end

    def has_alpha? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-alpha", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def n_channels=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "n-channels", unsafe_value, Pointer(Void).null)
      value
    end

    def n_channels : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "n-channels", pointerof(value), Pointer(Void).null)
      value
    end

    def pixel_bytes=(value : GLib::Bytes?) : GLib::Bytes?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "pixel-bytes", unsafe_value, Pointer(Void).null)
      value
    end

    def pixel_bytes : GLib::Bytes?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pixel-bytes", pointerof(value), Pointer(Void).null)
      GLib::Bytes.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def pixels=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pixels", pointerof(value), Pointer(Void).null)
      value
    end

    def rowstride=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "rowstride", unsafe_value, Pointer(Void).null)
      value
    end

    def rowstride : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "rowstride", pointerof(value), Pointer(Void).null)
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

    def self.new(colorspace : GdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32) : self?
      # gdk_pixbuf_new: (Constructor)
      # @colorspace:
      # @has_alpha:
      # @bits_per_sample:
      # @width:
      # @height:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_bytes(data : GLib::Bytes, colorspace : GdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32, rowstride : Int32) : self
      # gdk_pixbuf_new_from_bytes: (Constructor)
      # @data:
      # @colorspace:
      # @has_alpha:
      # @bits_per_sample:
      # @width:
      # @height:
      # @rowstride:
      # Returns: (transfer full)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_bytes(data, colorspace, has_alpha, bits_per_sample, width, height, rowstride)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_data(data : ::Bytes, colorspace : GdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32, rowstride : Int32, destroy_fn : GdkPixbuf::PixbufDestroyNotify?, destroy_fn_data : Pointer(Void)?) : self
      # gdk_pixbuf_new_from_data: (Constructor)
      # @data: (array element-type UInt8)
      # @colorspace:
      # @has_alpha:
      # @bits_per_sample:
      # @width:
      # @height:
      # @rowstride:
      # @destroy_fn: (nullable)
      # @destroy_fn_data: (nullable)
      # Returns: (transfer full)

      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      destroy_fn_data = if destroy_fn_data.nil?
                          Pointer(Void).null
                        else
                          destroy_fn_data.to_unsafe
                        end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_data(data, colorspace, has_alpha, bits_per_sample, width, height, rowstride, destroy_fn, destroy_fn_data)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_file(filename : ::String) : self?
      # gdk_pixbuf_new_from_file: (Constructor | Throws)
      # @filename:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_file(filename, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_file_at_scale(filename : ::String, width : Int32, height : Int32, preserve_aspect_ratio : Bool) : self?
      # gdk_pixbuf_new_from_file_at_scale: (Constructor | Throws)
      # @filename:
      # @width:
      # @height:
      # @preserve_aspect_ratio:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_file_at_scale(filename, width, height, preserve_aspect_ratio, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_file_at_size(filename : ::String, width : Int32, height : Int32) : self?
      # gdk_pixbuf_new_from_file_at_size: (Constructor | Throws)
      # @filename:
      # @width:
      # @height:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_file_at_size(filename, width, height, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def self.new_from_inline(data : ::Bytes, copy_pixels : Bool) : self
      # gdk_pixbuf_new_from_inline: (Constructor | Throws)
      # @data_length:
      # @data: (array length=data_length element-type UInt8)
      # @copy_pixels:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      data_length = data.size
      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_inline(data_length, data, copy_pixels, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_resource(resource_path : ::String) : self?
      # gdk_pixbuf_new_from_resource: (Constructor | Throws)
      # @resource_path:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_resource(resource_path, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_resource_at_scale(resource_path : ::String, width : Int32, height : Int32, preserve_aspect_ratio : Bool) : self?
      # gdk_pixbuf_new_from_resource_at_scale: (Constructor | Throws)
      # @resource_path:
      # @width:
      # @height:
      # @preserve_aspect_ratio:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_resource_at_scale(resource_path, width, height, preserve_aspect_ratio, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_stream(stream : Gio::InputStream, cancellable : Gio::Cancellable?) : self?
      # gdk_pixbuf_new_from_stream: (Constructor | Throws)
      # @stream:
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_stream(stream, cancellable, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_stream_at_scale(stream : Gio::InputStream, width : Int32, height : Int32, preserve_aspect_ratio : Bool, cancellable : Gio::Cancellable?) : self?
      # gdk_pixbuf_new_from_stream_at_scale: (Constructor | Throws)
      # @stream:
      # @width:
      # @height:
      # @preserve_aspect_ratio:
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_stream_at_scale(stream, width, height, preserve_aspect_ratio, cancellable, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_stream_finish(async_result : Gio::AsyncResult) : self?
      # gdk_pixbuf_new_from_stream_finish: (Constructor | Throws)
      # @async_result:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_stream_finish(async_result, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def self.new_from_xpm_data(data : Enumerable(::String)) : self?
      # gdk_pixbuf_new_from_xpm_data: (Constructor)
      # @data: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer full) (nullable)

      # Generator::ArrayArgPlan
      data = data.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_from_xpm_data(data)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_xpm_data(*data : ::String)
      self.new_from_xpm_data(data)
    end

    def self.calculate_rowstride(colorspace : GdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32) : Int32
      # gdk_pixbuf_calculate_rowstride: (None)
      # @colorspace:
      # @has_alpha:
      # @bits_per_sample:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_calculate_rowstride(colorspace, has_alpha, bits_per_sample, width, height)

      # Return value handling
      _retval
    end

    def self.file_info(filename : ::String) : GdkPixbuf::PixbufFormat?
      # gdk_pixbuf_get_file_info: (None)
      # @filename:
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_file_info(filename, width, height)

      # Return value handling
      GdkPixbuf::PixbufFormat.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def self.file_info_async(filename : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_pixbuf_get_file_info_async: (None)
      # @filename:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGdkPixbuf.gdk_pixbuf_get_file_info_async(filename, cancellable, callback, user_data)

      # Return value handling
    end

    def file_info_finish(async_result : Gio::AsyncResult, width : Int32, height : Int32) : GdkPixbuf::PixbufFormat?
      # gdk_pixbuf_get_file_info_finish: (Throws)
      # @async_result:
      # @width: (out) (transfer full)
      # @height: (out) (transfer full)
      # Returns: (transfer none) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_file_info_finish(async_result, width, height, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::PixbufFormat.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def self.formats : GLib::SList
      # gdk_pixbuf_get_formats: (None)
      # Returns: (transfer container)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_formats

      # Return value handling
      GLib::SList(GdkPixbuf::PixbufFormat).new(_retval, GICrystal::Transfer::Container)
    end

    def init_modules(path : ::String) : Bool
      # gdk_pixbuf_init_modules: (Throws)
      # @path:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_init_modules(path, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.new_from_stream_async(stream : Gio::InputStream, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_pixbuf_new_from_stream_async: (None)
      # @stream:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGdkPixbuf.gdk_pixbuf_new_from_stream_async(stream, cancellable, callback, user_data)

      # Return value handling
    end

    def self.new_from_stream_at_scale_async(stream : Gio::InputStream, width : Int32, height : Int32, preserve_aspect_ratio : Bool, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_pixbuf_new_from_stream_at_scale_async: (None)
      # @stream:
      # @width:
      # @height:
      # @preserve_aspect_ratio:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGdkPixbuf.gdk_pixbuf_new_from_stream_at_scale_async(stream, width, height, preserve_aspect_ratio, cancellable, callback, user_data)

      # Return value handling
    end

    def save_to_stream_finish(async_result : Gio::AsyncResult) : Bool
      # gdk_pixbuf_save_to_stream_finish: (Throws)
      # @async_result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_save_to_stream_finish(async_result, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_alpha(substitute_color : Bool, r : UInt8, g : UInt8, b : UInt8) : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_add_alpha: (Method)
      # @substitute_color:
      # @r:
      # @g:
      # @b:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_add_alpha(to_unsafe, substitute_color, r, g, b)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def apply_embedded_orientation : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_apply_embedded_orientation: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_apply_embedded_orientation(to_unsafe)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def composite(dest : GdkPixbuf::Pixbuf, dest_x : Int32, dest_y : Int32, dest_width : Int32, dest_height : Int32, offset_x : Float64, offset_y : Float64, scale_x : Float64, scale_y : Float64, interp_type : GdkPixbuf::InterpType, overall_alpha : Int32) : Nil
      # gdk_pixbuf_composite: (Method)
      # @dest:
      # @dest_x:
      # @dest_y:
      # @dest_width:
      # @dest_height:
      # @offset_x:
      # @offset_y:
      # @scale_x:
      # @scale_y:
      # @interp_type:
      # @overall_alpha:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_composite(to_unsafe, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha)

      # Return value handling
    end

    def composite_color(dest : GdkPixbuf::Pixbuf, dest_x : Int32, dest_y : Int32, dest_width : Int32, dest_height : Int32, offset_x : Float64, offset_y : Float64, scale_x : Float64, scale_y : Float64, interp_type : GdkPixbuf::InterpType, overall_alpha : Int32, check_x : Int32, check_y : Int32, check_size : Int32, color1 : UInt32, color2 : UInt32) : Nil
      # gdk_pixbuf_composite_color: (Method)
      # @dest:
      # @dest_x:
      # @dest_y:
      # @dest_width:
      # @dest_height:
      # @offset_x:
      # @offset_y:
      # @scale_x:
      # @scale_y:
      # @interp_type:
      # @overall_alpha:
      # @check_x:
      # @check_y:
      # @check_size:
      # @color1:
      # @color2:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_composite_color(to_unsafe, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha, check_x, check_y, check_size, color1, color2)

      # Return value handling
    end

    def composite_color_simple(dest_width : Int32, dest_height : Int32, interp_type : GdkPixbuf::InterpType, overall_alpha : Int32, check_size : Int32, color1 : UInt32, color2 : UInt32) : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_composite_color_simple: (Method)
      # @dest_width:
      # @dest_height:
      # @interp_type:
      # @overall_alpha:
      # @check_size:
      # @color1:
      # @color2:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_composite_color_simple(to_unsafe, dest_width, dest_height, interp_type, overall_alpha, check_size, color1, color2)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def copy : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_copy(to_unsafe)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def copy_area(src_x : Int32, src_y : Int32, width : Int32, height : Int32, dest_pixbuf : GdkPixbuf::Pixbuf, dest_x : Int32, dest_y : Int32) : Nil
      # gdk_pixbuf_copy_area: (Method)
      # @src_x:
      # @src_y:
      # @width:
      # @height:
      # @dest_pixbuf:
      # @dest_x:
      # @dest_y:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_copy_area(to_unsafe, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)

      # Return value handling
    end

    def copy_options(dest_pixbuf : GdkPixbuf::Pixbuf) : Bool
      # gdk_pixbuf_copy_options: (Method)
      # @dest_pixbuf:
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_copy_options(to_unsafe, dest_pixbuf)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def fill(pixel : UInt32) : Nil
      # gdk_pixbuf_fill: (Method)
      # @pixel:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_fill(to_unsafe, pixel)

      # Return value handling
    end

    def flip(horizontal : Bool) : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_flip: (Method)
      # @horizontal:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_flip(to_unsafe, horizontal)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def bits_per_sample : Int32
      # gdk_pixbuf_get_bits_per_sample: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_bits_per_sample(to_unsafe)

      # Return value handling
      _retval
    end

    def byte_length : UInt64
      # gdk_pixbuf_get_byte_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_byte_length(to_unsafe)

      # Return value handling
      _retval
    end

    def colorspace : GdkPixbuf::Colorspace
      # gdk_pixbuf_get_colorspace: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_colorspace(to_unsafe)

      # Return value handling
      GdkPixbuf::Colorspace.new(_retval)
    end

    def has_alpha : Bool
      # gdk_pixbuf_get_has_alpha: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_has_alpha(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def height : Int32
      # gdk_pixbuf_get_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def n_channels : Int32
      # gdk_pixbuf_get_n_channels: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_n_channels(to_unsafe)

      # Return value handling
      _retval
    end

    def option(key : ::String) : ::String?
      # gdk_pixbuf_get_option: (Method)
      # @key:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_option(to_unsafe, key)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def options : Pointer(Void)
      # gdk_pixbuf_get_options: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_options(to_unsafe)

      # Return value handling
      _retval
    end

    def pixels : ::Bytes
      # gdk_pixbuf_get_pixels_with_length: (Method)
      # @length: (out) (transfer full)
      # Returns: (transfer none) (array length=length element-type UInt8)

      # Generator::OutArgUsedInReturnPlan
      length = 0_u32
      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_pixels_with_length(to_unsafe, pointerof(length))

      # Return value handling
      GICrystal.transfer_array(_retval, length, GICrystal::Transfer::None)
    end

    def rowstride : Int32
      # gdk_pixbuf_get_rowstride: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_rowstride(to_unsafe)

      # Return value handling
      _retval
    end

    def width : Int32
      # gdk_pixbuf_get_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def new_subpixbuf(src_x : Int32, src_y : Int32, width : Int32, height : Int32) : GdkPixbuf::Pixbuf
      # gdk_pixbuf_new_subpixbuf: (Method)
      # @src_x:
      # @src_y:
      # @width:
      # @height:
      # Returns: (transfer full)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_new_subpixbuf(to_unsafe, src_x, src_y, width, height)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full)
    end

    def read_pixel_bytes : GLib::Bytes
      # gdk_pixbuf_read_pixel_bytes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_read_pixel_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def read_pixels : Pointer(UInt8)
      # gdk_pixbuf_read_pixels: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_read_pixels(to_unsafe)

      # Return value handling
      _retval
    end

    def remove_option(key : ::String) : Bool
      # gdk_pixbuf_remove_option: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_remove_option(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def rotate_simple(angle : GdkPixbuf::PixbufRotation) : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_rotate_simple: (Method)
      # @angle:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_rotate_simple(to_unsafe, angle)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def saturate_and_pixelate(dest : GdkPixbuf::Pixbuf, saturation : Float32, pixelate : Bool) : Nil
      # gdk_pixbuf_saturate_and_pixelate: (Method)
      # @dest:
      # @saturation:
      # @pixelate:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_saturate_and_pixelate(to_unsafe, dest, saturation, pixelate)

      # Return value handling
    end

    def save_to_bufferv(buffer : ::Bytes, type : ::String, option_keys : Enumerable(::String)?, option_values : Enumerable(::String)?) : Bool
      # gdk_pixbuf_save_to_bufferv: (Method | Throws)
      # @buffer: (out) (transfer full) (array length=buffer_size element-type UInt8)
      # @buffer_size: (out) (transfer full)
      # @type:
      # @option_keys: (nullable) (array zero-terminated=1 element-type Utf8)
      # @option_values: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      buffer_size = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      option_keys = if option_keys.nil?
                      Pointer(Pointer(LibC::Char)).null
                    else
                      option_keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                    end
      # Generator::NullableArrayPlan
      option_values = if option_values.nil?
                        Pointer(Pointer(LibC::Char)).null
                      else
                        option_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                      end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_save_to_bufferv(to_unsafe, buffer, buffer_size, type, option_keys, option_values, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def save_to_callbackv(save_func : GdkPixbuf::PixbufSaveFunc, user_data : Pointer(Void)?, type : ::String, option_keys : Enumerable(::String)?, option_values : Enumerable(::String)?) : Bool
      # gdk_pixbuf_save_to_callbackv: (Method | Throws)
      # @save_func:
      # @user_data: (nullable)
      # @type:
      # @option_keys: (nullable) (array zero-terminated=1 element-type Utf8)
      # @option_values: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::NullableArrayPlan
      option_keys = if option_keys.nil?
                      Pointer(Pointer(LibC::Char)).null
                    else
                      option_keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                    end
      # Generator::NullableArrayPlan
      option_values = if option_values.nil?
                        Pointer(Pointer(LibC::Char)).null
                      else
                        option_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                      end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_save_to_callbackv(to_unsafe, save_func, user_data, type, option_keys, option_values, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def save_to_streamv(stream : Gio::OutputStream, type : ::String, option_keys : Enumerable(::String)?, option_values : Enumerable(::String)?, cancellable : Gio::Cancellable?) : Bool
      # gdk_pixbuf_save_to_streamv: (Method | Throws)
      # @stream:
      # @type:
      # @option_keys: (nullable) (array zero-terminated=1 element-type Utf8)
      # @option_values: (nullable) (array zero-terminated=1 element-type Utf8)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      option_keys = if option_keys.nil?
                      Pointer(Pointer(LibC::Char)).null
                    else
                      option_keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                    end
      # Generator::NullableArrayPlan
      option_values = if option_values.nil?
                        Pointer(Pointer(LibC::Char)).null
                      else
                        option_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                      end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_save_to_streamv(to_unsafe, stream, type, option_keys, option_values, cancellable, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def save_to_streamv_async(stream : Gio::OutputStream, type : ::String, option_keys : Enumerable(::String)?, option_values : Enumerable(::String)?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_pixbuf_save_to_streamv_async: (Method)
      # @stream:
      # @type:
      # @option_keys: (nullable) (array zero-terminated=1 element-type Utf8)
      # @option_values: (nullable) (array zero-terminated=1 element-type Utf8)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      option_keys = if option_keys.nil?
                      Pointer(Pointer(LibC::Char)).null
                    else
                      option_keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                    end
      # Generator::NullableArrayPlan
      option_values = if option_values.nil?
                        Pointer(Pointer(LibC::Char)).null
                      else
                        option_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                      end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGdkPixbuf.gdk_pixbuf_save_to_streamv_async(to_unsafe, stream, type, option_keys, option_values, cancellable, callback, user_data)

      # Return value handling
    end

    def savev(filename : ::String, type : ::String, option_keys : Enumerable(::String)?, option_values : Enumerable(::String)?) : Bool
      # gdk_pixbuf_savev: (Method | Throws)
      # @filename:
      # @type:
      # @option_keys: (nullable) (array zero-terminated=1 element-type Utf8)
      # @option_values: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      option_keys = if option_keys.nil?
                      Pointer(Pointer(LibC::Char)).null
                    else
                      option_keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                    end
      # Generator::NullableArrayPlan
      option_values = if option_values.nil?
                        Pointer(Pointer(LibC::Char)).null
                      else
                        option_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                      end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_savev(to_unsafe, filename, type, option_keys, option_values, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def scale(dest : GdkPixbuf::Pixbuf, dest_x : Int32, dest_y : Int32, dest_width : Int32, dest_height : Int32, offset_x : Float64, offset_y : Float64, scale_x : Float64, scale_y : Float64, interp_type : GdkPixbuf::InterpType) : Nil
      # gdk_pixbuf_scale: (Method)
      # @dest:
      # @dest_x:
      # @dest_y:
      # @dest_width:
      # @dest_height:
      # @offset_x:
      # @offset_y:
      # @scale_x:
      # @scale_y:
      # @interp_type:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_scale(to_unsafe, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)

      # Return value handling
    end

    def scale_simple(dest_width : Int32, dest_height : Int32, interp_type : GdkPixbuf::InterpType) : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_scale_simple: (Method)
      # @dest_width:
      # @dest_height:
      # @interp_type:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_scale_simple(to_unsafe, dest_width, dest_height, interp_type)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def set_option(key : ::String, value : ::String) : Bool
      # gdk_pixbuf_set_option: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_set_option(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
