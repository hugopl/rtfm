require "./native_dialog"
require "./file_chooser"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FileChooserNative < NativeDialog
    include FileChooser

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FileChooserNativeClass), class_init,
        sizeof(LibGtk::FileChooserNative), instance_init, 0)
    end

    GICrystal.declare_new_method(FileChooserNative, g_object_get_qdata)

    # Initialize a new `FileChooserNative`.
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

    def initialize(*, accept_label : ::String? = nil, action : Gtk::FileChooserAction? = nil, cancel_label : ::String? = nil, create_folders : Bool? = nil, filter : Gtk::FileFilter? = nil, filters : Gio::ListModel? = nil, modal : Bool? = nil, select_multiple : Bool? = nil, shortcut_folders : Gio::ListModel? = nil, title : ::String? = nil, transient_for : Gtk::Window? = nil, visible : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[12]
      _values = StaticArray(LibGObject::Value, 12).new(LibGObject::Value.new)
      _n = 0

      if !accept_label.nil?
        (_names.to_unsafe + _n).value = "accept-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_label)
        _n += 1
      end
      if !action.nil?
        (_names.to_unsafe + _n).value = "action".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action)
        _n += 1
      end
      if !cancel_label.nil?
        (_names.to_unsafe + _n).value = "cancel-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cancel_label)
        _n += 1
      end
      if !create_folders.nil?
        (_names.to_unsafe + _n).value = "create-folders".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, create_folders)
        _n += 1
      end
      if !filter.nil?
        (_names.to_unsafe + _n).value = "filter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filter)
        _n += 1
      end
      if !filters.nil?
        (_names.to_unsafe + _n).value = "filters".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filters)
        _n += 1
      end
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
        _n += 1
      end
      if !select_multiple.nil?
        (_names.to_unsafe + _n).value = "select-multiple".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, select_multiple)
        _n += 1
      end
      if !shortcut_folders.nil?
        (_names.to_unsafe + _n).value = "shortcut-folders".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, shortcut_folders)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !transient_for.nil?
        (_names.to_unsafe + _n).value = "transient-for".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transient_for)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
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
      @@g_type ||= LibGtk.gtk_file_chooser_native_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FileChooserNative.new(Void*, GICrystal::Transfer)
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

    def cancel_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "cancel-label", unsafe_value, Pointer(Void).null)
      value
    end

    def cancel_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "cancel-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#cancel_label` property to nil.
    def cancel_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "cancel-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#cancel_label`, but can return nil.
    def cancel_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "cancel-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    @[Deprecated]
    def self.new(title : ::String?, parent : Gtk::Window?, action : Gtk::FileChooserAction, accept_label : ::String?, cancel_label : ::String?) : self
      # gtk_file_chooser_native_new: (Constructor)
      # @title: (nullable)
      # @parent: (nullable)
      # @action:
      # @accept_label: (nullable)
      # @cancel_label: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end
      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      accept_label = if accept_label.nil?
                       Pointer(LibC::Char).null
                     else
                       accept_label.to_unsafe
                     end
      # Generator::NullableArrayPlan
      cancel_label = if cancel_label.nil?
                       Pointer(LibC::Char).null
                     else
                       cancel_label.to_unsafe
                     end

      # C call
      _retval = LibGtk.gtk_file_chooser_native_new(title, parent, action, accept_label, cancel_label)

      # Return value handling
      Gtk::FileChooserNative.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def accept_label : ::String?
      # gtk_file_chooser_native_get_accept_label: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_chooser_native_get_accept_label(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def cancel_label : ::String?
      # gtk_file_chooser_native_get_cancel_label: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_chooser_native_get_cancel_label(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def accept_label=(accept_label : ::String?) : Nil
      # gtk_file_chooser_native_set_accept_label: (Method | Setter)
      # @accept_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      accept_label = if accept_label.nil?
                       Pointer(LibC::Char).null
                     else
                       accept_label.to_unsafe
                     end

      # C call
      LibGtk.gtk_file_chooser_native_set_accept_label(to_unsafe, accept_label)

      # Return value handling
    end

    @[Deprecated]
    def cancel_label=(cancel_label : ::String?) : Nil
      # gtk_file_chooser_native_set_cancel_label: (Method | Setter)
      # @cancel_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancel_label = if cancel_label.nil?
                       Pointer(LibC::Char).null
                     else
                       cancel_label.to_unsafe
                     end

      # C call
      LibGtk.gtk_file_chooser_native_set_cancel_label(to_unsafe, cancel_label)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
