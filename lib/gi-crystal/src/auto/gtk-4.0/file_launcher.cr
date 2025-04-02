require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FileLauncher < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FileLauncherClass), class_init,
        sizeof(LibGtk::FileLauncher), instance_init, 0)
    end

    GICrystal.declare_new_method(FileLauncher, g_object_get_qdata)

    # Initialize a new `FileLauncher`.
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

    def initialize(*, always_ask : Bool? = nil, file : Gio::File? = nil, writable : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !always_ask.nil?
        (_names.to_unsafe + _n).value = "always-ask".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, always_ask)
        _n += 1
      end
      if !file.nil?
        (_names.to_unsafe + _n).value = "file".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, file)
        _n += 1
      end
      if !writable.nil?
        (_names.to_unsafe + _n).value = "writable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, writable)
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
      @@g_type ||= LibGtk.gtk_file_launcher_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FileLauncher.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def always_ask=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "always-ask", unsafe_value, Pointer(Void).null)
      value
    end

    def always_ask? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "always-ask", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def writable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "writable", unsafe_value, Pointer(Void).null)
      value
    end

    def writable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "writable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(file : Gio::File?) : self
      # gtk_file_launcher_new: (Constructor)
      # @file: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_file_launcher_new(file)

      # Return value handling
      Gtk::FileLauncher.new(_retval, GICrystal::Transfer::Full)
    end

    def always_ask : Bool
      # gtk_file_launcher_get_always_ask: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_launcher_get_always_ask(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def file : Gio::File?
      # gtk_file_launcher_get_file: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_file_launcher_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def writable : Bool
      # gtk_file_launcher_get_writable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_file_launcher_get_writable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def launch(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_launcher_launch: (Method)
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
      LibGtk.gtk_file_launcher_launch(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def launch_finish(result : Gio::AsyncResult) : Bool
      # gtk_file_launcher_launch_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_launcher_launch_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def open_containing_folder(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_file_launcher_open_containing_folder: (Method)
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
      LibGtk.gtk_file_launcher_open_containing_folder(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def open_containing_folder_finish(result : Gio::AsyncResult) : Bool
      # gtk_file_launcher_open_containing_folder_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_file_launcher_open_containing_folder_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def always_ask=(always_ask : Bool) : Nil
      # gtk_file_launcher_set_always_ask: (Method | Setter)
      # @always_ask:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_launcher_set_always_ask(to_unsafe, always_ask)

      # Return value handling
    end

    def file=(file : Gio::File?) : Nil
      # gtk_file_launcher_set_file: (Method | Setter)
      # @file: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      LibGtk.gtk_file_launcher_set_file(to_unsafe, file)

      # Return value handling
    end

    def writable=(writable : Bool) : Nil
      # gtk_file_launcher_set_writable: (Method | Setter)
      # @writable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_file_launcher_set_writable(to_unsafe, writable)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
