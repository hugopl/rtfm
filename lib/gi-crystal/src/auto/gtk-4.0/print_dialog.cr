require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PrintDialog < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::PrintDialogClass), class_init,
        sizeof(LibGtk::PrintDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(PrintDialog, g_object_get_qdata)

    # Initialize a new `PrintDialog`.
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

    def initialize(*, accept_label : ::String? = nil, modal : Bool? = nil, page_setup : Gtk::PageSetup? = nil, print_settings : Gtk::PrintSettings? = nil, title : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !accept_label.nil?
        (_names.to_unsafe + _n).value = "accept-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_label)
        _n += 1
      end
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
        _n += 1
      end
      if !page_setup.nil?
        (_names.to_unsafe + _n).value = "page-setup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page_setup)
        _n += 1
      end
      if !print_settings.nil?
        (_names.to_unsafe + _n).value = "print-settings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, print_settings)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
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
      @@g_type ||= LibGtk.gtk_print_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PrintDialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accept_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "accept-label", unsafe_value, Pointer(Void).null)
      value
    end

    def accept_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "accept-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#accept_label` property to nil.
    def accept_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "accept-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#accept_label`, but can return nil.
    def accept_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "accept-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def modal=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "modal", unsafe_value, Pointer(Void).null)
      value
    end

    def modal? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "modal", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def self.new : self
      # gtk_print_dialog_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_dialog_new

      # Return value handling
      Gtk::PrintDialog.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_label : ::String
      # gtk_print_dialog_get_accept_label: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_dialog_get_accept_label(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def modal : Bool
      # gtk_print_dialog_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_dialog_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def page_setup : Gtk::PageSetup?
      # gtk_print_dialog_get_page_setup: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_dialog_get_page_setup(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def print_settings : Gtk::PrintSettings?
      # gtk_print_dialog_get_print_settings: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_dialog_get_print_settings(to_unsafe)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def title : ::String
      # gtk_print_dialog_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_dialog_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def print(parent : Gtk::Window?, setup : Gtk::PrintSetup?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_print_dialog_print: (Method)
      # @parent: (nullable)
      # @setup: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      setup = if setup.nil?
                Pointer(Void).null
              else
                setup.to_unsafe
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
      LibGtk.gtk_print_dialog_print(to_unsafe, parent, setup, cancellable, callback, user_data)

      # Return value handling
    end

    def print_file(parent : Gtk::Window?, setup : Gtk::PrintSetup?, file : Gio::File, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_print_dialog_print_file: (Method)
      # @parent: (nullable)
      # @setup: (nullable)
      # @file:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      setup = if setup.nil?
                Pointer(Void).null
              else
                setup.to_unsafe
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
      LibGtk.gtk_print_dialog_print_file(to_unsafe, parent, setup, file, cancellable, callback, user_data)

      # Return value handling
    end

    def print_file_finish(result : Gio::AsyncResult) : Bool
      # gtk_print_dialog_print_file_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_dialog_print_file_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def print_finish(result : Gio::AsyncResult) : Gio::OutputStream
      # gtk_print_dialog_print_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_dialog_print_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::OutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_label=(accept_label : ::String) : Nil
      # gtk_print_dialog_set_accept_label: (Method | Setter)
      # @accept_label:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_dialog_set_accept_label(to_unsafe, accept_label)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # gtk_print_dialog_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_dialog_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def page_setup=(page_setup : Gtk::PageSetup) : Nil
      # gtk_print_dialog_set_page_setup: (Method | Setter)
      # @page_setup:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_dialog_set_page_setup(to_unsafe, page_setup)

      # Return value handling
    end

    def print_settings=(print_settings : Gtk::PrintSettings) : Nil
      # gtk_print_dialog_set_print_settings: (Method | Setter)
      # @print_settings:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_dialog_set_print_settings(to_unsafe, print_settings)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # gtk_print_dialog_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_dialog_set_title(to_unsafe, title)

      # Return value handling
    end

    def setup(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_print_dialog_setup: (Method)
      # @parent: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
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
      LibGtk.gtk_print_dialog_setup(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def setup_finish(result : Gio::AsyncResult) : Gtk::PrintSetup
      # gtk_print_dialog_setup_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_dialog_setup_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gtk::PrintSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
