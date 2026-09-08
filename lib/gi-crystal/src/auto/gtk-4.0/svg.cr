require "../g_object-2.0/object"
require "../gdk-4.0/paintable"

require "./symbolic_paintable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Svg < GObject::Object
    include Gdk::Paintable
    include SymbolicPaintable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SvgClass), class_init,
        sizeof(LibGtk::Svg), instance_init, 0)
    end

    GICrystal.declare_new_method(Svg, g_object_get_qdata)

    # Initialize a new `Svg`.
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

    def initialize(*, features : Gtk::SvgFeatures? = nil, playing : Bool? = nil, resource : ::String? = nil, state : UInt32? = nil, weight : Float64? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !features.nil?
        (_names.to_unsafe + _n).value = "features".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, features)
        _n += 1
      end
      if !playing.nil?
        (_names.to_unsafe + _n).value = "playing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, playing)
        _n += 1
      end
      if !resource.nil?
        (_names.to_unsafe + _n).value = "resource".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resource)
        _n += 1
      end
      if !state.nil?
        (_names.to_unsafe + _n).value = "state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, state)
        _n += 1
      end
      if !weight.nil?
        (_names.to_unsafe + _n).value = "weight".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, weight)
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
      @@g_type ||= LibGtk.gtk_svg_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Svg.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def features=(value : Gtk::SvgFeatures) : Gtk::SvgFeatures
      unsafe_value = value

      LibGObject.g_object_set(self, "features", unsafe_value, Pointer(Void).null)
      value
    end

    def features : Gtk::SvgFeatures
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "features", pointerof(value), Pointer(Void).null)
      Gtk::SvgFeatures.new(value)
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

    def resource=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "resource", unsafe_value, Pointer(Void).null)
      value
    end

    def resource : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#resource` property to nil.
    def resource=(value : Nil) : Nil
      LibGObject.g_object_set(self, "resource", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#resource`, but can return nil.
    def resource? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def state=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "state", unsafe_value, Pointer(Void).null)
      value
    end

    def state : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "state", pointerof(value), Pointer(Void).null)
      value
    end

    def weight=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "weight", unsafe_value, Pointer(Void).null)
      value
    end

    def weight : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "weight", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # gtk_svg_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_svg_new

      # Return value handling
      Gtk::Svg.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_bytes(bytes : GLib::Bytes) : self
      # gtk_svg_new_from_bytes: (Constructor)
      # @bytes:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_svg_new_from_bytes(bytes)

      # Return value handling
      Gtk::Svg.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_resource(path : ::String) : self
      # gtk_svg_new_from_resource: (Constructor)
      # @path:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_svg_new_from_resource(path)

      # Return value handling
      Gtk::Svg.new(_retval, GICrystal::Transfer::Full)
    end

    def features : Gtk::SvgFeatures
      # gtk_svg_get_features: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_svg_get_features(to_unsafe)

      # Return value handling
      Gtk::SvgFeatures.new(_retval)
    end

    def state : UInt32
      # gtk_svg_get_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_svg_get_state(to_unsafe)

      # Return value handling
      _retval
    end

    def state_names(length : UInt32) : Enumerable(::String)?
      # gtk_svg_get_state_names: (Method)
      # @length: (out) (transfer full)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_svg_get_state_names(to_unsafe, length)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def weight : Float64
      # gtk_svg_get_weight: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_svg_get_weight(to_unsafe)

      # Return value handling
      _retval
    end

    def load_from_bytes(bytes : GLib::Bytes) : Nil
      # gtk_svg_load_from_bytes: (Method)
      # @bytes:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_load_from_bytes(to_unsafe, bytes)

      # Return value handling
    end

    def load_from_resource(path : ::String) : Nil
      # gtk_svg_load_from_resource: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_load_from_resource(to_unsafe, path)

      # Return value handling
    end

    def pause : Nil
      # gtk_svg_pause: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_pause(to_unsafe)

      # Return value handling
    end

    def play : Nil
      # gtk_svg_play: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_play(to_unsafe)

      # Return value handling
    end

    def serialize : GLib::Bytes
      # gtk_svg_serialize: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_svg_serialize(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def features=(features : Gtk::SvgFeatures) : Nil
      # gtk_svg_set_features: (Method | Setter)
      # @features:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_set_features(to_unsafe, features)

      # Return value handling
    end

    def frame_clock=(clock : Gdk::FrameClock) : Nil
      # gtk_svg_set_frame_clock: (Method)
      # @clock:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_set_frame_clock(to_unsafe, clock)

      # Return value handling
    end

    def state=(state : UInt32) : Nil
      # gtk_svg_set_state: (Method | Setter)
      # @state:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_set_state(to_unsafe, state)

      # Return value handling
    end

    def weight=(weight : Float64) : Nil
      # gtk_svg_set_weight: (Method | Setter)
      # @weight:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_svg_set_weight(to_unsafe, weight)

      # Return value handling
    end

    def write_to_file(filename : ::String) : Bool
      # gtk_svg_write_to_file: (Method | Throws)
      # @filename:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_svg_write_to_file(to_unsafe, filename, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ErrorSignal < GObject::Signal
      def name : String
        @detail ? "error::#{@detail}" : "error"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Error, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          # Generator::GErrorArgPlan
          error = Gtk.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(GLib::Error, Nil)).unbox(_lib_box).call(error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Svg, GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = Gtk::Svg.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::GErrorArgPlan
          error = Gtk.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Svg, GLib::Error, Nil)).unbox(_lib_box).call(_sender, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(error : GLib::Error) : Nil
        LibGObject.g_signal_emit_by_name(@source, "error", error)
      end
    end

    def error_signal
      ErrorSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
