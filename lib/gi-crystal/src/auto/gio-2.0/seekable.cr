module Gio
  module Seekable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::Seekable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__Seekable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractSeekable.g_type
    end

    def can_seek : Bool
      # g_seekable_can_seek: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_seekable_can_seek(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_truncate : Bool
      # g_seekable_can_truncate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_seekable_can_truncate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def seek(offset : Int64, type : GLib::SeekType, cancellable : Gio::Cancellable?) : Bool
      # g_seekable_seek: (Method | Throws)
      # @offset:
      # @type:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_seekable_seek(to_unsafe, offset, type, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def tell : Int64
      # g_seekable_tell: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_seekable_tell(to_unsafe)

      # Return value handling
      _retval
    end

    def truncate(offset : Int64, cancellable : Gio::Cancellable?) : Bool
      # g_seekable_truncate: (Method | Throws)
      # @offset:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_seekable_truncate(to_unsafe, offset, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # can_seek: (None)
    # Returns: (transfer none)
    private macro _register_can_seek_vfunc(impl_method_name)
      private def self._vfunc_can_seek(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_seek(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_seek: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_seek_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_seek(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_seek = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_seek(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_seek : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # can_truncate: (None)
    # Returns: (transfer none)
    private macro _register_can_truncate_vfunc(impl_method_name)
      private def self._vfunc_can_truncate(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_truncate(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_truncate: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_truncate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_truncate(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_truncate = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_truncate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_truncate : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # seek: (Throws)
    # @offset:
    # @type:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_seek_vfunc(impl_method_name)
      private def self._vfunc_seek(%this : Pointer(Void), lib_offset :  Int64, lib_type :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @offset: 
# @type: 
# @cancellable: (nullable) 

offset=lib_offset
# Generator::BuiltInTypeArgPlan
type=GLib::SeekType.new(lib_type)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(offset, type, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_seek(Pointer(Void), Int64, UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # seek: (Throws)
    # @offset:
    # @type:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_seek_vfunc(impl_method_name)
      private def self._vfunc_unsafe_seek(%this : Pointer(Void), lib_offset :  Int64, lib_type :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @offset: 
# @type: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_offset, lib_type, lib_cancellable)
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_seek = Proc(Pointer(Void), Int64, UInt32, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_seek(Pointer(Void), Int64, UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_seek : Proc(Pointer(Void), Int64, UInt32, Pointer(Void), LibC::Int)? = nil
    end

    # tell: (None)
    # Returns: (transfer none)
    private macro _register_tell_vfunc(impl_method_name)
      private def self._vfunc_tell(%this : Pointer(Void), ) : Int64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_tell(Pointer(Void))).pointer
        previous_def
      end
    end

    # tell: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_tell_vfunc(impl_method_name)
      private def self._vfunc_unsafe_tell(%this : Pointer(Void), ) : Int64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_tell = Proc(Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_tell(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_tell : Proc(Pointer(Void), Int64)? = nil
    end

    # truncate_fn: (Throws)
    # @offset:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_truncate_fn_vfunc(impl_method_name)
      private def self._vfunc_truncate_fn(%this : Pointer(Void), lib_offset :  Int64, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @offset: 
# @cancellable: (nullable) 

offset=lib_offset
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(offset, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_truncate_fn(Pointer(Void), Int64, Pointer(Void))).pointer
        previous_def
      end
    end

    # truncate_fn: (Throws)
    # @offset:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_truncate_fn_vfunc(impl_method_name)
      private def self._vfunc_unsafe_truncate_fn(%this : Pointer(Void), lib_offset :  Int64, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @offset: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_offset, lib_cancellable)
      end

      def self._install_iface_Gio__Seekable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_truncate_fn = Proc(Pointer(Void), Int64, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_truncate_fn(Pointer(Void), Int64, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_truncate_fn : Proc(Pointer(Void), Int64, Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractSeekable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractSeekable < GObject::Object
    include Seekable

    GICrystal.declare_new_method(Gio::AbstractSeekable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_seekable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractSeekable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
