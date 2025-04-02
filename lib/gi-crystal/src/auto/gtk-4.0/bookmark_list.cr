require "../g_object-2.0/object"
require "../gio-2.0/list_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class BookmarkList < GObject::Object
    include Gio::ListModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::BookmarkListClass), class_init,
        sizeof(LibGtk::BookmarkList), instance_init, 0)
    end

    GICrystal.declare_new_method(BookmarkList, g_object_get_qdata)

    # Initialize a new `BookmarkList`.
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

    def initialize(*, attributes : ::String? = nil, filename : ::String? = nil, io_priority : Int32? = nil, item_type : UInt64? = nil, loading : Bool? = nil, n_items : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !attributes.nil?
        (_names.to_unsafe + _n).value = "attributes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, attributes)
        _n += 1
      end
      if !filename.nil?
        (_names.to_unsafe + _n).value = "filename".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filename)
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
      @@g_type ||= LibGtk.gtk_bookmark_list_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::BookmarkList.new(Void*, GICrystal::Transfer)
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

    def filename=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "filename", unsafe_value, Pointer(Void).null)
      value
    end

    def filename : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#filename` property to nil.
    def filename=(value : Nil) : Nil
      LibGObject.g_object_set(self, "filename", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#filename`, but can return nil.
    def filename? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(filename : ::String?, attributes : ::String?) : self
      # gtk_bookmark_list_new: (Constructor)
      # @filename: (nullable)
      # @attributes: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      filename = if filename.nil?
                   Pointer(LibC::Char).null
                 else
                   filename.to_unsafe
                 end
      # Generator::NullableArrayPlan
      attributes = if attributes.nil?
                     Pointer(LibC::Char).null
                   else
                     attributes.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_bookmark_list_new(filename, attributes)

      # Return value handling
      Gtk::BookmarkList.new(_retval, GICrystal::Transfer::Full)
    end

    def attributes : ::String?
      # gtk_bookmark_list_get_attributes: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_bookmark_list_get_attributes(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def filename : ::Path
      # gtk_bookmark_list_get_filename: (Method | Getter)
      # Returns: (transfer none) (filename)

      # C call
      _retval = LibGtk.gtk_bookmark_list_get_filename(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval))
    end

    def io_priority : Int32
      # gtk_bookmark_list_get_io_priority: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bookmark_list_get_io_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def is_loading? : Bool
      # gtk_bookmark_list_is_loading: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bookmark_list_is_loading(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def attributes=(attributes : ::String?) : Nil
      # gtk_bookmark_list_set_attributes: (Method | Setter)
      # @attributes: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      attributes = if attributes.nil?
                     Pointer(LibC::Char).null
                   else
                     attributes.to_unsafe
                   end

      # C call
      LibGtk.gtk_bookmark_list_set_attributes(to_unsafe, attributes)

      # Return value handling
    end

    def io_priority=(io_priority : Int32) : Nil
      # gtk_bookmark_list_set_io_priority: (Method | Setter)
      # @io_priority:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_bookmark_list_set_io_priority(to_unsafe, io_priority)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
