require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class WebsocketExtension < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::WebsocketExtensionClass), class_init,
        sizeof(LibSoup::WebsocketExtension), instance_init, 0)
    end

    GICrystal.declare_new_method(WebsocketExtension, g_object_get_qdata)

    # Initialize a new `WebsocketExtension`.
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
      @@g_type ||= LibSoup.soup_websocket_extension_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::WebsocketExtension.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def configure(connection_type : Soup::WebsocketConnectionType, params : Pointer(Void)?) : Bool
      # soup_websocket_extension_configure: (Method | Throws)
      # @connection_type:
      # @params: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      params = if params.nil?
                 Pointer(Void).null
               else
                 params.to_unsafe
               end

      # C call
      _retval = LibSoup.soup_websocket_extension_configure(to_unsafe, connection_type, params, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def request_params : ::String?
      # soup_websocket_extension_get_request_params: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_websocket_extension_get_request_params(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def response_params : ::String?
      # soup_websocket_extension_get_response_params: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_websocket_extension_get_response_params(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def process_incoming_message(header : UInt8, payload : GLib::Bytes) : GLib::Bytes
      # soup_websocket_extension_process_incoming_message: (Method | Throws)
      # @header: (inout) (transfer full)
      # @payload: (transfer full)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_websocket_extension_process_incoming_message(to_unsafe, header, payload, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def process_outgoing_message(header : UInt8, payload : GLib::Bytes) : GLib::Bytes
      # soup_websocket_extension_process_outgoing_message: (Method | Throws)
      # @header: (inout) (transfer full)
      # @payload: (transfer full)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_websocket_extension_process_outgoing_message(to_unsafe, header, payload, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    # configure: (Throws)
    # @connection_type:
    # @params: (nullable)
    # Returns: (transfer none)
    private macro _register_configure_vfunc(impl_method_name)
      private def self._vfunc_configure(%this : Pointer(Void), lib_connection_type :  UInt32, lib_params :  Pointer(Void), ) : LibC::Int
        # @connection_type: 
# @params: (nullable) 

# Generator::BuiltInTypeArgPlan
connection_type=Soup::WebsocketConnectionType.new(lib_connection_type)
# Generator::NullableArrayPlan
params=(lib_params.null? ? nil : lib_params)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection_type, params)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_configure(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # configure: (Throws)
    # @connection_type:
    # @params: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_configure_vfunc(impl_method_name)
      private def self._vfunc_unsafe_configure(%this : Pointer(Void), lib_connection_type :  UInt32, lib_params :  Pointer(Void), ) : LibC::Int
# @connection_type: 
# @params: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection_type, lib_params)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_configure = Proc(Pointer(Void), UInt32, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_configure(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_configure : Proc(Pointer(Void), UInt32, Pointer(Void), LibC::Int)? = nil
    end

    # get_request_params: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_request_params_vfunc(impl_method_name)
      private def self._vfunc_get_request_params(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_request_params(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_request_params: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_request_params_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_request_params(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_request_params = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_request_params(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_request_params : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_response_params: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_response_params_vfunc(impl_method_name)
      private def self._vfunc_get_response_params(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_response_params(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_response_params: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_response_params_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_response_params(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_response_params = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_response_params(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_response_params : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # process_incoming_message: (Throws)
    # @header: (inout) (transfer full)
    # @payload: (transfer full)
    # Returns: (transfer full)
    private macro _register_process_incoming_message_vfunc(impl_method_name)
      private def self._vfunc_process_incoming_message(%this : Pointer(Void), lib_header :  UInt8, lib_payload :  Pointer(Void), ) : Pointer(Void)
        # @header: (inout) (transfer full) 
# @payload: (transfer full) 

header=lib_header
# Generator::BuiltInTypeArgPlan
payload=GLib::Bytes.new(lib_payload, GICrystal::Transfer::Full)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(header, payload)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_process_incoming_message(Pointer(Void), UInt8, Pointer(Void))).pointer
        previous_def
      end
    end

    # process_incoming_message: (Throws)
    # @header: (inout) (transfer full)
    # @payload: (transfer full)
    # Returns: (transfer full)
    private macro _register_unsafe_process_incoming_message_vfunc(impl_method_name)
      private def self._vfunc_unsafe_process_incoming_message(%this : Pointer(Void), lib_header :  UInt8, lib_payload :  Pointer(Void), ) : Pointer(Void)
# @header: (inout) (transfer full) 
# @payload: (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_header, lib_payload)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_process_incoming_message = Proc(Pointer(Void), UInt8, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_process_incoming_message(Pointer(Void), UInt8, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_process_incoming_message : Proc(Pointer(Void), UInt8, Pointer(Void), Pointer(Void))? = nil
    end

    # process_outgoing_message: (Throws)
    # @header: (inout) (transfer full)
    # @payload: (transfer full)
    # Returns: (transfer full)
    private macro _register_process_outgoing_message_vfunc(impl_method_name)
      private def self._vfunc_process_outgoing_message(%this : Pointer(Void), lib_header :  UInt8, lib_payload :  Pointer(Void), ) : Pointer(Void)
        # @header: (inout) (transfer full) 
# @payload: (transfer full) 

header=lib_header
# Generator::BuiltInTypeArgPlan
payload=GLib::Bytes.new(lib_payload, GICrystal::Transfer::Full)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(header, payload)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_process_outgoing_message(Pointer(Void), UInt8, Pointer(Void))).pointer
        previous_def
      end
    end

    # process_outgoing_message: (Throws)
    # @header: (inout) (transfer full)
    # @payload: (transfer full)
    # Returns: (transfer full)
    private macro _register_unsafe_process_outgoing_message_vfunc(impl_method_name)
      private def self._vfunc_unsafe_process_outgoing_message(%this : Pointer(Void), lib_header :  UInt8, lib_payload :  Pointer(Void), ) : Pointer(Void)
# @header: (inout) (transfer full) 
# @payload: (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_header, lib_payload)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_process_outgoing_message = Proc(Pointer(Void), UInt8, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_process_outgoing_message(Pointer(Void), UInt8, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_process_outgoing_message : Proc(Pointer(Void), UInt8, Pointer(Void), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
