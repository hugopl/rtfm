require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SocketControlMessage < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketControlMessageClass), class_init,
        sizeof(LibGio::SocketControlMessage), instance_init, 0)
    end

    GICrystal.declare_new_method(SocketControlMessage, g_object_get_qdata)

    # Initialize a new `SocketControlMessage`.
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
      @@g_type ||= LibGio.g_socket_control_message_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SocketControlMessage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.deserialize(level : Int32, type : Int32, data : ::Bytes) : Gio::SocketControlMessage?
      # g_socket_control_message_deserialize: (None)
      # @level:
      # @type:
      # @size:
      # @data: (array length=size element-type UInt8)
      # Returns: (transfer full) (nullable)

      # Generator::ArrayLengthArgPlan
      size = data.size
      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_socket_control_message_deserialize(level, type, size, data)

      # Return value handling
      Gio::SocketControlMessage.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def level : Int32
      # g_socket_control_message_get_level: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_control_message_get_level(to_unsafe)

      # Return value handling
      _retval
    end

    def msg_type : Int32
      # g_socket_control_message_get_msg_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_control_message_get_msg_type(to_unsafe)

      # Return value handling
      _retval
    end

    def size : UInt64
      # g_socket_control_message_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_control_message_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def serialize(data : Pointer(Void)) : Nil
      # g_socket_control_message_serialize: (Method)
      # @data:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_control_message_serialize(to_unsafe, data)

      # Return value handling
    end

    # get_level: (None)
    # Returns: (transfer none)
    private macro _register_get_level_vfunc(impl_method_name)
      private def self._vfunc_get_level(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_level(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_level: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_level_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_level(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_level = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_level(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_level : Proc(Pointer(Void), Int32)? = nil
    end

    # get_size: (None)
    # Returns: (transfer none)
    private macro _register_get_size_vfunc(impl_method_name)
      private def self._vfunc_get_size(%this : Pointer(Void), ) : UInt64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_size(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_size: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_size_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_size(%this : Pointer(Void), ) : UInt64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_size = Proc(Pointer(Void), UInt64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_size(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_size : Proc(Pointer(Void), UInt64)? = nil
    end

    # get_type: (None)
    # Returns: (transfer none)
    private macro _register_get_type_vfunc(impl_method_name)
      private def self._vfunc_get_type(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_type(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_type: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_type(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_type = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_type(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_type : Proc(Pointer(Void), Int32)? = nil
    end

    # serialize: (None)
    # @data:
    # Returns: (transfer none)
    private macro _register_serialize_vfunc(impl_method_name)
      private def self._vfunc_serialize(%this : Pointer(Void), lib_data :  Pointer(Void), ) : Void
        # @data: 

data=lib_data


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_serialize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # serialize: (None)
    # @data:
    # Returns: (transfer none)
    private macro _register_unsafe_serialize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_serialize(%this : Pointer(Void), lib_data :  Pointer(Void), ) : Void
# @data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_serialize = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_serialize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_serialize : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
