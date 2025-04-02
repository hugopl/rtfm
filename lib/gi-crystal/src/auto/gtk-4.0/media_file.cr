require "./media_stream"
require "../gdk-4.0/paintable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class MediaFile < MediaStream
    include Gdk::Paintable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::MediaFileClass), class_init,
        sizeof(LibGtk::MediaFile), instance_init, 0)
    end

    GICrystal.declare_new_method(MediaFile, g_object_get_qdata)

    # Initialize a new `MediaFile`.
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

    def initialize(*, duration : Int64? = nil, ended : Bool? = nil, error : GLib::Error? = nil, file : Gio::File? = nil, has_audio : Bool? = nil, has_video : Bool? = nil, input_stream : Gio::InputStream? = nil, loop : Bool? = nil, muted : Bool? = nil, playing : Bool? = nil, prepared : Bool? = nil, seekable : Bool? = nil, seeking : Bool? = nil, timestamp : Int64? = nil, volume : Float64? = nil)
      _names = uninitialized Pointer(LibC::Char)[15]
      _values = StaticArray(LibGObject::Value, 15).new(LibGObject::Value.new)
      _n = 0

      if !duration.nil?
        (_names.to_unsafe + _n).value = "duration".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, duration)
        _n += 1
      end
      if !ended.nil?
        (_names.to_unsafe + _n).value = "ended".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ended)
        _n += 1
      end
      if !error.nil?
        (_names.to_unsafe + _n).value = "error".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, error)
        _n += 1
      end
      if !file.nil?
        (_names.to_unsafe + _n).value = "file".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, file)
        _n += 1
      end
      if !has_audio.nil?
        (_names.to_unsafe + _n).value = "has-audio".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_audio)
        _n += 1
      end
      if !has_video.nil?
        (_names.to_unsafe + _n).value = "has-video".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_video)
        _n += 1
      end
      if !input_stream.nil?
        (_names.to_unsafe + _n).value = "input-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_stream)
        _n += 1
      end
      if !loop.nil?
        (_names.to_unsafe + _n).value = "loop".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, loop)
        _n += 1
      end
      if !muted.nil?
        (_names.to_unsafe + _n).value = "muted".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, muted)
        _n += 1
      end
      if !playing.nil?
        (_names.to_unsafe + _n).value = "playing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, playing)
        _n += 1
      end
      if !prepared.nil?
        (_names.to_unsafe + _n).value = "prepared".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, prepared)
        _n += 1
      end
      if !seekable.nil?
        (_names.to_unsafe + _n).value = "seekable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, seekable)
        _n += 1
      end
      if !seeking.nil?
        (_names.to_unsafe + _n).value = "seeking".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, seeking)
        _n += 1
      end
      if !timestamp.nil?
        (_names.to_unsafe + _n).value = "timestamp".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, timestamp)
        _n += 1
      end
      if !volume.nil?
        (_names.to_unsafe + _n).value = "volume".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, volume)
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
      @@g_type ||= LibGtk.gtk_media_file_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::MediaFile.new(Void*, GICrystal::Transfer)
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

    def input_stream=(value : Gio::InputStream?) : Gio::InputStream?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "input-stream", unsafe_value, Pointer(Void).null)
      value
    end

    def input_stream : Gio::InputStream?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "input-stream", pointerof(value), Pointer(Void).null)
      Gio::InputStream.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # gtk_media_file_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_media_file_new

      # Return value handling
      Gtk::MediaFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_file(file : Gio::File) : self
      # gtk_media_file_new_for_file: (Constructor)
      # @file:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_media_file_new_for_file(file)

      # Return value handling
      Gtk::MediaFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_filename(filename : ::String) : self
      # gtk_media_file_new_for_filename: (Constructor)
      # @filename:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_media_file_new_for_filename(filename)

      # Return value handling
      Gtk::MediaFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_input_stream(stream : Gio::InputStream) : self
      # gtk_media_file_new_for_input_stream: (Constructor)
      # @stream:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_media_file_new_for_input_stream(stream)

      # Return value handling
      Gtk::MediaFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_resource(resource_path : ::String) : self
      # gtk_media_file_new_for_resource: (Constructor)
      # @resource_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_media_file_new_for_resource(resource_path)

      # Return value handling
      Gtk::MediaFile.new(_retval, GICrystal::Transfer::Full)
    end

    def clear : Nil
      # gtk_media_file_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_file_clear(to_unsafe)

      # Return value handling
    end

    def file : Gio::File?
      # gtk_media_file_get_file: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_media_file_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def input_stream : Gio::InputStream?
      # gtk_media_file_get_input_stream: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_media_file_get_input_stream(to_unsafe)

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def file=(file : Gio::File?) : Nil
      # gtk_media_file_set_file: (Method | Setter)
      # @file: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      LibGtk.gtk_media_file_set_file(to_unsafe, file)

      # Return value handling
    end

    def filename=(filename : ::String?) : Nil
      # gtk_media_file_set_filename: (Method)
      # @filename: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filename = if filename.nil?
                   Pointer(LibC::Char).null
                 else
                   filename.to_unsafe
                 end

      # C call
      LibGtk.gtk_media_file_set_filename(to_unsafe, filename)

      # Return value handling
    end

    def input_stream=(stream : Gio::InputStream?) : Nil
      # gtk_media_file_set_input_stream: (Method | Setter)
      # @stream: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      stream = if stream.nil?
                 Pointer(Void).null
               else
                 stream.to_unsafe
               end

      # C call
      LibGtk.gtk_media_file_set_input_stream(to_unsafe, stream)

      # Return value handling
    end

    def resource=(resource_path : ::String?) : Nil
      # gtk_media_file_set_resource: (Method)
      # @resource_path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      resource_path = if resource_path.nil?
                        Pointer(LibC::Char).null
                      else
                        resource_path.to_unsafe
                      end

      # C call
      LibGtk.gtk_media_file_set_resource(to_unsafe, resource_path)

      # Return value handling
    end

    # close: (None)
    # Returns: (transfer none)
    private macro _register_close_vfunc(impl_method_name)
      private def self._vfunc_close(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_close(Pointer(Void))).pointer
        previous_def
      end
    end

    # close: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_close_vfunc(impl_method_name)
      private def self._vfunc_unsafe_close(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close : Proc(Pointer(Void), Void)? = nil
    end

    # open: (None)
    # Returns: (transfer none)
    private macro _register_open_vfunc(impl_method_name)
      private def self._vfunc_open(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_open(Pointer(Void))).pointer
        previous_def
      end
    end

    # open: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_open_vfunc(impl_method_name)
      private def self._vfunc_unsafe_open(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_open = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_open(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_open : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
