require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ApplicationCommandLine < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ApplicationCommandLineClass), class_init,
        sizeof(LibGio::ApplicationCommandLine), instance_init, 0)
    end

    GICrystal.declare_new_method(ApplicationCommandLine, g_object_get_qdata)

    # Initialize a new `ApplicationCommandLine`.
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

    def initialize(*, arguments : GLib::Variant? = nil, is_remote : Bool? = nil, options : GLib::Variant? = nil, platform_data : GLib::Variant? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !arguments.nil?
        (_names.to_unsafe + _n).value = "arguments".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, arguments)
        _n += 1
      end
      if !is_remote.nil?
        (_names.to_unsafe + _n).value = "is-remote".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_remote)
        _n += 1
      end
      if !options.nil?
        (_names.to_unsafe + _n).value = "options".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, options)
        _n += 1
      end
      if !platform_data.nil?
        (_names.to_unsafe + _n).value = "platform-data".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, platform_data)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_application_command_line_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ApplicationCommandLine.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def arguments=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "arguments", unsafe_value, Pointer(Void).null)
      value
    end

    def is_remote? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-remote", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def options=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "options", unsafe_value, Pointer(Void).null)
      value
    end

    def platform_data=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "platform-data", unsafe_value, Pointer(Void).null)
      value
    end

    def create_file_for_arg(arg : ::String) : Gio::File
      # g_application_command_line_create_file_for_arg: (Method)
      # @arg:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_application_command_line_create_file_for_arg(to_unsafe, arg)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def done : Nil
      # g_application_command_line_done: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_command_line_done(to_unsafe)

      # Return value handling
    end

    def arguments : Enumerable(::String)
      # g_application_command_line_get_arguments: (Method)
      # @argc: (out) (transfer full) (optional)
      # Returns: (transfer full) (array length=argc element-type Filename)

      # Generator::OutArgUsedInReturnPlan
      argc = 0
      # C call
      _retval = LibGio.g_application_command_line_get_arguments(to_unsafe, pointerof(argc))

      # Return value handling
      GICrystal.transfer_array(_retval, argc, GICrystal::Transfer::Full)
    end

    def cwd : ::Path?
      # g_application_command_line_get_cwd: (Method)
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGio.g_application_command_line_get_cwd(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    def environ : Enumerable(::String)
      # g_application_command_line_get_environ: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type Filename)

      # C call
      _retval = LibGio.g_application_command_line_get_environ(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def exit_status : Int32
      # g_application_command_line_get_exit_status: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_command_line_get_exit_status(to_unsafe)

      # Return value handling
      _retval
    end

    def is_remote : Bool
      # g_application_command_line_get_is_remote: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_command_line_get_is_remote(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def options_dict : GLib::VariantDict
      # g_application_command_line_get_options_dict: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_command_line_get_options_dict(to_unsafe)

      # Return value handling
      GLib::VariantDict.new(_retval, GICrystal::Transfer::None)
    end

    def platform_data : GLib::Variant?
      # g_application_command_line_get_platform_data: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_application_command_line_get_platform_data(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def stdin : Gio::InputStream?
      # g_application_command_line_get_stdin: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_application_command_line_get_stdin(to_unsafe)

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def getenv(name : ::String) : ::String?
      # g_application_command_line_getenv: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_application_command_line_getenv(to_unsafe, name)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def print_literal(message : ::String) : Nil
      # g_application_command_line_print_literal: (Method)
      # @message:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_command_line_print_literal(to_unsafe, message)

      # Return value handling
    end

    def printerr_literal(message : ::String) : Nil
      # g_application_command_line_printerr_literal: (Method)
      # @message:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_command_line_printerr_literal(to_unsafe, message)

      # Return value handling
    end

    def exit_status=(exit_status : Int32) : Nil
      # g_application_command_line_set_exit_status: (Method)
      # @exit_status:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_command_line_set_exit_status(to_unsafe, exit_status)

      # Return value handling
    end

    # done: (None)
    # Returns: (transfer none)
    private macro _register_done_vfunc(impl_method_name)
      private def self._vfunc_done(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_done(Pointer(Void))).pointer
        previous_def
      end
    end

    # done: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_done_vfunc(impl_method_name)
      private def self._vfunc_unsafe_done(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_done = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_done(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_done : Proc(Pointer(Void), Void)? = nil
    end

    # get_stdin: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_stdin_vfunc(impl_method_name)
      private def self._vfunc_get_stdin(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_stdin(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_stdin: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_stdin_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_stdin(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_stdin = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_stdin(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_stdin : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # print_literal: (None)
    # @message:
    # Returns: (transfer none)
    private macro _register_print_literal_vfunc(impl_method_name)
      private def self._vfunc_print_literal(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), ) : Void
        # @message: 

# Generator::BuiltInTypeArgPlan
message=::String.new(lib_message)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(message)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_print_literal(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # print_literal: (None)
    # @message:
    # Returns: (transfer none)
    private macro _register_unsafe_print_literal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_print_literal(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), ) : Void
# @message: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_message)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_print_literal = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_print_literal(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_print_literal : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # printerr_literal: (None)
    # @message:
    # Returns: (transfer none)
    private macro _register_printerr_literal_vfunc(impl_method_name)
      private def self._vfunc_printerr_literal(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), ) : Void
        # @message: 

# Generator::BuiltInTypeArgPlan
message=::String.new(lib_message)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(message)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_printerr_literal(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # printerr_literal: (None)
    # @message:
    # Returns: (transfer none)
    private macro _register_unsafe_printerr_literal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_printerr_literal(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), ) : Void
# @message: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_message)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_printerr_literal = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_printerr_literal(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_printerr_literal : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
