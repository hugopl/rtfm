module Gtk
  module FileChooser
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::FileChooser
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__FileChooser(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractFileChooser.g_type
    end

    def action=(value : Gtk::FileChooserAction) : Gtk::FileChooserAction
      unsafe_value = value

      LibGObject.g_object_set(self, "action", unsafe_value, Pointer(Void).null)
      value
    end

    def action : Gtk::FileChooserAction
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "action", pointerof(value), Pointer(Void).null)
      Gtk::FileChooserAction.new(value)
    end

    def create_folders=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "create-folders", unsafe_value, Pointer(Void).null)
      value
    end

    def create_folders? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "create-folders", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def filter=(value : Gtk::FileFilter?) : Gtk::FileFilter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "filter", unsafe_value, Pointer(Void).null)
      value
    end

    def filter : Gtk::FileFilter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filter", pointerof(value), Pointer(Void).null)
      Gtk::FileFilter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def filters : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filters", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def select_multiple=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "select-multiple", unsafe_value, Pointer(Void).null)
      value
    end

    def select_multiple? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "select-multiple", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def shortcut_folders : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "shortcut-folders", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    @[Deprecated]
    def add_choice(id : ::String, label : ::String, options : Enumerable(::String)?, option_labels : Enumerable(::String)?) : Nil
      # gtk_file_chooser_add_choice: (Method)
      # @id:
      # @label:
      # @options: (nullable) (array zero-terminated=1 element-type Utf8)
      # @option_labels: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      options = if options.nil?
                  Pointer(Pointer(LibC::Char)).null
                else
                  options.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                end
      # Generator::NullableArrayPlan
      option_labels = if option_labels.nil?
                        Pointer(Pointer(LibC::Char)).null
                      else
                        option_labels.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                      end

      # C call
      LibGtk.gtk_file_chooser_add_choice(to_unsafe, id, label, options, option_labels)

      # Return value handling
    end

    @[Deprecated]
    def add_filter(filter : Gtk::FileFilter) : Nil
      # gtk_file_chooser_add_filter: (Method)
      # @filter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_add_filter(to_unsafe, filter)

      # Return value handling
    end

    @[Deprecated]
    def add_shortcut_folder(folder : Gio::File) : Bool
      # gtk_file_chooser_add_shortcut_folder: (Method | Throws)
      # @folder:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_chooser_add_shortcut_folder(to_unsafe, folder, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def action : Gtk::FileChooserAction
      # gtk_file_chooser_get_action: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_action(to_unsafe)

      # Return value handling
      Gtk::FileChooserAction.new(_retval)
    end

    @[Deprecated]
    def choice(id : ::String) : ::String?
      # gtk_file_chooser_get_choice: (Method)
      # @id:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_choice(to_unsafe, id)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def create_folders : Bool
      # gtk_file_chooser_get_create_folders: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_create_folders(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def current_folder : Gio::File?
      # gtk_file_chooser_get_current_folder: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_current_folder(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def current_name : ::String?
      # gtk_file_chooser_get_current_name: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_current_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    @[Deprecated]
    def file : Gio::File?
      # gtk_file_chooser_get_file: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def files : Gio::ListModel
      # gtk_file_chooser_get_files: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_files(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def filter : Gtk::FileFilter?
      # gtk_file_chooser_get_filter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_filter(to_unsafe)

      # Return value handling
      Gtk::FileFilter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def filters : Gio::ListModel
      # gtk_file_chooser_get_filters: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_filters(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def select_multiple : Bool
      # gtk_file_chooser_get_select_multiple: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_select_multiple(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def shortcut_folders : Gio::ListModel
      # gtk_file_chooser_get_shortcut_folders: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_file_chooser_get_shortcut_folders(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def remove_choice(id : ::String) : Nil
      # gtk_file_chooser_remove_choice: (Method)
      # @id:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_remove_choice(to_unsafe, id)

      # Return value handling
    end

    @[Deprecated]
    def remove_filter(filter : Gtk::FileFilter) : Nil
      # gtk_file_chooser_remove_filter: (Method)
      # @filter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_remove_filter(to_unsafe, filter)

      # Return value handling
    end

    @[Deprecated]
    def remove_shortcut_folder(folder : Gio::File) : Bool
      # gtk_file_chooser_remove_shortcut_folder: (Method | Throws)
      # @folder:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_chooser_remove_shortcut_folder(to_unsafe, folder, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def action=(action : Gtk::FileChooserAction) : Nil
      # gtk_file_chooser_set_action: (Method | Setter)
      # @action:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_set_action(to_unsafe, action)

      # Return value handling
    end

    @[Deprecated]
    def set_choice(id : ::String, option : ::String) : Nil
      # gtk_file_chooser_set_choice: (Method)
      # @id:
      # @option:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_set_choice(to_unsafe, id, option)

      # Return value handling
    end

    @[Deprecated]
    def create_folders=(create_folders : Bool) : Nil
      # gtk_file_chooser_set_create_folders: (Method | Setter)
      # @create_folders:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_set_create_folders(to_unsafe, create_folders)

      # Return value handling
    end

    @[Deprecated]
    def current_folder=(file : Gio::File?) : Bool
      # gtk_file_chooser_set_current_folder: (Method | Throws)
      # @file: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_file_chooser_set_current_folder(to_unsafe, file, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def current_name=(name : ::String) : Nil
      # gtk_file_chooser_set_current_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_set_current_name(to_unsafe, name)

      # Return value handling
    end

    @[Deprecated]
    def file=(file : Gio::File) : Bool
      # gtk_file_chooser_set_file: (Method | Throws)
      # @file:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_chooser_set_file(to_unsafe, file, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def filter=(filter : Gtk::FileFilter) : Nil
      # gtk_file_chooser_set_filter: (Method | Setter)
      # @filter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_set_filter(to_unsafe, filter)

      # Return value handling
    end

    @[Deprecated]
    def select_multiple=(select_multiple : Bool) : Nil
      # gtk_file_chooser_set_select_multiple: (Method | Setter)
      # @select_multiple:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_chooser_set_select_multiple(to_unsafe, select_multiple)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractFileChooser.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractFileChooser < GObject::Object
    include FileChooser

    GICrystal.declare_new_method(Gtk::AbstractFileChooser, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_file_chooser_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractFileChooser.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
