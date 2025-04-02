module Gio
  module PollableOutputStream
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::PollableOutputStream
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__PollableOutputStream(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractPollableOutputStream.g_type
    end

    def can_poll : Bool
      # g_pollable_output_stream_can_poll: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_pollable_output_stream_can_poll(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def create_source(cancellable : Gio::Cancellable?) : GLib::Source
      # g_pollable_output_stream_create_source: (Method)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_pollable_output_stream_create_source(to_unsafe, cancellable)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::Full)
    end

    def is_writable : Bool
      # g_pollable_output_stream_is_writable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_pollable_output_stream_is_writable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def write_nonblocking(buffer : ::Bytes, cancellable : Gio::Cancellable?) : Int64
      # g_pollable_output_stream_write_nonblocking: (Method | Throws)
      # @buffer: (array length=count element-type UInt8)
      # @count:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      count = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_pollable_output_stream_write_nonblocking(to_unsafe, buffer, count, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def writev_nonblocking(vectors : Enumerable(Gio::OutputVector), cancellable : Gio::Cancellable?) : Gio::PollableReturn
      # g_pollable_output_stream_writev_nonblocking: (Method | Throws)
      # @vectors: (array length=n_vectors element-type Interface)
      # @n_vectors:
      # @bytes_written: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      n_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputVector))
      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_pollable_output_stream_writev_nonblocking(to_unsafe, vectors, n_vectors, bytes_written, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::PollableReturn.new(_retval)
    end

    # can_poll: (None)
    # Returns: (transfer none)
    private macro _register_can_poll_vfunc(impl_method_name)
      private def self._vfunc_can_poll(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_poll(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_poll: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_poll_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_poll(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_poll = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_poll(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_poll : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # create_source: (None)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_create_source_vfunc(impl_method_name)
      private def self._vfunc_create_source(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_source(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # create_source: (None)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_create_source_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_source(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_source = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_source(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_source : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # is_writable: (None)
    # Returns: (transfer none)
    private macro _register_is_writable_vfunc(impl_method_name)
      private def self._vfunc_is_writable(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_writable(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_writable: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_writable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_writable(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_writable = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_writable(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_writable : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # write_nonblocking: (Throws)
    # @buffer: (nullable) (array length=count element-type UInt8)
    # @count:
    # Returns: (transfer none)
    private macro _register_write_nonblocking_vfunc(impl_method_name)
      private def self._vfunc_write_nonblocking(%this : Pointer(Void), lib_buffer :  Pointer(UInt8), lib_count :  UInt64, ) : Int64
        # @buffer: (nullable) (array length=count element-type UInt8)
# @count: 

# Generator::ArrayLengthArgPlan
# Generator::NullableArrayPlan
buffer=(lib_buffer.null? ? nil : GICrystal.transfer_array(lib_buffer, count,GICrystal::Transfer::None))


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(buffer, count)
        
        %retval
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write_nonblocking(Pointer(Void), Pointer(UInt8), UInt64)).pointer
        previous_def
      end
    end

    # write_nonblocking: (Throws)
    # @buffer: (nullable) (array length=count element-type UInt8)
    # @count:
    # Returns: (transfer none)
    private macro _register_unsafe_write_nonblocking_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write_nonblocking(%this : Pointer(Void), lib_buffer :  Pointer(UInt8), lib_count :  UInt64, ) : Int64
# @buffer: (nullable) (array length=count element-type UInt8)
# @count: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_buffer, lib_count)
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write_nonblocking = Proc(Pointer(Void), Pointer(UInt8), UInt64, Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write_nonblocking(Pointer(Void), Pointer(UInt8), UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write_nonblocking : Proc(Pointer(Void), Pointer(UInt8), UInt64, Int64)? = nil
    end

    # writev_nonblocking: (Throws)
    # @vectors: (array length=n_vectors element-type Interface)
    # @n_vectors:
    # @bytes_written: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_writev_nonblocking_vfunc(impl_method_name)
      private def self._vfunc_writev_nonblocking(%this : Pointer(Void), lib_vectors :  Pointer(LibGio::OutputVector), lib_n_vectors :  UInt64, lib_bytes_written :  UInt64, ) : Int32
        # @vectors: (array length=n_vectors element-type Interface)
# @n_vectors: 
# @bytes_written: (out) (transfer full) (optional) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_vectors = lib_vectors.as(Pointer(Pointer(Void)))
vectors= Array(Gio::OutputVector).new(lib_n_vectors) do |_i|
Gio::OutputVector.new((lib_vectors + _i).value, GICrystal::Transfer::None)
end
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(vectors, n_vectors, bytes_written)
        
        %retval.to_i32
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_writev_nonblocking(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64)).pointer
        previous_def
      end
    end

    # writev_nonblocking: (Throws)
    # @vectors: (array length=n_vectors element-type Interface)
    # @n_vectors:
    # @bytes_written: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_writev_nonblocking_vfunc(impl_method_name)
      private def self._vfunc_unsafe_writev_nonblocking(%this : Pointer(Void), lib_vectors :  Pointer(LibGio::OutputVector), lib_n_vectors :  UInt64, lib_bytes_written :  UInt64, ) : Int32
# @vectors: (array length=n_vectors element-type Interface)
# @n_vectors: 
# @bytes_written: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_vectors, lib_n_vectors, lib_bytes_written)
      end

      def self._install_iface_Gio__PollableOutputStream(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_writev_nonblocking = Proc(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64, Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_writev_nonblocking(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_writev_nonblocking : Proc(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64, Int32)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractPollableOutputStream.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractPollableOutputStream < GObject::Object
    include PollableOutputStream

    GICrystal.declare_new_method(Gio::AbstractPollableOutputStream, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_pollable_output_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractPollableOutputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
