module Gio
  module FileDescriptorBased
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::FileDescriptorBased
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__FileDescriptorBased(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractFileDescriptorBased.g_type
    end

    def fd : Int32
      # g_file_descriptor_based_get_fd: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_descriptor_based_get_fd(to_unsafe)

      # Return value handling
      _retval
    end

    # get_fd: (None)
    # Returns: (transfer none)
    private macro _register_get_fd_vfunc(impl_method_name)
      private def self._vfunc_get_fd(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__FileDescriptorBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_fd(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_fd: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_fd_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_fd(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__FileDescriptorBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_fd = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_fd(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_fd : Proc(Pointer(Void), Int32)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractFileDescriptorBased.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractFileDescriptorBased < GObject::Object
    include FileDescriptorBased

    GICrystal.declare_new_method(Gio::AbstractFileDescriptorBased, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_file_descriptor_based_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractFileDescriptorBased.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
