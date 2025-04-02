require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Printer < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Printer, g_object_get_qdata)

    # Initialize a new `Printer`.
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

    def initialize(*, accepting_jobs : Bool? = nil, accepts_pdf : Bool? = nil, accepts_ps : Bool? = nil, icon_name : ::String? = nil, is_virtual : Bool? = nil, job_count : Int32? = nil, location : ::String? = nil, name : ::String? = nil, paused : Bool? = nil, state_message : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !accepting_jobs.nil?
        (_names.to_unsafe + _n).value = "accepting-jobs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accepting_jobs)
        _n += 1
      end
      if !accepts_pdf.nil?
        (_names.to_unsafe + _n).value = "accepts-pdf".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accepts_pdf)
        _n += 1
      end
      if !accepts_ps.nil?
        (_names.to_unsafe + _n).value = "accepts-ps".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accepts_ps)
        _n += 1
      end
      if !icon_name.nil?
        (_names.to_unsafe + _n).value = "icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_name)
        _n += 1
      end
      if !is_virtual.nil?
        (_names.to_unsafe + _n).value = "is-virtual".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_virtual)
        _n += 1
      end
      if !job_count.nil?
        (_names.to_unsafe + _n).value = "job-count".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, job_count)
        _n += 1
      end
      if !location.nil?
        (_names.to_unsafe + _n).value = "location".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, location)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !paused.nil?
        (_names.to_unsafe + _n).value = "paused".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, paused)
        _n += 1
      end
      if !state_message.nil?
        (_names.to_unsafe + _n).value = "state-message".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, state_message)
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
      @@g_type ||= LibGtk.gtk_printer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Printer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accepting_jobs? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "accepting-jobs", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def accepts_pdf=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "accepts-pdf", unsafe_value, Pointer(Void).null)
      value
    end

    def accepts_pdf? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "accepts-pdf", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def accepts_ps=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "accepts-ps", unsafe_value, Pointer(Void).null)
      value
    end

    def accepts_ps? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "accepts-ps", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def icon_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#icon_name`, but can return nil.
    def icon_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def is_virtual=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-virtual", unsafe_value, Pointer(Void).null)
      value
    end

    def is_virtual? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-virtual", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def job_count : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "job-count", pointerof(value), Pointer(Void).null)
      value
    end

    def location : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "location", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#location`, but can return nil.
    def location? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "location", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def paused? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "paused", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def state_message : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "state-message", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#state_message`, but can return nil.
    def state_message? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "state-message", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(name : ::String, backend : Gtk::PrintBackend, virtual_ : Bool) : self
      # gtk_printer_new: (Constructor)
      # @name:
      # @backend:
      # @virtual_:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_printer_new(name, backend, virtual_)

      # Return value handling
      Gtk::Printer.new(_retval, GICrystal::Transfer::Full)
    end

    def accepts_pdf : Bool
      # gtk_printer_accepts_pdf: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_accepts_pdf(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def accepts_ps : Bool
      # gtk_printer_accepts_ps: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_accepts_ps(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def compare(b : Gtk::Printer) : Int32
      # gtk_printer_compare: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_compare(to_unsafe, b)

      # Return value handling
      _retval
    end

    def backend : Gtk::PrintBackend
      # gtk_printer_get_backend: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_backend(to_unsafe)

      # Return value handling
      Gtk::PrintBackend.new(_retval, GICrystal::Transfer::None)
    end

    def capabilities : Gtk::PrintCapabilities
      # gtk_printer_get_capabilities: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_capabilities(to_unsafe)

      # Return value handling
      Gtk::PrintCapabilities.new(_retval)
    end

    def default_page_size : Gtk::PageSetup
      # gtk_printer_get_default_page_size: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_printer_get_default_page_size(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def description : ::String
      # gtk_printer_get_description: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_description(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def hard_margins(top : Float64, bottom : Float64, left : Float64, right : Float64) : Bool
      # gtk_printer_get_hard_margins: (Method)
      # @top: (out) (transfer full)
      # @bottom: (out) (transfer full)
      # @left: (out) (transfer full)
      # @right: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_hard_margins(to_unsafe, top, bottom, left, right)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hard_margins_for_paper_size(paper_size : Gtk::PaperSize, top : Float64, bottom : Float64, left : Float64, right : Float64) : Bool
      # gtk_printer_get_hard_margins_for_paper_size: (Method)
      # @paper_size:
      # @top: (out) (transfer full)
      # @bottom: (out) (transfer full)
      # @left: (out) (transfer full)
      # @right: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_hard_margins_for_paper_size(to_unsafe, paper_size, top, bottom, left, right)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon_name : ::String
      # gtk_printer_get_icon_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_icon_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def job_count : Int32
      # gtk_printer_get_job_count: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_job_count(to_unsafe)

      # Return value handling
      _retval
    end

    def location : ::String
      # gtk_printer_get_location: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_location(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def name : ::String
      # gtk_printer_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def state_message : ::String
      # gtk_printer_get_state_message: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_get_state_message(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def has_details : Bool
      # gtk_printer_has_details: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_has_details(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_accepting_jobs? : Bool
      # gtk_printer_is_accepting_jobs: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_is_accepting_jobs(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_active : Bool
      # gtk_printer_is_active: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_is_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_default : Bool
      # gtk_printer_is_default: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_is_default(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_paused? : Bool
      # gtk_printer_is_paused: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_is_paused(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_virtual? : Bool
      # gtk_printer_is_virtual: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_printer_is_virtual(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_papers : GLib::List
      # gtk_printer_list_papers: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_printer_list_papers(to_unsafe)

      # Return value handling
      GLib::List(Gtk::PageSetup).new(_retval, GICrystal::Transfer::Full)
    end

    def request_details : Nil
      # gtk_printer_request_details: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_printer_request_details(to_unsafe)

      # Return value handling
    end

    struct DetailsAcquiredSignal < GObject::Signal
      def name : String
        @detail ? "details-acquired::#{@detail}" : "details-acquired"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_success : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          success = GICrystal.to_bool(lib_success)
          ::Box(Proc(Bool, Nil)).unbox(_lib_box).call(success)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Printer, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_success : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::Printer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          success = GICrystal.to_bool(lib_success)
          ::Box(Proc(Gtk::Printer, Bool, Nil)).unbox(_lib_box).call(_sender, success)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(success : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "details-acquired", success)
      end
    end

    def details_acquired_signal
      DetailsAcquiredSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
