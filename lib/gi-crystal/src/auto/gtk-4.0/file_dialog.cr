require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FileDialog < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FileDialogClass), class_init,
        sizeof(LibGtk::FileDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(FileDialog, g_object_get_qdata)

    # Initialize a new `FileDialog`.
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

    def initialize(*, accept_label : ::String? = nil, default_filter : Gtk::FileFilter? = nil, filters : Gio::ListModel? = nil, initial_file : Gio::File? = nil, initial_folder : Gio::File? = nil, initial_name : ::String? = nil, modal : Bool? = nil, title : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !accept_label.nil?
        (_names.to_unsafe + _n).value = "accept-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_label)
        _n += 1
      end
      if !default_filter.nil?
        (_names.to_unsafe + _n).value = "default-filter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_filter)
        _n += 1
      end
      if !filters.nil?
        (_names.to_unsafe + _n).value = "filters".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filters)
        _n += 1
      end
      if !initial_file.nil?
        (_names.to_unsafe + _n).value = "initial-file".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, initial_file)
        _n += 1
      end
      if !initial_folder.nil?
        (_names.to_unsafe + _n).value = "initial-folder".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, initial_folder)
        _n += 1
      end
      if !initial_name.nil?
        (_names.to_unsafe + _n).value = "initial-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, initial_name)
        _n += 1
      end
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
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
      @@g_type ||= LibGtk.gtk_file_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FileDialog.new(Void*, GICrystal::Transfer)
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

    def default_filter=(value : Gtk::FileFilter?) : Gtk::FileFilter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "default-filter", unsafe_value, Pointer(Void).null)
      value
    end

    def default_filter : Gtk::FileFilter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "default-filter", pointerof(value), Pointer(Void).null)
      Gtk::FileFilter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def filters=(value : Gio::ListModel?) : Gio::ListModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "filters", unsafe_value, Pointer(Void).null)
      value
    end

    def filters : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filters", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def initial_file=(value : Gio::File?) : Gio::File?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "initial-file", unsafe_value, Pointer(Void).null)
      value
    end

    def initial_file : Gio::File?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "initial-file", pointerof(value), Pointer(Void).null)
      Gio::AbstractFile.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def initial_folder=(value : Gio::File?) : Gio::File?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "initial-folder", unsafe_value, Pointer(Void).null)
      value
    end

    def initial_folder : Gio::File?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "initial-folder", pointerof(value), Pointer(Void).null)
      Gio::AbstractFile.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def initial_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "initial-name", unsafe_value, Pointer(Void).null)
      value
    end

    def initial_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "initial-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#initial_name` property to nil.
    def initial_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "initial-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#initial_name`, but can return nil.
    def initial_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "initial-name", pointerof(value), Pointer(Void).null)
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
      # gtk_file_dialog_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_file_dialog_new

      # Return value handling
      Gtk::FileDialog.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_label : ::String?
      # gtk_file_dialog_get_accept_label: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_accept_label(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def default_filter : Gtk::FileFilter?
      # gtk_file_dialog_get_default_filter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_default_filter(to_unsafe)

      # Return value handling
      Gtk::FileFilter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def filters : Gio::ListModel?
      # gtk_file_dialog_get_filters: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_filters(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def initial_file : Gio::File?
      # gtk_file_dialog_get_initial_file: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_initial_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def initial_folder : Gio::File?
      # gtk_file_dialog_get_initial_folder: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_initial_folder(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def initial_name : ::String?
      # gtk_file_dialog_get_initial_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_initial_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def modal : Bool
      # gtk_file_dialog_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def title : ::String
      # gtk_file_dialog_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_dialog_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def open(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_open: (Method)
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
      LibGtk.gtk_file_dialog_open(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def open_finish(result : Gio::AsyncResult) : Gio::File
      # gtk_file_dialog_open_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_open_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def open_multiple(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_open_multiple: (Method)
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
      LibGtk.gtk_file_dialog_open_multiple(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def open_multiple_finish(result : Gio::AsyncResult) : Gio::ListModel
      # gtk_file_dialog_open_multiple_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_open_multiple_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def open_multiple_text_files(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_open_multiple_text_files: (Method)
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
      LibGtk.gtk_file_dialog_open_multiple_text_files(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def open_multiple_text_files_finish(result : Gio::AsyncResult, encoding : ::String) : Gio::ListModel
      # gtk_file_dialog_open_multiple_text_files_finish: (Method | Throws)
      # @result:
      # @encoding: (out)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_open_multiple_text_files_finish(to_unsafe, result, encoding, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def open_text_file(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_open_text_file: (Method)
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
      LibGtk.gtk_file_dialog_open_text_file(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def open_text_file_finish(result : Gio::AsyncResult, encoding : ::String) : Gio::File
      # gtk_file_dialog_open_text_file_finish: (Method | Throws)
      # @result:
      # @encoding: (out)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_open_text_file_finish(to_unsafe, result, encoding, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def save(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_save: (Method)
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
      LibGtk.gtk_file_dialog_save(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def save_finish(result : Gio::AsyncResult) : Gio::File
      # gtk_file_dialog_save_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_save_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def save_text_file(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_save_text_file: (Method)
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
      LibGtk.gtk_file_dialog_save_text_file(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def save_text_file_finish(result : Gio::AsyncResult, encoding : ::String, line_ending : ::String) : Gio::File
      # gtk_file_dialog_save_text_file_finish: (Method | Throws)
      # @result:
      # @encoding: (out)
      # @line_ending: (out)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_save_text_file_finish(to_unsafe, result, encoding, line_ending, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def select_folder(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_select_folder: (Method)
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
      LibGtk.gtk_file_dialog_select_folder(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def select_folder_finish(result : Gio::AsyncResult) : Gio::File
      # gtk_file_dialog_select_folder_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_select_folder_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def select_multiple_folders(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_dialog_select_multiple_folders: (Method)
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
      LibGtk.gtk_file_dialog_select_multiple_folders(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def select_multiple_folders_finish(result : Gio::AsyncResult) : Gio::ListModel
      # gtk_file_dialog_select_multiple_folders_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_dialog_select_multiple_folders_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_label=(accept_label : ::String?) : Nil
      # gtk_file_dialog_set_accept_label: (Method | Setter)
      # @accept_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      accept_label = if accept_label.nil?
                       Pointer(LibC::Char).null
                     else
                       accept_label.to_unsafe
                     end

      # C call
      LibGtk.gtk_file_dialog_set_accept_label(to_unsafe, accept_label)

      # Return value handling
    end

    def default_filter=(filter : Gtk::FileFilter?) : Nil
      # gtk_file_dialog_set_default_filter: (Method | Setter)
      # @filter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filter = if filter.nil?
                 Pointer(Void).null
               else
                 filter.to_unsafe
               end

      # C call
      LibGtk.gtk_file_dialog_set_default_filter(to_unsafe, filter)

      # Return value handling
    end

    def filters=(filters : Gio::ListModel?) : Nil
      # gtk_file_dialog_set_filters: (Method | Setter)
      # @filters: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filters = if filters.nil?
                  Pointer(Void).null
                else
                  filters.to_unsafe
                end

      # C call
      LibGtk.gtk_file_dialog_set_filters(to_unsafe, filters)

      # Return value handling
    end

    def initial_file=(file : Gio::File?) : Nil
      # gtk_file_dialog_set_initial_file: (Method | Setter)
      # @file: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      LibGtk.gtk_file_dialog_set_initial_file(to_unsafe, file)

      # Return value handling
    end

    def initial_folder=(folder : Gio::File?) : Nil
      # gtk_file_dialog_set_initial_folder: (Method | Setter)
      # @folder: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      folder = if folder.nil?
                 Pointer(Void).null
               else
                 folder.to_unsafe
               end

      # C call
      LibGtk.gtk_file_dialog_set_initial_folder(to_unsafe, folder)

      # Return value handling
    end

    def initial_name=(name : ::String?) : Nil
      # gtk_file_dialog_set_initial_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_file_dialog_set_initial_name(to_unsafe, name)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # gtk_file_dialog_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_dialog_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # gtk_file_dialog_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_dialog_set_title(to_unsafe, title)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
