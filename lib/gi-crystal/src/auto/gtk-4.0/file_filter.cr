require "./filter"
require "./buildable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FileFilter < Filter
    include Buildable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(FileFilter, g_object_get_qdata)

    # Initialize a new `FileFilter`.
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

    def initialize(*, mime_types : Enumerable(::String)? = nil, name : ::String? = nil, patterns : Enumerable(::String)? = nil, suffixes : Enumerable(::String)? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !mime_types.nil?
        (_names.to_unsafe + _n).value = "mime-types".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mime_types)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !patterns.nil?
        (_names.to_unsafe + _n).value = "patterns".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, patterns)
        _n += 1
      end
      if !suffixes.nil?
        (_names.to_unsafe + _n).value = "suffixes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, suffixes)
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
      @@g_type ||= LibGtk.gtk_file_filter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FileFilter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def mime_types=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "mime-types", unsafe_value, Pointer(Void).null)
      value
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

    def patterns=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "patterns", unsafe_value, Pointer(Void).null)
      value
    end

    def suffixes=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "suffixes", unsafe_value, Pointer(Void).null)
      value
    end

    def self.new : self
      # gtk_file_filter_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_file_filter_new

      # Return value handling
      Gtk::FileFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_gvariant(variant : _) : self
      # gtk_file_filter_new_from_gvariant: (Constructor)
      # @variant:
      # Returns: (transfer full)

      # Generator::HandmadeArgPlan
      variant = if !variant.is_a?(GLib::Variant)
                  GLib::Variant.new(variant).to_unsafe
                else
                  variant.to_unsafe
                end

      # C call
      _retval = LibGtk.gtk_file_filter_new_from_gvariant(variant)

      # Return value handling
      Gtk::FileFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def add_mime_type(mime_type : ::String) : Nil
      # gtk_file_filter_add_mime_type: (Method)
      # @mime_type:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_filter_add_mime_type(to_unsafe, mime_type)

      # Return value handling
    end

    def add_pattern(pattern : ::String) : Nil
      # gtk_file_filter_add_pattern: (Method)
      # @pattern:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_filter_add_pattern(to_unsafe, pattern)

      # Return value handling
    end

    def add_pixbuf_formats : Nil
      # gtk_file_filter_add_pixbuf_formats: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_filter_add_pixbuf_formats(to_unsafe)

      # Return value handling
    end

    def add_suffix(suffix : ::String) : Nil
      # gtk_file_filter_add_suffix: (Method)
      # @suffix:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_filter_add_suffix(to_unsafe, suffix)

      # Return value handling
    end

    def attributes : Enumerable(::String)
      # gtk_file_filter_get_attributes: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_file_filter_get_attributes(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def name : ::String?
      # gtk_file_filter_get_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_filter_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def name=(name : ::String?) : Nil
      # gtk_file_filter_set_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_file_filter_set_name(to_unsafe, name)

      # Return value handling
    end

    def to_gvariant : GLib::Variant
      # gtk_file_filter_to_gvariant: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_filter_to_gvariant(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
