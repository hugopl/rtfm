require "../g_object-2.0/object"
require "../gdk-4.0/paintable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class MediaStream < GObject::Object
    include Gdk::Paintable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::MediaStreamClass), class_init,
        sizeof(LibGtk::MediaStream), instance_init, 0)
    end

    GICrystal.declare_new_method(MediaStream, g_object_get_qdata)

    # Initialize a new `MediaStream`.
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

    def initialize(*, duration : Int64? = nil, ended : Bool? = nil, error : GLib::Error? = nil, has_audio : Bool? = nil, has_video : Bool? = nil, loop : Bool? = nil, muted : Bool? = nil, playing : Bool? = nil, prepared : Bool? = nil, seekable : Bool? = nil, seeking : Bool? = nil, timestamp : Int64? = nil, volume : Float64? = nil)
      _names = uninitialized Pointer(LibC::Char)[13]
      _values = StaticArray(LibGObject::Value, 13).new(LibGObject::Value.new)
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
      @@g_type ||= LibGtk.gtk_media_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::MediaStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def duration : Int64
      # Returns: None

      value = uninitialized Int64
      LibGObject.g_object_get(self, "duration", pointerof(value), Pointer(Void).null)
      value
    end

    def ended? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "ended", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def error : GLib::Error
      # Returns: None

      value = uninitialized Pointer(LibGLib::Error)
      LibGObject.g_object_get(self, "error", pointerof(value), Pointer(Void).null)
      Gtk.gerror_to_crystal(value, GICrystal::Transfer::None)
    end

    def has_audio? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-audio", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_video? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-video", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def loop=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "loop", unsafe_value, Pointer(Void).null)
      value
    end

    def loop? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "loop", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def muted=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "muted", unsafe_value, Pointer(Void).null)
      value
    end

    def muted? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "muted", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def playing=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "playing", unsafe_value, Pointer(Void).null)
      value
    end

    def playing? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "playing", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def prepared? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "prepared", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def seekable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "seekable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def seeking? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "seeking", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def timestamp : Int64
      # Returns: None

      value = uninitialized Int64
      LibGObject.g_object_get(self, "timestamp", pointerof(value), Pointer(Void).null)
      value
    end

    def volume=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "volume", unsafe_value, Pointer(Void).null)
      value
    end

    def volume : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "volume", pointerof(value), Pointer(Void).null)
      value
    end

    def gerror(error : GLib::Error) : Nil
      # gtk_media_stream_gerror: (Method)
      # @error: (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_gerror(to_unsafe, error)

      # Return value handling
    end

    def duration : Int64
      # gtk_media_stream_get_duration: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_get_duration(to_unsafe)

      # Return value handling
      _retval
    end

    def ended : Bool
      # gtk_media_stream_get_ended: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_get_ended(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def error : GLib::Error?
      # gtk_media_stream_get_error: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_media_stream_get_error(to_unsafe)

      # Return value handling
      Gtk.gerror_to_crystal(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def loop : Bool
      # gtk_media_stream_get_loop: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_get_loop(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def muted : Bool
      # gtk_media_stream_get_muted: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_get_muted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def playing : Bool
      # gtk_media_stream_get_playing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_get_playing(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def timestamp : Int64
      # gtk_media_stream_get_timestamp: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_get_timestamp(to_unsafe)

      # Return value handling
      _retval
    end

    def volume : Float64
      # gtk_media_stream_get_volume: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_get_volume(to_unsafe)

      # Return value handling
      _retval
    end

    def has_audio : Bool
      # gtk_media_stream_has_audio: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_has_audio(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_video : Bool
      # gtk_media_stream_has_video: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_has_video(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_prepared? : Bool
      # gtk_media_stream_is_prepared: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_is_prepared(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_seekable? : Bool
      # gtk_media_stream_is_seekable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_is_seekable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_seeking? : Bool
      # gtk_media_stream_is_seeking: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_media_stream_is_seeking(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pause : Nil
      # gtk_media_stream_pause: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_pause(to_unsafe)

      # Return value handling
    end

    def play : Nil
      # gtk_media_stream_play: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_play(to_unsafe)

      # Return value handling
    end

    def realize(surface : Gdk::Surface) : Nil
      # gtk_media_stream_realize: (Method)
      # @surface:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_realize(to_unsafe, surface)

      # Return value handling
    end

    def seek(timestamp : Int64) : Nil
      # gtk_media_stream_seek: (Method)
      # @timestamp:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_seek(to_unsafe, timestamp)

      # Return value handling
    end

    def seek_failed : Nil
      # gtk_media_stream_seek_failed: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_seek_failed(to_unsafe)

      # Return value handling
    end

    def seek_success : Nil
      # gtk_media_stream_seek_success: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_seek_success(to_unsafe)

      # Return value handling
    end

    def loop=(loop : Bool) : Nil
      # gtk_media_stream_set_loop: (Method | Setter)
      # @loop:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_set_loop(to_unsafe, loop)

      # Return value handling
    end

    def muted=(muted : Bool) : Nil
      # gtk_media_stream_set_muted: (Method | Setter)
      # @muted:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_set_muted(to_unsafe, muted)

      # Return value handling
    end

    def playing=(playing : Bool) : Nil
      # gtk_media_stream_set_playing: (Method | Setter)
      # @playing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_set_playing(to_unsafe, playing)

      # Return value handling
    end

    def volume=(volume : Float64) : Nil
      # gtk_media_stream_set_volume: (Method | Setter)
      # @volume:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_set_volume(to_unsafe, volume)

      # Return value handling
    end

    def stream_ended : Nil
      # gtk_media_stream_stream_ended: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_stream_ended(to_unsafe)

      # Return value handling
    end

    def stream_prepared(has_audio : Bool, has_video : Bool, seekable : Bool, duration : Int64) : Nil
      # gtk_media_stream_stream_prepared: (Method)
      # @has_audio:
      # @has_video:
      # @seekable:
      # @duration:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_stream_prepared(to_unsafe, has_audio, has_video, seekable, duration)

      # Return value handling
    end

    def stream_unprepared : Nil
      # gtk_media_stream_stream_unprepared: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_stream_unprepared(to_unsafe)

      # Return value handling
    end

    def unrealize(surface : Gdk::Surface) : Nil
      # gtk_media_stream_unrealize: (Method)
      # @surface:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_unrealize(to_unsafe, surface)

      # Return value handling
    end

    def update(timestamp : Int64) : Nil
      # gtk_media_stream_update: (Method)
      # @timestamp:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_media_stream_update(to_unsafe, timestamp)

      # Return value handling
    end

    # pause: (None)
    # Returns: (transfer none)
    private macro _register_pause_vfunc(impl_method_name)
      private def self._vfunc_pause(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_pause(Pointer(Void))).pointer
        previous_def
      end
    end

    # pause: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_pause_vfunc(impl_method_name)
      private def self._vfunc_unsafe_pause(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_pause = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_pause(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_pause : Proc(Pointer(Void), Void)? = nil
    end

    # play: (None)
    # Returns: (transfer none)
    private macro _register_play_vfunc(impl_method_name)
      private def self._vfunc_play(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_play(Pointer(Void))).pointer
        previous_def
      end
    end

    # play: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_play_vfunc(impl_method_name)
      private def self._vfunc_unsafe_play(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_play = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_play(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_play : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # realize: (None)
    # @surface:
    # Returns: (transfer none)
    private macro _register_realize_vfunc(impl_method_name)
      private def self._vfunc_realize(%this : Pointer(Void), lib_surface :  Pointer(Void), ) : Void
        # @surface: 

# Generator::BuiltInTypeArgPlan
surface=Gdk::Surface.new(lib_surface, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(surface)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_realize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # realize: (None)
    # @surface:
    # Returns: (transfer none)
    private macro _register_unsafe_realize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_realize(%this : Pointer(Void), lib_surface :  Pointer(Void), ) : Void
# @surface: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_surface)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_realize = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_realize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_realize : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # seek: (None)
    # @timestamp:
    # Returns: (transfer none)
    private macro _register_seek_vfunc(impl_method_name)
      private def self._vfunc_seek(%this : Pointer(Void), lib_timestamp :  Int64, ) : Void
        # @timestamp: 

timestamp=lib_timestamp


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(timestamp)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_seek(Pointer(Void), Int64)).pointer
        previous_def
      end
    end

    # seek: (None)
    # @timestamp:
    # Returns: (transfer none)
    private macro _register_unsafe_seek_vfunc(impl_method_name)
      private def self._vfunc_unsafe_seek(%this : Pointer(Void), lib_timestamp :  Int64, ) : Void
# @timestamp: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_timestamp)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_seek = Proc(Pointer(Void), Int64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_seek(Pointer(Void), Int64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_seek : Proc(Pointer(Void), Int64, Void)? = nil
    end

    # unrealize: (None)
    # @surface:
    # Returns: (transfer none)
    private macro _register_unrealize_vfunc(impl_method_name)
      private def self._vfunc_unrealize(%this : Pointer(Void), lib_surface :  Pointer(Void), ) : Void
        # @surface: 

# Generator::BuiltInTypeArgPlan
surface=Gdk::Surface.new(lib_surface, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(surface)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unrealize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # unrealize: (None)
    # @surface:
    # Returns: (transfer none)
    private macro _register_unsafe_unrealize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unrealize(%this : Pointer(Void), lib_surface :  Pointer(Void), ) : Void
# @surface: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_surface)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unrealize = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unrealize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unrealize : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # update_audio: (None)
    # @muted:
    # @volume:
    # Returns: (transfer none)
    private macro _register_update_audio_vfunc(impl_method_name)
      private def self._vfunc_update_audio(%this : Pointer(Void), lib_muted :  LibC::Int, lib_volume :  Float64, ) : Void
        # @muted: 
# @volume: 

# Generator::BuiltInTypeArgPlan
muted=GICrystal.to_bool(lib_muted)
volume=lib_volume


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(muted, volume)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_update_audio(Pointer(Void), LibC::Int, Float64)).pointer
        previous_def
      end
    end

    # update_audio: (None)
    # @muted:
    # @volume:
    # Returns: (transfer none)
    private macro _register_unsafe_update_audio_vfunc(impl_method_name)
      private def self._vfunc_unsafe_update_audio(%this : Pointer(Void), lib_muted :  LibC::Int, lib_volume :  Float64, ) : Void
# @muted: 
# @volume: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_muted, lib_volume)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_update_audio = Proc(Pointer(Void), LibC::Int, Float64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_update_audio(Pointer(Void), LibC::Int, Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_update_audio : Proc(Pointer(Void), LibC::Int, Float64, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
