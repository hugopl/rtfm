module Gtk
  class RecentInfo
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(RecentInfo.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(RecentInfo.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_recent_info_get_type
    end

    def create_app_info(app_name : ::String?) : Gio::AppInfo?
      # gtk_recent_info_create_app_info: (Method | Throws)
      # @app_name: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      app_name = if app_name.nil?
                   Pointer(LibC::Char).null
                 else
                   app_name.to_unsafe
                 end

      # C call
      _retval = LibGtk.gtk_recent_info_create_app_info(to_unsafe, app_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def exists : Bool
      # gtk_recent_info_exists: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_exists(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def added : GLib::DateTime
      # gtk_recent_info_get_added: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_added(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::None)
    end

    def age : Int32
      # gtk_recent_info_get_age: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_age(to_unsafe)

      # Return value handling
      _retval
    end

    def application_info(app_name : ::String, app_exec : ::String, count : UInt32, stamp : GLib::DateTime) : Bool
      # gtk_recent_info_get_application_info: (Method)
      # @app_name:
      # @app_exec: (out)
      # @count: (out) (transfer full)
      # @stamp: (out)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_application_info(to_unsafe, app_name, app_exec, count, stamp)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def applications : Enumerable(::String)
      # gtk_recent_info_get_applications: (Method)
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (array length=length zero-terminated=1 element-type Utf8)

      # Generator::OutArgUsedInReturnPlan
      length = 0_u64
      # C call
      _retval = LibGtk.gtk_recent_info_get_applications(to_unsafe, pointerof(length))

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def description : ::String
      # gtk_recent_info_get_description: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_description(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def display_name : ::String
      # gtk_recent_info_get_display_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_display_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def gicon : Gio::Icon?
      # gtk_recent_info_get_gicon: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_recent_info_get_gicon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def groups : Enumerable(::String)
      # gtk_recent_info_get_groups: (Method)
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (array length=length zero-terminated=1 element-type Utf8)

      # Generator::OutArgUsedInReturnPlan
      length = 0_u64
      # C call
      _retval = LibGtk.gtk_recent_info_get_groups(to_unsafe, pointerof(length))

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def mime_type : ::String
      # gtk_recent_info_get_mime_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_mime_type(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def modified : GLib::DateTime
      # gtk_recent_info_get_modified: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_modified(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::None)
    end

    def private_hint : Bool
      # gtk_recent_info_get_private_hint: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_private_hint(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def short_name : ::String
      # gtk_recent_info_get_short_name: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_recent_info_get_short_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def uri : ::String
      # gtk_recent_info_get_uri: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def uri_display : ::String?
      # gtk_recent_info_get_uri_display: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_recent_info_get_uri_display(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def visited : GLib::DateTime
      # gtk_recent_info_get_visited: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_get_visited(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::None)
    end

    def has_application(app_name : ::String) : Bool
      # gtk_recent_info_has_application: (Method)
      # @app_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_has_application(to_unsafe, app_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_group(group_name : ::String) : Bool
      # gtk_recent_info_has_group: (Method)
      # @group_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_has_group(to_unsafe, group_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_local : Bool
      # gtk_recent_info_is_local: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_is_local(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def last_application : ::String
      # gtk_recent_info_last_application: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_recent_info_last_application(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def match(info_b : Gtk::RecentInfo) : Bool
      # gtk_recent_info_match: (Method)
      # @info_b:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_info_match(to_unsafe, info_b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Gtk::RecentInfo
      # gtk_recent_info_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_recent_info_ref(to_unsafe)

      # Return value handling
      Gtk::RecentInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gtk_recent_info_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_recent_info_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
