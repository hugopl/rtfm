require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class FileChooserRequest < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(FileChooserRequest, g_object_get_qdata)

    # Initialize a new `FileChooserRequest`.
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

    def initialize(*, filter : Gtk::FileFilter? = nil, mime_types : Enumerable(::String)? = nil, select_multiple : Bool? = nil, selected_files : Enumerable(::String)? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !filter.nil?
        (_names.to_unsafe + _n).value = "filter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filter)
        _n += 1
      end
      if !mime_types.nil?
        (_names.to_unsafe + _n).value = "mime-types".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mime_types)
        _n += 1
      end
      if !select_multiple.nil?
        (_names.to_unsafe + _n).value = "select-multiple".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, select_multiple)
        _n += 1
      end
      if !selected_files.nil?
        (_names.to_unsafe + _n).value = "selected-files".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected_files)
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
      @@g_type ||= LibWebKit.webkit_file_chooser_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::FileChooserRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def filter : Gtk::FileFilter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filter", pointerof(value), Pointer(Void).null)
      Gtk::FileFilter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def mime_types : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "mime-types", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def select_multiple? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "select-multiple", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def selected_files : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "selected-files", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def cancel : Nil
      # webkit_file_chooser_request_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_file_chooser_request_cancel(to_unsafe)

      # Return value handling
    end

    def mime_types : Enumerable(::String)
      # webkit_file_chooser_request_get_mime_types: (Method | Getter)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibWebKit.webkit_file_chooser_request_get_mime_types(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def mime_types_filter : Gtk::FileFilter
      # webkit_file_chooser_request_get_mime_types_filter: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_file_chooser_request_get_mime_types_filter(to_unsafe)

      # Return value handling
      Gtk::FileFilter.new(_retval, GICrystal::Transfer::None)
    end

    def select_multiple : Bool
      # webkit_file_chooser_request_get_select_multiple: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_file_chooser_request_get_select_multiple(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def selected_files : Enumerable(::String)
      # webkit_file_chooser_request_get_selected_files: (Method | Getter)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibWebKit.webkit_file_chooser_request_get_selected_files(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def select_files(files : Enumerable(::String)) : Nil
      # webkit_file_chooser_request_select_files: (Method)
      # @files: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      files = files.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibWebKit.webkit_file_chooser_request_select_files(to_unsafe, files)

      # Return value handling
    end

    def select_files(*files : ::String)
      select_files(files)
    end

    def_equals_and_hash @pointer
  end
end
