require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class UriLauncher < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::UriLauncherClass), class_init,
        sizeof(LibGtk::UriLauncher), instance_init, 0)
    end

    GICrystal.declare_new_method(UriLauncher, g_object_get_qdata)

    # Initialize a new `UriLauncher`.
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

    def initialize(*, uri : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !uri.nil?
        (_names.to_unsafe + _n).value = "uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, uri)
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
      @@g_type ||= LibGtk.gtk_uri_launcher_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::UriLauncher.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "uri", unsafe_value, Pointer(Void).null)
      value
    end

    def uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#uri` property to nil.
    def uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#uri`, but can return nil.
    def uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(uri : ::String?) : self
      # gtk_uri_launcher_new: (Constructor)
      # @uri: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      uri = if uri.nil?
              Pointer(LibC::Char).null
            else
              uri.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_uri_launcher_new(uri)

      # Return value handling
      Gtk::UriLauncher.new(_retval, GICrystal::Transfer::Full)
    end

    def can_launch(parent : Gtk::Window?) : Bool
      # gtk_uri_launcher_can_launch: (Method)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_uri_launcher_can_launch(to_unsafe, parent)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri : ::String?
      # gtk_uri_launcher_get_uri: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_uri_launcher_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def launch(parent : Gtk::Window?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_uri_launcher_launch: (Method)
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
      LibGtk.gtk_uri_launcher_launch(to_unsafe, parent, cancellable, callback, user_data)

      # Return value handling
    end

    def launch_finish(result : Gio::AsyncResult) : Bool
      # gtk_uri_launcher_launch_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_uri_launcher_launch_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri=(uri : ::String?) : Nil
      # gtk_uri_launcher_set_uri: (Method | Setter)
      # @uri: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      uri = if uri.nil?
              Pointer(LibC::Char).null
            else
              uri.to_unsafe
            end

      # C call
      LibGtk.gtk_uri_launcher_set_uri(to_unsafe, uri)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
