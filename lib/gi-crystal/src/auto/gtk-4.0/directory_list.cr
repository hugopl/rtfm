require "../g_object-2.0/object"
require "../gio-2.0/list_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class DirectoryList < GObject::Object
    include Gio::ListModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::DirectoryListClass), class_init,
        sizeof(LibGtk::DirectoryList), instance_init, 0)
    end

    GICrystal.declare_new_method(DirectoryList, g_object_get_qdata)

    # Initialize a new `DirectoryList`.
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

    def initialize(*, attributes : ::String? = nil, error : GLib::Error? = nil, file : Gio::File? = nil, io_priority : Int32? = nil, item_type : UInt64? = nil, loading : Bool? = nil, monitored : Bool? = nil, n_items : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !attributes.nil?
        (_names.to_unsafe + _n).value = "attributes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, attributes)
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
      if !io_priority.nil?
        (_names.to_unsafe + _n).value = "io-priority".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, io_priority)
        _n += 1
      end
      if !item_type.nil?
        (_names.to_unsafe + _n).value = "item-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_type)
        _n += 1
      end
      if !loading.nil?
        (_names.to_unsafe + _n).value = "loading".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, loading)
        _n += 1
      end
      if !monitored.nil?
        (_names.to_unsafe + _n).value = "monitored".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, monitored)
        _n += 1
      end
      if !n_items.nil?
        (_names.to_unsafe + _n).value = "n-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_items)
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
      @@g_type ||= LibGtk.gtk_directory_list_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::DirectoryList.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def attributes=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "attributes", unsafe_value, Pointer(Void).null)
      value
    end

    def attributes : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "attributes", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#attributes` property to nil.
    def attributes=(value : Nil) : Nil
      LibGObject.g_object_set(self, "attributes", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#attributes`, but can return nil.
    def attributes? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "attributes", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def error : GLib::Error
      # Returns: None

      value = uninitialized Pointer(LibGLib::Error)
      LibGObject.g_object_get(self, "error", pointerof(value), Pointer(Void).null)
      Gtk.gerror_to_crystal(value, GICrystal::Transfer::None)
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

    def io_priority=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "io-priority", unsafe_value, Pointer(Void).null)
      value
    end

    def io_priority : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "io-priority", pointerof(value), Pointer(Void).null)
      value
    end

    def item_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "item-type", pointerof(value), Pointer(Void).null)
      value
    end

    def loading? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "loading", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def monitored=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "monitored", unsafe_value, Pointer(Void).null)
      value
    end

    def monitored? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "monitored", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(attributes : ::String?, file : Gio::File?) : self
      # gtk_directory_list_new: (Constructor)
      # @attributes: (nullable)
      # @file: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      attributes = if attributes.nil?
                     Pointer(LibC::Char).null
                   else
                     attributes.to_unsafe
                   end
      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_directory_list_new(attributes, file)

      # Return value handling
      Gtk::DirectoryList.new(_retval, GICrystal::Transfer::Full)
    end

    def attributes : ::String?
      # gtk_directory_list_get_attributes: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_directory_list_get_attributes(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def error : GLib::Error?
      # gtk_directory_list_get_error: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_directory_list_get_error(to_unsafe)

      # Return value handling
      Gtk.gerror_to_crystal(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def file : Gio::File?
      # gtk_directory_list_get_file: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_directory_list_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def io_priority : Int32
      # gtk_directory_list_get_io_priority: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_directory_list_get_io_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def monitored : Bool
      # gtk_directory_list_get_monitored: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_directory_list_get_monitored(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_loading? : Bool
      # gtk_directory_list_is_loading: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_directory_list_is_loading(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def attributes=(attributes : ::String?) : Nil
      # gtk_directory_list_set_attributes: (Method | Setter)
      # @attributes: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      attributes = if attributes.nil?
                     Pointer(LibC::Char).null
                   else
                     attributes.to_unsafe
                   end

      # C call
      LibGtk.gtk_directory_list_set_attributes(to_unsafe, attributes)

      # Return value handling
    end

    def file=(file : Gio::File?) : Nil
      # gtk_directory_list_set_file: (Method | Setter)
      # @file: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      LibGtk.gtk_directory_list_set_file(to_unsafe, file)

      # Return value handling
    end

    def io_priority=(io_priority : Int32) : Nil
      # gtk_directory_list_set_io_priority: (Method | Setter)
      # @io_priority:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_directory_list_set_io_priority(to_unsafe, io_priority)

      # Return value handling
    end

    def monitored=(monitored : Bool) : Nil
      # gtk_directory_list_set_monitored: (Method | Setter)
      # @monitored:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_directory_list_set_monitored(to_unsafe, monitored)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
