require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PrintJob < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(PrintJob, g_object_get_qdata)

    # Initialize a new `PrintJob`.
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

    def initialize(*, page_setup : Gtk::PageSetup? = nil, printer : Gtk::Printer? = nil, settings : Gtk::PrintSettings? = nil, title : ::String? = nil, track_print_status : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !page_setup.nil?
        (_names.to_unsafe + _n).value = "page-setup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page_setup)
        _n += 1
      end
      if !printer.nil?
        (_names.to_unsafe + _n).value = "printer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, printer)
        _n += 1
      end
      if !settings.nil?
        (_names.to_unsafe + _n).value = "settings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, settings)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !track_print_status.nil?
        (_names.to_unsafe + _n).value = "track-print-status".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, track_print_status)
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
      @@g_type ||= LibGtk.gtk_print_job_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PrintJob.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def page_setup=(value : Gtk::PageSetup?) : Gtk::PageSetup?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "page-setup", unsafe_value, Pointer(Void).null)
      value
    end

    def page_setup : Gtk::PageSetup?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "page-setup", pointerof(value), Pointer(Void).null)
      Gtk::PageSetup.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def printer=(value : Gtk::Printer?) : Gtk::Printer?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "printer", unsafe_value, Pointer(Void).null)
      value
    end

    def printer : Gtk::Printer?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "printer", pointerof(value), Pointer(Void).null)
      Gtk::Printer.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def settings=(value : Gtk::PrintSettings?) : Gtk::PrintSettings?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "settings", unsafe_value, Pointer(Void).null)
      value
    end

    def settings : Gtk::PrintSettings?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "settings", pointerof(value), Pointer(Void).null)
      Gtk::PrintSettings.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def title=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "title", unsafe_value, Pointer(Void).null)
      value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#title` property to nil.
    def title=(value : Nil) : Nil
      LibGObject.g_object_set(self, "title", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def track_print_status=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "track-print-status", unsafe_value, Pointer(Void).null)
      value
    end

    def track_print_status? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "track-print-status", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(title : ::String, printer : Gtk::Printer, settings : Gtk::PrintSettings, page_setup : Gtk::PageSetup) : self
      # gtk_print_job_new: (Constructor)
      # @title:
      # @printer:
      # @settings:
      # @page_setup:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_job_new(title, printer, settings, page_setup)

      # Return value handling
      Gtk::PrintJob.new(_retval, GICrystal::Transfer::Full)
    end

    def collate : Bool
      # gtk_print_job_get_collate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_collate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def n_up : UInt32
      # gtk_print_job_get_n_up: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_n_up(to_unsafe)

      # Return value handling
      _retval
    end

    def n_up_layout : Gtk::NumberUpLayout
      # gtk_print_job_get_n_up_layout: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_n_up_layout(to_unsafe)

      # Return value handling
      Gtk::NumberUpLayout.new(_retval)
    end

    def num_copies : Int32
      # gtk_print_job_get_num_copies: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_num_copies(to_unsafe)

      # Return value handling
      _retval
    end

    def page_ranges : Enumerable(Gtk::PageRange)
      # gtk_print_job_get_page_ranges: (Method)
      # @n_ranges: (out) (transfer full)
      # Returns: (transfer none) (array length=n_ranges element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      n_ranges = 0
      # C call
      _retval = LibGtk.gtk_print_job_get_page_ranges(to_unsafe, pointerof(n_ranges))

      # Return value handling
      GICrystal.transfer_array(_retval, n_ranges, GICrystal::Transfer::None)
    end

    def page_set : Gtk::PageSet
      # gtk_print_job_get_page_set: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_page_set(to_unsafe)

      # Return value handling
      Gtk::PageSet.new(_retval)
    end

    def pages : Gtk::PrintPages
      # gtk_print_job_get_pages: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_pages(to_unsafe)

      # Return value handling
      Gtk::PrintPages.new(_retval)
    end

    def printer : Gtk::Printer
      # gtk_print_job_get_printer: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_printer(to_unsafe)

      # Return value handling
      Gtk::Printer.new(_retval, GICrystal::Transfer::None)
    end

    def reverse : Bool
      # gtk_print_job_get_reverse: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_reverse(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def rotate : Bool
      # gtk_print_job_get_rotate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_rotate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def scale : Float64
      # gtk_print_job_get_scale: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def settings : Gtk::PrintSettings
      # gtk_print_job_get_settings: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_settings(to_unsafe)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::None)
    end

    def status : Gtk::PrintStatus
      # gtk_print_job_get_status: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_status(to_unsafe)

      # Return value handling
      Gtk::PrintStatus.new(_retval)
    end

    def surface : Cairo::Surface
      # gtk_print_job_get_surface: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_job_get_surface(to_unsafe, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Cairo::Surface.new(_retval, GICrystal::Transfer::None)
    end

    def title : ::String
      # gtk_print_job_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def track_print_status : Bool
      # gtk_print_job_get_track_print_status: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_job_get_track_print_status(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def send(callback : Gtk::PrintJobCompleteFunc) : Nil
      # gtk_print_job_send: (Method)
      # @callback:
      # @user_data: (nullable)
      # @dnotify:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_print_job : Pointer(Void), lib_user_data : Pointer(Void), lib_error : Pointer(LibGLib::Error)) {
          # Generator::BuiltInTypeArgPlan
          print_job = Gtk::PrintJob.new(lib_print_job, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          user_data = (lib_user_data.null? ? nil : lib_user_data)
          ::Box(Proc(Gtk::PrintJob, Pointer(Void)?, Nil)).unbox(lib_error).call(print_job, user_data)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        dnotify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = dnotify = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_print_job_send(to_unsafe, callback, user_data, dnotify)

      # Return value handling
    end

    def collate=(collate : Bool) : Nil
      # gtk_print_job_set_collate: (Method)
      # @collate:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_collate(to_unsafe, collate)

      # Return value handling
    end

    def n_up=(n_up : UInt32) : Nil
      # gtk_print_job_set_n_up: (Method)
      # @n_up:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_n_up(to_unsafe, n_up)

      # Return value handling
    end

    def n_up_layout=(layout : Gtk::NumberUpLayout) : Nil
      # gtk_print_job_set_n_up_layout: (Method)
      # @layout:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_n_up_layout(to_unsafe, layout)

      # Return value handling
    end

    def num_copies=(num_copies : Int32) : Nil
      # gtk_print_job_set_num_copies: (Method)
      # @num_copies:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_num_copies(to_unsafe, num_copies)

      # Return value handling
    end

    def page_ranges=(ranges : Enumerable(Gtk::PageRange)) : Nil
      # gtk_print_job_set_page_ranges: (Method)
      # @ranges: (transfer full) (array length=n_ranges element-type Interface)
      # @n_ranges:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_ranges = ranges.size
      # Generator::ArrayArgPlan
      ranges = ranges.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGtk::PageRange))

      # C call
      LibGtk.gtk_print_job_set_page_ranges(to_unsafe, ranges, n_ranges)

      # Return value handling
    end

    def page_set=(page_set : Gtk::PageSet) : Nil
      # gtk_print_job_set_page_set: (Method)
      # @page_set:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_page_set(to_unsafe, page_set)

      # Return value handling
    end

    def pages=(pages : Gtk::PrintPages) : Nil
      # gtk_print_job_set_pages: (Method)
      # @pages:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_pages(to_unsafe, pages)

      # Return value handling
    end

    def reverse=(reverse : Bool) : Nil
      # gtk_print_job_set_reverse: (Method)
      # @reverse:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_reverse(to_unsafe, reverse)

      # Return value handling
    end

    def rotate=(rotate : Bool) : Nil
      # gtk_print_job_set_rotate: (Method)
      # @rotate:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_rotate(to_unsafe, rotate)

      # Return value handling
    end

    def scale=(scale : Float64) : Nil
      # gtk_print_job_set_scale: (Method)
      # @scale:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_scale(to_unsafe, scale)

      # Return value handling
    end

    def source_fd=(fd : Int32) : Bool
      # gtk_print_job_set_source_fd: (Method | Throws)
      # @fd:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_job_set_source_fd(to_unsafe, fd, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def source_file=(filename : ::String) : Bool
      # gtk_print_job_set_source_file: (Method | Throws)
      # @filename:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_job_set_source_file(to_unsafe, filename, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def track_print_status=(track_status : Bool) : Nil
      # gtk_print_job_set_track_print_status: (Method | Setter)
      # @track_status:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_job_set_track_print_status(to_unsafe, track_status)

      # Return value handling
    end

    struct StatusChangedSignal < GObject::Signal
      def name : String
        @detail ? "status-changed::#{@detail}" : "status-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintJob, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintJob.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintJob, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "status-changed")
      end
    end

    def status_changed_signal
      StatusChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
