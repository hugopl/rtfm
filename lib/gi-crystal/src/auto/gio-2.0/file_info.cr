require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class FileInfo < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::FileInfoClass), class_init,
        sizeof(LibGio::FileInfo), instance_init, 0)
    end

    GICrystal.declare_new_method(FileInfo, g_object_get_qdata)

    # Initialize a new `FileInfo`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_file_info_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::FileInfo.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_file_info_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_info_new

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def clear_status : Nil
      # g_file_info_clear_status: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_clear_status(to_unsafe)

      # Return value handling
    end

    def copy_into(dest_info : Gio::FileInfo) : Nil
      # g_file_info_copy_into: (Method)
      # @dest_info:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_copy_into(to_unsafe, dest_info)

      # Return value handling
    end

    def dup : Gio::FileInfo
      # g_file_info_dup: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_info_dup(to_unsafe)

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def access_date_time : GLib::DateTime?
      # g_file_info_get_access_date_time: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_access_date_time(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def attribute_as_string(attribute : ::String) : ::String?
      # g_file_info_get_attribute_as_string: (Method)
      # @attribute:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_attribute_as_string(to_unsafe, attribute)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def attribute_boolean(attribute : ::String) : Bool
      # g_file_info_get_attribute_boolean: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_attribute_boolean(to_unsafe, attribute)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def attribute_byte_string(attribute : ::String) : ::String?
      # g_file_info_get_attribute_byte_string: (Method)
      # @attribute:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_attribute_byte_string(to_unsafe, attribute)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def attribute_data(attribute : ::String) : Bool
      # g_file_info_get_attribute_data: (Method)
      # @attribute:
      # @type: (out) (transfer full) (optional)
      # @value_pp: (out) (transfer full) (optional)
      # @status: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      type = Pointer(UInt32).null            # Generator::OutArgUsedInReturnPlan
      value_pp = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      status = Pointer(UInt32).null
      # C call
      _retval = LibGio.g_file_info_get_attribute_data(to_unsafe, attribute, type, value_pp, status)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def attribute_file_path(attribute : ::String) : ::Path?
      # g_file_info_get_attribute_file_path: (Method)
      # @attribute:
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_attribute_file_path(to_unsafe, attribute)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    def attribute_int32(attribute : ::String) : Int32
      # g_file_info_get_attribute_int32: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_attribute_int32(to_unsafe, attribute)

      # Return value handling
      _retval
    end

    def attribute_int64(attribute : ::String) : Int64
      # g_file_info_get_attribute_int64: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_attribute_int64(to_unsafe, attribute)

      # Return value handling
      _retval
    end

    def attribute_object(attribute : ::String) : GObject::Object?
      # g_file_info_get_attribute_object: (Method)
      # @attribute:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_attribute_object(to_unsafe, attribute)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def attribute_status(attribute : ::String) : Gio::FileAttributeStatus
      # g_file_info_get_attribute_status: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_attribute_status(to_unsafe, attribute)

      # Return value handling
      Gio::FileAttributeStatus.new(_retval)
    end

    def attribute_string(attribute : ::String) : ::String?
      # g_file_info_get_attribute_string: (Method)
      # @attribute:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_attribute_string(to_unsafe, attribute)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def attribute_stringv(attribute : ::String) : Enumerable(::String)?
      # g_file_info_get_attribute_stringv: (Method)
      # @attribute:
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_file_info_get_attribute_stringv(to_unsafe, attribute)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def attribute_type(attribute : ::String) : Gio::FileAttributeType
      # g_file_info_get_attribute_type: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_attribute_type(to_unsafe, attribute)

      # Return value handling
      Gio::FileAttributeType.new(_retval)
    end

    def attribute_uint32(attribute : ::String) : UInt32
      # g_file_info_get_attribute_uint32: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_attribute_uint32(to_unsafe, attribute)

      # Return value handling
      _retval
    end

    def attribute_uint64(attribute : ::String) : UInt64
      # g_file_info_get_attribute_uint64: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_attribute_uint64(to_unsafe, attribute)

      # Return value handling
      _retval
    end

    def content_type : ::String?
      # g_file_info_get_content_type: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_content_type(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def creation_date_time : GLib::DateTime?
      # g_file_info_get_creation_date_time: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_creation_date_time(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def deletion_date : GLib::DateTime?
      # g_file_info_get_deletion_date: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_deletion_date(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def display_name : ::String
      # g_file_info_get_display_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_display_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def edit_name : ::String
      # g_file_info_get_edit_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_edit_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def etag : ::String?
      # g_file_info_get_etag: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_etag(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def file_type : Gio::FileType
      # g_file_info_get_file_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_file_type(to_unsafe)

      # Return value handling
      Gio::FileType.new(_retval)
    end

    def icon : Gio::Icon?
      # g_file_info_get_icon: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def is_backup : Bool
      # g_file_info_get_is_backup: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_is_backup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_hidden : Bool
      # g_file_info_get_is_hidden: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_is_hidden(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_symlink : Bool
      # g_file_info_get_is_symlink: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_is_symlink(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def modification_date_time : GLib::DateTime?
      # g_file_info_get_modification_date_time: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_modification_date_time(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def modification_time : GLib::TimeVal
      # g_file_info_get_modification_time: (Method)
      # @result: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      result = GLib::TimeVal.new
      # C call
      LibGio.g_file_info_get_modification_time(to_unsafe, result)

      # Return value handling
      result
    end

    def name : ::Path
      # g_file_info_get_name: (Method)
      # Returns: (transfer none) (filename)

      # C call
      _retval = LibGio.g_file_info_get_name(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval))
    end

    def size : Int64
      # g_file_info_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def sort_order : Int32
      # g_file_info_get_sort_order: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_get_sort_order(to_unsafe)

      # Return value handling
      _retval
    end

    def symbolic_icon : Gio::Icon?
      # g_file_info_get_symbolic_icon: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_symbolic_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def symlink_target : ::Path?
      # g_file_info_get_symlink_target: (Method)
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGio.g_file_info_get_symlink_target(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    def has_attribute(attribute : ::String) : Bool
      # g_file_info_has_attribute: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_has_attribute(to_unsafe, attribute)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_namespace(name_space : ::String) : Bool
      # g_file_info_has_namespace: (Method)
      # @name_space:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_has_namespace(to_unsafe, name_space)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_attributes(name_space : ::String?) : Enumerable(::String)?
      # g_file_info_list_attributes: (Method)
      # @name_space: (nullable)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

      # Generator::NullableArrayPlan
      name_space = if name_space.nil?
                     Pointer(LibC::Char).null
                   else
                     name_space.to_unsafe
                   end

      # C call
      _retval = LibGio.g_file_info_list_attributes(to_unsafe, name_space)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def remove_attribute(attribute : ::String) : Nil
      # g_file_info_remove_attribute: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_remove_attribute(to_unsafe, attribute)

      # Return value handling
    end

    def access_date_time=(atime : GLib::DateTime) : Nil
      # g_file_info_set_access_date_time: (Method)
      # @atime:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_access_date_time(to_unsafe, atime)

      # Return value handling
    end

    def set_attribute(attribute : ::String, type : Gio::FileAttributeType, value_p : Pointer(Void)) : Nil
      # g_file_info_set_attribute: (Method)
      # @attribute:
      # @type:
      # @value_p:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute(to_unsafe, attribute, type, value_p)

      # Return value handling
    end

    def set_attribute_boolean(attribute : ::String, attr_value : Bool) : Nil
      # g_file_info_set_attribute_boolean: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_boolean(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_byte_string(attribute : ::String, attr_value : ::String) : Nil
      # g_file_info_set_attribute_byte_string: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_byte_string(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_file_path(attribute : ::String, attr_value : ::String) : Nil
      # g_file_info_set_attribute_file_path: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_file_path(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_int32(attribute : ::String, attr_value : Int32) : Nil
      # g_file_info_set_attribute_int32: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_int32(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_int64(attribute : ::String, attr_value : Int64) : Nil
      # g_file_info_set_attribute_int64: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_int64(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def attribute_mask=(mask : Gio::FileAttributeMatcher) : Nil
      # g_file_info_set_attribute_mask: (Method)
      # @mask:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_mask(to_unsafe, mask)

      # Return value handling
    end

    def set_attribute_object(attribute : ::String, attr_value : GObject::Object) : Nil
      # g_file_info_set_attribute_object: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_object(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_status(attribute : ::String, status : Gio::FileAttributeStatus) : Bool
      # g_file_info_set_attribute_status: (Method)
      # @attribute:
      # @status:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_info_set_attribute_status(to_unsafe, attribute, status)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attribute_string(attribute : ::String, attr_value : ::String) : Nil
      # g_file_info_set_attribute_string: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_string(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_stringv(attribute : ::String, attr_value : Enumerable(::String)) : Nil
      # g_file_info_set_attribute_stringv: (Method)
      # @attribute:
      # @attr_value: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      attr_value = attr_value.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibGio.g_file_info_set_attribute_stringv(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_uint32(attribute : ::String, attr_value : UInt32) : Nil
      # g_file_info_set_attribute_uint32: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_uint32(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def set_attribute_uint64(attribute : ::String, attr_value : UInt64) : Nil
      # g_file_info_set_attribute_uint64: (Method)
      # @attribute:
      # @attr_value:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_attribute_uint64(to_unsafe, attribute, attr_value)

      # Return value handling
    end

    def content_type=(content_type : ::String) : Nil
      # g_file_info_set_content_type: (Method)
      # @content_type:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_content_type(to_unsafe, content_type)

      # Return value handling
    end

    def creation_date_time=(creation_time : GLib::DateTime) : Nil
      # g_file_info_set_creation_date_time: (Method)
      # @creation_time:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_creation_date_time(to_unsafe, creation_time)

      # Return value handling
    end

    def display_name=(display_name : ::String) : Nil
      # g_file_info_set_display_name: (Method)
      # @display_name:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_display_name(to_unsafe, display_name)

      # Return value handling
    end

    def edit_name=(edit_name : ::String) : Nil
      # g_file_info_set_edit_name: (Method)
      # @edit_name:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_edit_name(to_unsafe, edit_name)

      # Return value handling
    end

    def file_type=(type : Gio::FileType) : Nil
      # g_file_info_set_file_type: (Method)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_file_type(to_unsafe, type)

      # Return value handling
    end

    def icon=(icon : Gio::Icon) : Nil
      # g_file_info_set_icon: (Method)
      # @icon:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_icon(to_unsafe, icon)

      # Return value handling
    end

    def is_hidden=(is_hidden : Bool) : Nil
      # g_file_info_set_is_hidden: (Method)
      # @is_hidden:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_is_hidden(to_unsafe, is_hidden)

      # Return value handling
    end

    def is_symlink=(is_symlink : Bool) : Nil
      # g_file_info_set_is_symlink: (Method)
      # @is_symlink:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_is_symlink(to_unsafe, is_symlink)

      # Return value handling
    end

    def modification_date_time=(mtime : GLib::DateTime) : Nil
      # g_file_info_set_modification_date_time: (Method)
      # @mtime:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_modification_date_time(to_unsafe, mtime)

      # Return value handling
    end

    @[Deprecated]
    def modification_time=(mtime : GLib::TimeVal) : Nil
      # g_file_info_set_modification_time: (Method)
      # @mtime:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_modification_time(to_unsafe, mtime)

      # Return value handling
    end

    def name=(name : ::String) : Nil
      # g_file_info_set_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_name(to_unsafe, name)

      # Return value handling
    end

    def size=(size : Int64) : Nil
      # g_file_info_set_size: (Method)
      # @size:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_size(to_unsafe, size)

      # Return value handling
    end

    def sort_order=(sort_order : Int32) : Nil
      # g_file_info_set_sort_order: (Method)
      # @sort_order:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_sort_order(to_unsafe, sort_order)

      # Return value handling
    end

    def symbolic_icon=(icon : Gio::Icon) : Nil
      # g_file_info_set_symbolic_icon: (Method)
      # @icon:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_symbolic_icon(to_unsafe, icon)

      # Return value handling
    end

    def symlink_target=(symlink_target : ::String) : Nil
      # g_file_info_set_symlink_target: (Method)
      # @symlink_target:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_set_symlink_target(to_unsafe, symlink_target)

      # Return value handling
    end

    def unset_attribute_mask : Nil
      # g_file_info_unset_attribute_mask: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_file_info_unset_attribute_mask(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
