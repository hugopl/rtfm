require "../g_object-2.0/object"
require "./print_operation_preview"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PrintOperation < GObject::Object
    include PrintOperationPreview

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::PrintOperationClass), class_init,
        sizeof(LibGtk::PrintOperation), instance_init, 0)
    end

    GICrystal.declare_new_method(PrintOperation, g_object_get_qdata)

    # Initialize a new `PrintOperation`.
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

    def initialize(*, allow_async : Bool? = nil, current_page : Int32? = nil, custom_tab_label : ::String? = nil, default_page_setup : Gtk::PageSetup? = nil, embed_page_setup : Bool? = nil, export_filename : ::String? = nil, has_selection : Bool? = nil, job_name : ::String? = nil, n_pages : Int32? = nil, n_pages_to_print : Int32? = nil, print_settings : Gtk::PrintSettings? = nil, show_progress : Bool? = nil, status : Gtk::PrintStatus? = nil, status_string : ::String? = nil, support_selection : Bool? = nil, track_print_status : Bool? = nil, unit : Gtk::Unit? = nil, use_full_page : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[18]
      _values = StaticArray(LibGObject::Value, 18).new(LibGObject::Value.new)
      _n = 0

      if !allow_async.nil?
        (_names.to_unsafe + _n).value = "allow-async".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_async)
        _n += 1
      end
      if !current_page.nil?
        (_names.to_unsafe + _n).value = "current-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, current_page)
        _n += 1
      end
      if !custom_tab_label.nil?
        (_names.to_unsafe + _n).value = "custom-tab-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, custom_tab_label)
        _n += 1
      end
      if !default_page_setup.nil?
        (_names.to_unsafe + _n).value = "default-page-setup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_page_setup)
        _n += 1
      end
      if !embed_page_setup.nil?
        (_names.to_unsafe + _n).value = "embed-page-setup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, embed_page_setup)
        _n += 1
      end
      if !export_filename.nil?
        (_names.to_unsafe + _n).value = "export-filename".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, export_filename)
        _n += 1
      end
      if !has_selection.nil?
        (_names.to_unsafe + _n).value = "has-selection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_selection)
        _n += 1
      end
      if !job_name.nil?
        (_names.to_unsafe + _n).value = "job-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, job_name)
        _n += 1
      end
      if !n_pages.nil?
        (_names.to_unsafe + _n).value = "n-pages".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_pages)
        _n += 1
      end
      if !n_pages_to_print.nil?
        (_names.to_unsafe + _n).value = "n-pages-to-print".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_pages_to_print)
        _n += 1
      end
      if !print_settings.nil?
        (_names.to_unsafe + _n).value = "print-settings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, print_settings)
        _n += 1
      end
      if !show_progress.nil?
        (_names.to_unsafe + _n).value = "show-progress".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_progress)
        _n += 1
      end
      if !status.nil?
        (_names.to_unsafe + _n).value = "status".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, status)
        _n += 1
      end
      if !status_string.nil?
        (_names.to_unsafe + _n).value = "status-string".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, status_string)
        _n += 1
      end
      if !support_selection.nil?
        (_names.to_unsafe + _n).value = "support-selection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, support_selection)
        _n += 1
      end
      if !track_print_status.nil?
        (_names.to_unsafe + _n).value = "track-print-status".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, track_print_status)
        _n += 1
      end
      if !unit.nil?
        (_names.to_unsafe + _n).value = "unit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, unit)
        _n += 1
      end
      if !use_full_page.nil?
        (_names.to_unsafe + _n).value = "use-full-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_full_page)
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
      @@g_type ||= LibGtk.gtk_print_operation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PrintOperation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allow_async=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-async", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_async? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-async", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def current_page=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "current-page", unsafe_value, Pointer(Void).null)
      value
    end

    def current_page : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "current-page", pointerof(value), Pointer(Void).null)
      value
    end

    def custom_tab_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "custom-tab-label", unsafe_value, Pointer(Void).null)
      value
    end

    def custom_tab_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "custom-tab-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#custom_tab_label` property to nil.
    def custom_tab_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "custom-tab-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#custom_tab_label`, but can return nil.
    def custom_tab_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "custom-tab-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def default_page_setup=(value : Gtk::PageSetup?) : Gtk::PageSetup?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "default-page-setup", unsafe_value, Pointer(Void).null)
      value
    end

    def default_page_setup : Gtk::PageSetup?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "default-page-setup", pointerof(value), Pointer(Void).null)
      Gtk::PageSetup.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def embed_page_setup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "embed-page-setup", unsafe_value, Pointer(Void).null)
      value
    end

    def embed_page_setup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "embed-page-setup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def export_filename=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "export-filename", unsafe_value, Pointer(Void).null)
      value
    end

    def export_filename : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "export-filename", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#export_filename` property to nil.
    def export_filename=(value : Nil) : Nil
      LibGObject.g_object_set(self, "export-filename", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#export_filename`, but can return nil.
    def export_filename? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "export-filename", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def has_selection=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-selection", unsafe_value, Pointer(Void).null)
      value
    end

    def has_selection? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-selection", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def job_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "job-name", unsafe_value, Pointer(Void).null)
      value
    end

    def job_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "job-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#job_name` property to nil.
    def job_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "job-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#job_name`, but can return nil.
    def job_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "job-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def n_pages=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "n-pages", unsafe_value, Pointer(Void).null)
      value
    end

    def n_pages : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "n-pages", pointerof(value), Pointer(Void).null)
      value
    end

    def n_pages_to_print : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "n-pages-to-print", pointerof(value), Pointer(Void).null)
      value
    end

    def print_settings=(value : Gtk::PrintSettings?) : Gtk::PrintSettings?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "print-settings", unsafe_value, Pointer(Void).null)
      value
    end

    def print_settings : Gtk::PrintSettings?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "print-settings", pointerof(value), Pointer(Void).null)
      Gtk::PrintSettings.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def show_progress=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-progress", unsafe_value, Pointer(Void).null)
      value
    end

    def show_progress? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-progress", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def status : Gtk::PrintStatus
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "status", pointerof(value), Pointer(Void).null)
      Gtk::PrintStatus.new(value)
    end

    def status_string : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "status-string", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#status_string`, but can return nil.
    def status_string? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "status-string", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def support_selection=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "support-selection", unsafe_value, Pointer(Void).null)
      value
    end

    def support_selection? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "support-selection", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def unit=(value : Gtk::Unit) : Gtk::Unit
      unsafe_value = value

      LibGObject.g_object_set(self, "unit", unsafe_value, Pointer(Void).null)
      value
    end

    def unit : Gtk::Unit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "unit", pointerof(value), Pointer(Void).null)
      Gtk::Unit.new(value)
    end

    def use_full_page=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-full-page", unsafe_value, Pointer(Void).null)
      value
    end

    def use_full_page? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-full-page", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # gtk_print_operation_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_operation_new

      # Return value handling
      Gtk::PrintOperation.new(_retval, GICrystal::Transfer::Full)
    end

    def cancel : Nil
      # gtk_print_operation_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_cancel(to_unsafe)

      # Return value handling
    end

    def draw_page_finish : Nil
      # gtk_print_operation_draw_page_finish: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_draw_page_finish(to_unsafe)

      # Return value handling
    end

    def default_page_setup : Gtk::PageSetup
      # gtk_print_operation_get_default_page_setup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_get_default_page_setup(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::None)
    end

    def embed_page_setup : Bool
      # gtk_print_operation_get_embed_page_setup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_get_embed_page_setup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def error : Nil
      # gtk_print_operation_get_error: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      LibGtk.gtk_print_operation_get_error(to_unsafe, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
    end

    def has_selection : Bool
      # gtk_print_operation_get_has_selection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_get_has_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def n_pages_to_print : Int32
      # gtk_print_operation_get_n_pages_to_print: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_get_n_pages_to_print(to_unsafe)

      # Return value handling
      _retval
    end

    def print_settings : Gtk::PrintSettings?
      # gtk_print_operation_get_print_settings: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_operation_get_print_settings(to_unsafe)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def status : Gtk::PrintStatus
      # gtk_print_operation_get_status: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_get_status(to_unsafe)

      # Return value handling
      Gtk::PrintStatus.new(_retval)
    end

    def status_string : ::String
      # gtk_print_operation_get_status_string: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_get_status_string(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def support_selection : Bool
      # gtk_print_operation_get_support_selection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_get_support_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_finished : Bool
      # gtk_print_operation_is_finished: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_is_finished(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def run(action : Gtk::PrintOperationAction, parent : Gtk::Window?) : Gtk::PrintOperationResult
      # gtk_print_operation_run: (Method | Throws)
      # @action:
      # @parent: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_print_operation_run(to_unsafe, action, parent, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gtk::PrintOperationResult.new(_retval)
    end

    def allow_async=(allow_async : Bool) : Nil
      # gtk_print_operation_set_allow_async: (Method | Setter)
      # @allow_async:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_allow_async(to_unsafe, allow_async)

      # Return value handling
    end

    def current_page=(current_page : Int32) : Nil
      # gtk_print_operation_set_current_page: (Method | Setter)
      # @current_page:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_current_page(to_unsafe, current_page)

      # Return value handling
    end

    def custom_tab_label=(label : ::String?) : Nil
      # gtk_print_operation_set_custom_tab_label: (Method | Setter)
      # @label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGtk.gtk_print_operation_set_custom_tab_label(to_unsafe, label)

      # Return value handling
    end

    def default_page_setup=(default_page_setup : Gtk::PageSetup?) : Nil
      # gtk_print_operation_set_default_page_setup: (Method | Setter)
      # @default_page_setup: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      default_page_setup = if default_page_setup.nil?
                             Pointer(Void).null
                           else
                             default_page_setup.to_unsafe
                           end

      # C call
      LibGtk.gtk_print_operation_set_default_page_setup(to_unsafe, default_page_setup)

      # Return value handling
    end

    def set_defer_drawing : Nil
      # gtk_print_operation_set_defer_drawing: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_defer_drawing(to_unsafe)

      # Return value handling
    end

    def embed_page_setup=(embed : Bool) : Nil
      # gtk_print_operation_set_embed_page_setup: (Method | Setter)
      # @embed:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_embed_page_setup(to_unsafe, embed)

      # Return value handling
    end

    def export_filename=(filename : ::String) : Nil
      # gtk_print_operation_set_export_filename: (Method | Setter)
      # @filename:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_export_filename(to_unsafe, filename)

      # Return value handling
    end

    def has_selection=(has_selection : Bool) : Nil
      # gtk_print_operation_set_has_selection: (Method | Setter)
      # @has_selection:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_has_selection(to_unsafe, has_selection)

      # Return value handling
    end

    def job_name=(job_name : ::String) : Nil
      # gtk_print_operation_set_job_name: (Method | Setter)
      # @job_name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_job_name(to_unsafe, job_name)

      # Return value handling
    end

    def n_pages=(n_pages : Int32) : Nil
      # gtk_print_operation_set_n_pages: (Method | Setter)
      # @n_pages:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_n_pages(to_unsafe, n_pages)

      # Return value handling
    end

    def print_settings=(print_settings : Gtk::PrintSettings?) : Nil
      # gtk_print_operation_set_print_settings: (Method | Setter)
      # @print_settings: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      print_settings = if print_settings.nil?
                         Pointer(Void).null
                       else
                         print_settings.to_unsafe
                       end

      # C call
      LibGtk.gtk_print_operation_set_print_settings(to_unsafe, print_settings)

      # Return value handling
    end

    def show_progress=(show_progress : Bool) : Nil
      # gtk_print_operation_set_show_progress: (Method | Setter)
      # @show_progress:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_show_progress(to_unsafe, show_progress)

      # Return value handling
    end

    def support_selection=(support_selection : Bool) : Nil
      # gtk_print_operation_set_support_selection: (Method | Setter)
      # @support_selection:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_support_selection(to_unsafe, support_selection)

      # Return value handling
    end

    def track_print_status=(track_status : Bool) : Nil
      # gtk_print_operation_set_track_print_status: (Method | Setter)
      # @track_status:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_track_print_status(to_unsafe, track_status)

      # Return value handling
    end

    def unit=(unit : Gtk::Unit) : Nil
      # gtk_print_operation_set_unit: (Method | Setter)
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_unit(to_unsafe, unit)

      # Return value handling
    end

    def use_full_page=(full_page : Bool) : Nil
      # gtk_print_operation_set_use_full_page: (Method | Setter)
      # @full_page:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_set_use_full_page(to_unsafe, full_page)

      # Return value handling
    end

    struct BeginPrintSignal < GObject::Signal
      def name : String
        @detail ? "begin-print::#{@detail}" : "begin-print"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintContext, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintContext, Nil)).unbox(_lib_box).call(context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::PrintContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, Gtk::PrintContext, Nil)).unbox(_lib_box).call(_sender, context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gtk::PrintContext) : Nil
        LibGObject.g_signal_emit_by_name(@source, "begin-print", context)
      end
    end

    def begin_print_signal
      BeginPrintSignal.new(self)
    end

    struct CreateCustomWidgetSignal < GObject::Signal
      def name : String
        @detail ? "create-custom-widget::#{@detail}" : "create-custom-widget"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::Object)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::Object), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(GObject::Object)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, GObject::Object), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, GObject::Object)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "create-custom-widget")
      end
    end

    def create_custom_widget_signal
      CreateCustomWidgetSignal.new(self)
    end

    struct CustomWidgetApplySignal < GObject::Signal
      def name : String
        @detail ? "custom-widget-apply::#{@detail}" : "custom-widget-apply"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_widget : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          widget = Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(widget)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_widget : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          widget = Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, Gtk::Widget, Nil)).unbox(_lib_box).call(_sender, widget)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(widget : Gtk::Widget) : Nil
        LibGObject.g_signal_emit_by_name(@source, "custom-widget-apply", widget)
      end
    end

    def custom_widget_apply_signal
      CustomWidgetApplySignal.new(self)
    end

    struct DoneSignal < GObject::Signal
      def name : String
        @detail ? "done::#{@detail}" : "done"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintOperationResult, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintOperationResult, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_result : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          result = Gtk::PrintOperationResult.new(lib_result)
          ::Box(Proc(Gtk::PrintOperationResult, Nil)).unbox(_lib_box).call(result)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::PrintOperationResult, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_result : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          result = Gtk::PrintOperationResult.new(lib_result)
          ::Box(Proc(Gtk::PrintOperation, Gtk::PrintOperationResult, Nil)).unbox(_lib_box).call(_sender, result)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(result : Gtk::PrintOperationResult) : Nil
        LibGObject.g_signal_emit_by_name(@source, "done", result)
      end
    end

    def done_signal
      DoneSignal.new(self)
    end

    struct DrawPageSignal < GObject::Signal
      def name : String
        @detail ? "draw-page::#{@detail}" : "draw-page"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintContext, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintContext, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), lib_page_nr : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # NoStrategy
          page_nr = lib_page_nr
          ::Box(Proc(Gtk::PrintContext, Int32, Nil)).unbox(_lib_box).call(context, page_nr)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::PrintContext, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), lib_page_nr : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # NoStrategy
          page_nr = lib_page_nr
          ::Box(Proc(Gtk::PrintOperation, Gtk::PrintContext, Int32, Nil)).unbox(_lib_box).call(_sender, context, page_nr)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gtk::PrintContext, page_nr : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "draw-page", context, page_nr)
      end
    end

    def draw_page_signal
      DrawPageSignal.new(self)
    end

    struct EndPrintSignal < GObject::Signal
      def name : String
        @detail ? "end-print::#{@detail}" : "end-print"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintContext, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintContext, Nil)).unbox(_lib_box).call(context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::PrintContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, Gtk::PrintContext, Nil)).unbox(_lib_box).call(_sender, context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gtk::PrintContext) : Nil
        LibGObject.g_signal_emit_by_name(@source, "end-print", context)
      end
    end

    def end_print_signal
      EndPrintSignal.new(self)
    end

    struct PaginateSignal < GObject::Signal
      def name : String
        @detail ? "paginate::#{@detail}" : "paginate"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintContext, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintContext, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintContext, Bool)).unbox(_lib_box).call(context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::PrintContext, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, Gtk::PrintContext, Bool)).unbox(_lib_box).call(_sender, context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gtk::PrintContext) : Nil
        LibGObject.g_signal_emit_by_name(@source, "paginate", context)
      end
    end

    def paginate_signal
      PaginateSignal.new(self)
    end

    struct PreviewSignal < GObject::Signal
      def name : String
        @detail ? "preview::#{@detail}" : "preview"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::Window?, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::Window?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_preview : Pointer(Void), lib_context : Pointer(Void), lib_parent : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          preview = Gtk::AbstractPrintOperationPreview.new(lib_preview, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          parent = (lib_parent.null? ? nil : Gtk::Window.new(lib_parent, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          parent = Gtk::Window.new(lib_parent, GICrystal::Transfer::None) unless lib_parent.null?
          ::Box(Proc(Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::Window?, Bool)).unbox(_lib_box).call(preview, context, parent)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::Window?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_preview : Pointer(Void), lib_context : Pointer(Void), lib_parent : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          preview = Gtk::AbstractPrintOperationPreview.new(lib_preview, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          parent = (lib_parent.null? ? nil : Gtk::Window.new(lib_parent, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          parent = Gtk::Window.new(lib_parent, GICrystal::Transfer::None) unless lib_parent.null?
          ::Box(Proc(Gtk::PrintOperation, Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::Window?, Bool)).unbox(_lib_box).call(_sender, preview, context, parent)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(preview : Gtk::PrintOperationPreview, context : Gtk::PrintContext, parent : Gtk::Window?) : Nil
        # Generator::NullableArrayPlan
        parent = if parent.nil?
                   Void.null
                 else
                   parent.to_unsafe
                 end

        LibGObject.g_signal_emit_by_name(@source, "preview", preview, context, parent)
      end
    end

    def preview_signal
      PreviewSignal.new(self)
    end

    struct RequestPageSetupSignal < GObject::Signal
      def name : String
        @detail ? "request-page-setup::#{@detail}" : "request-page-setup"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintContext, Int32, Gtk::PageSetup, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintContext, Int32, Gtk::PageSetup, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), lib_page_nr : Int32, lib_setup : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # NoStrategy
          page_nr = lib_page_nr
          # Generator::BuiltInTypeArgPlan
          setup = Gtk::PageSetup.new(lib_setup, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintContext, Int32, Gtk::PageSetup, Nil)).unbox(_lib_box).call(context, page_nr, setup)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::PrintContext, Int32, Gtk::PageSetup, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), lib_page_nr : Int32, lib_setup : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # NoStrategy
          page_nr = lib_page_nr
          # Generator::BuiltInTypeArgPlan
          setup = Gtk::PageSetup.new(lib_setup, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, Gtk::PrintContext, Int32, Gtk::PageSetup, Nil)).unbox(_lib_box).call(_sender, context, page_nr, setup)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gtk::PrintContext, page_nr : Int32, setup : Gtk::PageSetup) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-page-setup", context, page_nr, setup)
      end
    end

    def request_page_setup_signal
      RequestPageSetupSignal.new(self)
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

      def connect(handler : Proc(Gtk::PrintOperation, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, Nil)).unbox(_lib_box).call(_sender)
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

    struct UpdateCustomWidgetSignal < GObject::Signal
      def name : String
        @detail ? "update-custom-widget::#{@detail}" : "update-custom-widget"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, Gtk::PageSetup, Gtk::PrintSettings, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, Gtk::PageSetup, Gtk::PrintSettings, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_widget : Pointer(Void), lib_setup : Pointer(Void), lib_settings : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          widget = Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          setup = Gtk::PageSetup.new(lib_setup, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          settings = Gtk::PrintSettings.new(lib_settings, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Gtk::PageSetup, Gtk::PrintSettings, Nil)).unbox(_lib_box).call(widget, setup, settings)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperation, Gtk::Widget, Gtk::PageSetup, Gtk::PrintSettings, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_widget : Pointer(Void), lib_setup : Pointer(Void), lib_settings : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::PrintOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          widget = Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          setup = Gtk::PageSetup.new(lib_setup, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          settings = Gtk::PrintSettings.new(lib_settings, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperation, Gtk::Widget, Gtk::PageSetup, Gtk::PrintSettings, Nil)).unbox(_lib_box).call(_sender, widget, setup, settings)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(widget : Gtk::Widget, setup : Gtk::PageSetup, settings : Gtk::PrintSettings) : Nil
        LibGObject.g_signal_emit_by_name(@source, "update-custom-widget", widget, setup, settings)
      end
    end

    def update_custom_widget_signal
      UpdateCustomWidgetSignal.new(self)
    end

    # begin_print: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_begin_print_vfunc(impl_method_name)
      private def self._vfunc_begin_print(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Void
        # @context: 

# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_begin_print(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # begin_print: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_unsafe_begin_print_vfunc(impl_method_name)
      private def self._vfunc_unsafe_begin_print(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Void
# @context: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_begin_print = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_begin_print(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_begin_print : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # custom_widget_apply: (None)
    # @widget:
    # Returns: (transfer none)
    private macro _register_custom_widget_apply_vfunc(impl_method_name)
      private def self._vfunc_custom_widget_apply(%this : Pointer(Void), lib_widget :  Pointer(Void), ) : Void
        # @widget: 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_custom_widget_apply(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # custom_widget_apply: (None)
    # @widget:
    # Returns: (transfer none)
    private macro _register_unsafe_custom_widget_apply_vfunc(impl_method_name)
      private def self._vfunc_unsafe_custom_widget_apply(%this : Pointer(Void), lib_widget :  Pointer(Void), ) : Void
# @widget: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_custom_widget_apply = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_custom_widget_apply(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_custom_widget_apply : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # done: (None)
    # @result:
    # Returns: (transfer none)
    private macro _register_done_vfunc(impl_method_name)
      private def self._vfunc_done(%this : Pointer(Void), lib_result :  UInt32, ) : Void
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gtk::PrintOperationResult.new(lib_result)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_done(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # done: (None)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_done_vfunc(impl_method_name)
      private def self._vfunc_unsafe_done(%this : Pointer(Void), lib_result :  UInt32, ) : Void
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_done = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_done(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_done : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # draw_page: (None)
    # @context:
    # @page_nr:
    # Returns: (transfer none)
    private macro _register_draw_page_vfunc(impl_method_name)
      private def self._vfunc_draw_page(%this : Pointer(Void), lib_context :  Pointer(Void), lib_page_nr :  Int32, ) : Void
        # @context: 
# @page_nr: 

# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
page_nr=lib_page_nr


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, page_nr)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_page(Pointer(Void), Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # draw_page: (None)
    # @context:
    # @page_nr:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_page_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_page(%this : Pointer(Void), lib_context :  Pointer(Void), lib_page_nr :  Int32, ) : Void
# @context: 
# @page_nr: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_page_nr)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_page = Proc(Pointer(Void), Pointer(Void), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_page(Pointer(Void), Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_page : Proc(Pointer(Void), Pointer(Void), Int32, Void)? = nil
    end

    # end_print: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_end_print_vfunc(impl_method_name)
      private def self._vfunc_end_print(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Void
        # @context: 

# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_end_print(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # end_print: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_unsafe_end_print_vfunc(impl_method_name)
      private def self._vfunc_unsafe_end_print(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Void
# @context: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_end_print = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_end_print(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_end_print : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # paginate: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_paginate_vfunc(impl_method_name)
      private def self._vfunc_paginate(%this : Pointer(Void), lib_context :  Pointer(Void), ) : LibC::Int
        # @context: 

# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_paginate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # paginate: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_unsafe_paginate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_paginate(%this : Pointer(Void), lib_context :  Pointer(Void), ) : LibC::Int
# @context: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_paginate = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_paginate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_paginate : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # preview: (None)
    # @preview:
    # @context:
    # @parent:
    # Returns: (transfer none)
    private macro _register_preview_vfunc(impl_method_name)
      private def self._vfunc_preview(%this : Pointer(Void), lib_preview :  Pointer(Void), lib_context :  Pointer(Void), lib_parent :  Pointer(Void), ) : LibC::Int
        # @preview: 
# @context: 
# @parent: 

# Generator::BuiltInTypeArgPlan
preview=Gtk::AbstractPrintOperationPreview.new(lib_preview, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
parent=Gtk::Window.new(lib_parent, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(preview, context, parent)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_preview(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # preview: (None)
    # @preview:
    # @context:
    # @parent:
    # Returns: (transfer none)
    private macro _register_unsafe_preview_vfunc(impl_method_name)
      private def self._vfunc_unsafe_preview(%this : Pointer(Void), lib_preview :  Pointer(Void), lib_context :  Pointer(Void), lib_parent :  Pointer(Void), ) : LibC::Int
# @preview: 
# @context: 
# @parent: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_preview, lib_context, lib_parent)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_preview = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_preview(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_preview : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # request_page_setup: (None)
    # @context:
    # @page_nr:
    # @setup:
    # Returns: (transfer none)
    private macro _register_request_page_setup_vfunc(impl_method_name)
      private def self._vfunc_request_page_setup(%this : Pointer(Void), lib_context :  Pointer(Void), lib_page_nr :  Int32, lib_setup :  Pointer(Void), ) : Void
        # @context: 
# @page_nr: 
# @setup: 

# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
page_nr=lib_page_nr
# Generator::BuiltInTypeArgPlan
setup=Gtk::PageSetup.new(lib_setup, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, page_nr, setup)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_page_setup(Pointer(Void), Pointer(Void), Int32, Pointer(Void))).pointer
        previous_def
      end
    end

    # request_page_setup: (None)
    # @context:
    # @page_nr:
    # @setup:
    # Returns: (transfer none)
    private macro _register_unsafe_request_page_setup_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_page_setup(%this : Pointer(Void), lib_context :  Pointer(Void), lib_page_nr :  Int32, lib_setup :  Pointer(Void), ) : Void
# @context: 
# @page_nr: 
# @setup: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_page_nr, lib_setup)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_page_setup = Proc(Pointer(Void), Pointer(Void), Int32, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_page_setup(Pointer(Void), Pointer(Void), Int32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_page_setup : Proc(Pointer(Void), Pointer(Void), Int32, Pointer(Void), Void)? = nil
    end

    # status_changed: (None)
    # Returns: (transfer none)
    private macro _register_status_changed_vfunc(impl_method_name)
      private def self._vfunc_status_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_status_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # status_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_status_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_status_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_status_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_status_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_status_changed : Proc(Pointer(Void), Void)? = nil
    end

    # update_custom_widget: (None)
    # @widget:
    # @setup:
    # @settings:
    # Returns: (transfer none)
    private macro _register_update_custom_widget_vfunc(impl_method_name)
      private def self._vfunc_update_custom_widget(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_setup :  Pointer(Void), lib_settings :  Pointer(Void), ) : Void
        # @widget: 
# @setup: 
# @settings: 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
setup=Gtk::PageSetup.new(lib_setup, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
settings=Gtk::PrintSettings.new(lib_settings, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, setup, settings)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_update_custom_widget(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # update_custom_widget: (None)
    # @widget:
    # @setup:
    # @settings:
    # Returns: (transfer none)
    private macro _register_unsafe_update_custom_widget_vfunc(impl_method_name)
      private def self._vfunc_unsafe_update_custom_widget(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_setup :  Pointer(Void), lib_settings :  Pointer(Void), ) : Void
# @widget: 
# @setup: 
# @settings: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_setup, lib_settings)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_update_custom_widget = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_update_custom_widget(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_update_custom_widget : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
