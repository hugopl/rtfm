require "../g_object-2.0/object"
require "./style_provider"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CssProvider < GObject::Object
    include StyleProvider

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CssProviderClass), class_init,
        sizeof(LibGtk::CssProvider), instance_init, 0)
    end

    GICrystal.declare_new_method(CssProvider, g_object_get_qdata)

    # Initialize a new `CssProvider`.
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
      @@g_type ||= LibGtk.gtk_css_provider_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CssProvider.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_css_provider_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_css_provider_new

      # Return value handling
      Gtk::CssProvider.new(_retval, GICrystal::Transfer::Full)
    end

    def load_from_bytes(data : GLib::Bytes) : Nil
      # gtk_css_provider_load_from_bytes: (Method)
      # @data:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_provider_load_from_bytes(to_unsafe, data)

      # Return value handling
    end

    @[Deprecated]
    def load_from_data(data : ::String, length : Int64) : Nil
      # gtk_css_provider_load_from_data: (Method)
      # @data:
      # @length:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_provider_load_from_data(to_unsafe, data, length)

      # Return value handling
    end

    def load_from_file(file : Gio::File) : Nil
      # gtk_css_provider_load_from_file: (Method)
      # @file:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_provider_load_from_file(to_unsafe, file)

      # Return value handling
    end

    def load_from_path(path : ::String) : Nil
      # gtk_css_provider_load_from_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_provider_load_from_path(to_unsafe, path)

      # Return value handling
    end

    def load_from_resource(resource_path : ::String) : Nil
      # gtk_css_provider_load_from_resource: (Method)
      # @resource_path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_provider_load_from_resource(to_unsafe, resource_path)

      # Return value handling
    end

    def load_from_string(string : ::String) : Nil
      # gtk_css_provider_load_from_string: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_provider_load_from_string(to_unsafe, string)

      # Return value handling
    end

    def load_named(name : ::String, variant : ::String?) : Nil
      # gtk_css_provider_load_named: (Method)
      # @name:
      # @variant: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      variant = if variant.nil?
                  Pointer(LibC::Char).null
                else
                  variant.to_unsafe
                end

      # C call
      LibGtk.gtk_css_provider_load_named(to_unsafe, name, variant)

      # Return value handling
    end

    def to_string : ::String
      # gtk_css_provider_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_css_provider_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    struct ParsingErrorSignal < GObject::Signal
      def name : String
        @detail ? "parsing-error::#{@detail}" : "parsing-error"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::CssSection, GLib::Error, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::CssSection, GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_section : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          section = Gtk::CssSection.new(lib_section, GICrystal::Transfer::None)
          # Generator::GErrorArgPlan
          error = Gtk.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(Gtk::CssSection, GLib::Error, Nil)).unbox(_lib_box).call(section, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::CssProvider, Gtk::CssSection, GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_section : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = Gtk::CssProvider.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          section = Gtk::CssSection.new(lib_section, GICrystal::Transfer::None)
          # Generator::GErrorArgPlan
          error = Gtk.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(Gtk::CssProvider, Gtk::CssSection, GLib::Error, Nil)).unbox(_lib_box).call(_sender, section, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(section : Gtk::CssSection, error : GLib::Error) : Nil
        LibGObject.g_signal_emit_by_name(@source, "parsing-error", section, error)
      end
    end

    def parsing_error_signal
      ParsingErrorSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
