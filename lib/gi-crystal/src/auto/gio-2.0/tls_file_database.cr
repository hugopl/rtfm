module Gio
  module TlsFileDatabase
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::TlsFileDatabase
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__TlsFileDatabase(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractTlsFileDatabase.g_type
    end

    def anchors=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "anchors", unsafe_value, Pointer(Void).null)
      value
    end

    def anchors : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "anchors", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#anchors` property to nil.
    def anchors=(value : Nil) : Nil
      LibGObject.g_object_set(self, "anchors", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#anchors`, but can return nil.
    def anchors? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "anchors", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def new(anchors : ::String) : Gio::TlsFileDatabase
      # g_tls_file_database_new: (Throws)
      # @anchors:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_file_database_new(anchors, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractTlsFileDatabase.new(_retval, GICrystal::Transfer::Full)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTlsFileDatabase.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTlsFileDatabase < GObject::Object
    include TlsFileDatabase

    GICrystal.declare_new_method(Gio::AbstractTlsFileDatabase, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_tls_file_database_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractTlsFileDatabase.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
