module Gio
  module DesktopAppInfoLookup
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DesktopAppInfoLookup
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DesktopAppInfoLookup(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDesktopAppInfoLookup.g_type
    end

    @[Deprecated]
    def default_for_uri_scheme(uri_scheme : ::String) : Gio::AppInfo?
      # g_desktop_app_info_lookup_get_default_for_uri_scheme: (Method)
      # @uri_scheme:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_lookup_get_default_for_uri_scheme(to_unsafe, uri_scheme)

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    # get_default_for_uri_scheme: (None)
    # @uri_scheme:
    # Returns: (transfer full) (nullable)
    private macro _register_get_default_for_uri_scheme_vfunc(impl_method_name)
      private def self._vfunc_get_default_for_uri_scheme(%this : Pointer(Void), lib_uri_scheme :  Pointer(LibC::Char), ) : Pointer(Void)
        # @uri_scheme: 

# Generator::BuiltInTypeArgPlan
uri_scheme=::String.new(lib_uri_scheme)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uri_scheme)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__DesktopAppInfoLookup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_default_for_uri_scheme(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_default_for_uri_scheme: (None)
    # @uri_scheme:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_default_for_uri_scheme_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_default_for_uri_scheme(%this : Pointer(Void), lib_uri_scheme :  Pointer(LibC::Char), ) : Pointer(Void)
# @uri_scheme: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uri_scheme)
      end

      def self._install_iface_Gio__DesktopAppInfoLookup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_default_for_uri_scheme = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_default_for_uri_scheme(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_default_for_uri_scheme : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDesktopAppInfoLookup.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDesktopAppInfoLookup < GObject::Object
    include DesktopAppInfoLookup

    GICrystal.declare_new_method(Gio::AbstractDesktopAppInfoLookup, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_desktop_app_info_lookup_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDesktopAppInfoLookup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
