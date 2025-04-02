require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class FilenameCompleter < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::FilenameCompleterClass), class_init,
        sizeof(LibGio::FilenameCompleter), instance_init, 0)
    end

    GICrystal.declare_new_method(FilenameCompleter, g_object_get_qdata)

    # Initialize a new `FilenameCompleter`.
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
      @@g_type ||= LibGio.g_filename_completer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::FilenameCompleter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_filename_completer_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_filename_completer_new

      # Return value handling
      Gio::FilenameCompleter.new(_retval, GICrystal::Transfer::Full)
    end

    def completion_suffix(initial_text : ::String) : ::String?
      # g_filename_completer_get_completion_suffix: (Method)
      # @initial_text:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_filename_completer_get_completion_suffix(to_unsafe, initial_text)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def completions(initial_text : ::String) : Enumerable(::String)
      # g_filename_completer_get_completions: (Method)
      # @initial_text:
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_filename_completer_get_completions(to_unsafe, initial_text)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def dirs_only=(dirs_only : Bool) : Nil
      # g_filename_completer_set_dirs_only: (Method)
      # @dirs_only:
      # Returns: (transfer none)

      # C call
      LibGio.g_filename_completer_set_dirs_only(to_unsafe, dirs_only)

      # Return value handling
    end

    struct GotCompletionDataSignal < GObject::Signal
      def name : String
        @detail ? "got-completion-data::#{@detail}" : "got-completion-data"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::FilenameCompleter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::FilenameCompleter.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::FilenameCompleter, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "got-completion-data")
      end
    end

    def got_completion_data_signal
      GotCompletionDataSignal.new(self)
    end

    # got_completion_data: (None)
    # Returns: (transfer none)
    private macro _register_got_completion_data_vfunc(impl_method_name)
      private def self._vfunc_got_completion_data(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_got_completion_data(Pointer(Void))).pointer
        previous_def
      end
    end

    # got_completion_data: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_got_completion_data_vfunc(impl_method_name)
      private def self._vfunc_unsafe_got_completion_data(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_got_completion_data = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_got_completion_data(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_got_completion_data : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
