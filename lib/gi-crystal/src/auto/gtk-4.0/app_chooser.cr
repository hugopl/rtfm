module Gtk
  module AppChooser
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::AppChooser
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__AppChooser(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractAppChooser.g_type
    end

    def content_type=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "content-type", unsafe_value, Pointer(Void).null)
      value
    end

    def content_type : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "content-type", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#content_type` property to nil.
    def content_type=(value : Nil) : Nil
      LibGObject.g_object_set(self, "content-type", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#content_type`, but can return nil.
    def content_type? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "content-type", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    @[Deprecated]
    def app_info : Gio::AppInfo?
      # gtk_app_chooser_get_app_info: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_app_chooser_get_app_info(to_unsafe)

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def content_type : ::String
      # gtk_app_chooser_get_content_type: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_app_chooser_get_content_type(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    @[Deprecated]
    def refresh : Nil
      # gtk_app_chooser_refresh: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_refresh(to_unsafe)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractAppChooser.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractAppChooser < GObject::Object
    include AppChooser

    GICrystal.declare_new_method(Gtk::AbstractAppChooser, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_app_chooser_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractAppChooser.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
