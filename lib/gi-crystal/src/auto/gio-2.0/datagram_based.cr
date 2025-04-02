module Gio
  module DatagramBased
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DatagramBased
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DatagramBased(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDatagramBased.g_type
    end

    def condition_check(condition : GLib::IOCondition) : GLib::IOCondition
      # g_datagram_based_condition_check: (Method)
      # @condition:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_datagram_based_condition_check(to_unsafe, condition)

      # Return value handling
      GLib::IOCondition.new(_retval)
    end

    def condition_wait(condition : GLib::IOCondition, timeout : Int64, cancellable : Gio::Cancellable?) : Bool
      # g_datagram_based_condition_wait: (Method | Throws)
      # @condition:
      # @timeout:
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
      _retval = LibGio.g_datagram_based_condition_wait(to_unsafe, condition, timeout, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def create_source(condition : GLib::IOCondition, cancellable : Gio::Cancellable?) : GLib::Source
      # g_datagram_based_create_source: (Method)
      # @condition:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_datagram_based_create_source(to_unsafe, condition, cancellable)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::Full)
    end

    def receive_messages(messages : Enumerable(Gio::InputMessage), flags : Int32, timeout : Int64, cancellable : Gio::Cancellable?) : Int32
      # g_datagram_based_receive_messages: (Method | Throws)
      # @messages: (array length=num_messages element-type Interface)
      # @num_messages:
      # @flags:
      # @timeout:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      num_messages = messages.size
      # Generator::ArrayArgPlan
      messages = messages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::InputMessage))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_datagram_based_receive_messages(to_unsafe, messages, num_messages, flags, timeout, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_messages(messages : Enumerable(Gio::OutputMessage), flags : Int32, timeout : Int64, cancellable : Gio::Cancellable?) : Int32
      # g_datagram_based_send_messages: (Method | Throws)
      # @messages: (array length=num_messages element-type Interface)
      # @num_messages:
      # @flags:
      # @timeout:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      num_messages = messages.size
      # Generator::ArrayArgPlan
      messages = messages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputMessage))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_datagram_based_send_messages(to_unsafe, messages, num_messages, flags, timeout, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    # condition_check: (None)
    # @condition:
    # Returns: (transfer none)
    private macro _register_condition_check_vfunc(impl_method_name)
      private def self._vfunc_condition_check(%this : Pointer(Void), lib_condition :  UInt32, ) : UInt32
        # @condition: 

# Generator::BuiltInTypeArgPlan
condition=GLib::IOCondition.new(lib_condition)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(condition)
        
        %retval.to_u32
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_condition_check(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # condition_check: (None)
    # @condition:
    # Returns: (transfer none)
    private macro _register_unsafe_condition_check_vfunc(impl_method_name)
      private def self._vfunc_unsafe_condition_check(%this : Pointer(Void), lib_condition :  UInt32, ) : UInt32
# @condition: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_condition)
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_condition_check = Proc(Pointer(Void), UInt32, UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_condition_check(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_condition_check : Proc(Pointer(Void), UInt32, UInt32)? = nil
    end

    # condition_wait: (Throws)
    # @condition:
    # @timeout:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_condition_wait_vfunc(impl_method_name)
      private def self._vfunc_condition_wait(%this : Pointer(Void), lib_condition :  UInt32, lib_timeout :  Int64, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @condition: 
# @timeout: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
condition=GLib::IOCondition.new(lib_condition)
timeout=lib_timeout
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(condition, timeout, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_condition_wait(Pointer(Void), UInt32, Int64, Pointer(Void))).pointer
        previous_def
      end
    end

    # condition_wait: (Throws)
    # @condition:
    # @timeout:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_condition_wait_vfunc(impl_method_name)
      private def self._vfunc_unsafe_condition_wait(%this : Pointer(Void), lib_condition :  UInt32, lib_timeout :  Int64, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @condition: 
# @timeout: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_condition, lib_timeout, lib_cancellable)
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_condition_wait = Proc(Pointer(Void), UInt32, Int64, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_condition_wait(Pointer(Void), UInt32, Int64, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_condition_wait : Proc(Pointer(Void), UInt32, Int64, Pointer(Void), LibC::Int)? = nil
    end

    # create_source: (None)
    # @condition:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_create_source_vfunc(impl_method_name)
      private def self._vfunc_create_source(%this : Pointer(Void), lib_condition :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @condition: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
condition=GLib::IOCondition.new(lib_condition)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(condition, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_source(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # create_source: (None)
    # @condition:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_create_source_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_source(%this : Pointer(Void), lib_condition :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @condition: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_condition, lib_cancellable)
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_source = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_source(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_source : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # receive_messages: (Throws)
    # @messages: (array length=num_messages element-type Interface)
    # @num_messages:
    # @flags:
    # @timeout:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_receive_messages_vfunc(impl_method_name)
      private def self._vfunc_receive_messages(%this : Pointer(Void), lib_messages :  Pointer(LibGio::InputMessage), lib_num_messages :  UInt32, lib_flags :  Int32, lib_timeout :  Int64, lib_cancellable :  Pointer(Void), ) : Int32
        # @messages: (array length=num_messages element-type Interface)
# @num_messages: 
# @flags: 
# @timeout: 
# @cancellable: (nullable) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_messages = lib_messages.as(Pointer(Pointer(Void)))
messages= Array(Gio::InputMessage).new(lib_num_messages) do |_i|
Gio::InputMessage.new((lib_messages + _i).value, GICrystal::Transfer::None)
end
flags=lib_flags
timeout=lib_timeout
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(messages, num_messages, flags, timeout, cancellable)
        
        %retval
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_receive_messages(Pointer(Void), Pointer(LibGio::InputMessage), UInt32, Int32, Int64, Pointer(Void))).pointer
        previous_def
      end
    end

    # receive_messages: (Throws)
    # @messages: (array length=num_messages element-type Interface)
    # @num_messages:
    # @flags:
    # @timeout:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_receive_messages_vfunc(impl_method_name)
      private def self._vfunc_unsafe_receive_messages(%this : Pointer(Void), lib_messages :  Pointer(LibGio::InputMessage), lib_num_messages :  UInt32, lib_flags :  Int32, lib_timeout :  Int64, lib_cancellable :  Pointer(Void), ) : Int32
# @messages: (array length=num_messages element-type Interface)
# @num_messages: 
# @flags: 
# @timeout: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_messages, lib_num_messages, lib_flags, lib_timeout, lib_cancellable)
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_receive_messages = Proc(Pointer(Void), Pointer(LibGio::InputMessage), UInt32, Int32, Int64, Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_receive_messages(Pointer(Void), Pointer(LibGio::InputMessage), UInt32, Int32, Int64, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_receive_messages : Proc(Pointer(Void), Pointer(LibGio::InputMessage), UInt32, Int32, Int64, Pointer(Void), Int32)? = nil
    end

    # send_messages: (Throws)
    # @messages: (array length=num_messages element-type Interface)
    # @num_messages:
    # @flags:
    # @timeout:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_send_messages_vfunc(impl_method_name)
      private def self._vfunc_send_messages(%this : Pointer(Void), lib_messages :  Pointer(LibGio::OutputMessage), lib_num_messages :  UInt32, lib_flags :  Int32, lib_timeout :  Int64, lib_cancellable :  Pointer(Void), ) : Int32
        # @messages: (array length=num_messages element-type Interface)
# @num_messages: 
# @flags: 
# @timeout: 
# @cancellable: (nullable) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_messages = lib_messages.as(Pointer(Pointer(Void)))
messages= Array(Gio::OutputMessage).new(lib_num_messages) do |_i|
Gio::OutputMessage.new((lib_messages + _i).value, GICrystal::Transfer::None)
end
flags=lib_flags
timeout=lib_timeout
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(messages, num_messages, flags, timeout, cancellable)
        
        %retval
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_send_messages(Pointer(Void), Pointer(LibGio::OutputMessage), UInt32, Int32, Int64, Pointer(Void))).pointer
        previous_def
      end
    end

    # send_messages: (Throws)
    # @messages: (array length=num_messages element-type Interface)
    # @num_messages:
    # @flags:
    # @timeout:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_send_messages_vfunc(impl_method_name)
      private def self._vfunc_unsafe_send_messages(%this : Pointer(Void), lib_messages :  Pointer(LibGio::OutputMessage), lib_num_messages :  UInt32, lib_flags :  Int32, lib_timeout :  Int64, lib_cancellable :  Pointer(Void), ) : Int32
# @messages: (array length=num_messages element-type Interface)
# @num_messages: 
# @flags: 
# @timeout: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_messages, lib_num_messages, lib_flags, lib_timeout, lib_cancellable)
      end

      def self._install_iface_Gio__DatagramBased(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_send_messages = Proc(Pointer(Void), Pointer(LibGio::OutputMessage), UInt32, Int32, Int64, Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_send_messages(Pointer(Void), Pointer(LibGio::OutputMessage), UInt32, Int32, Int64, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_send_messages : Proc(Pointer(Void), Pointer(LibGio::OutputMessage), UInt32, Int32, Int64, Pointer(Void), Int32)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDatagramBased.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDatagramBased < GObject::Object
    include DatagramBased

    GICrystal.declare_new_method(Gio::AbstractDatagramBased, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_datagram_based_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDatagramBased.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
