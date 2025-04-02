require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class MountOperation < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::MountOperationClass), class_init,
        sizeof(LibGio::MountOperation), instance_init, 0)
    end

    GICrystal.declare_new_method(MountOperation, g_object_get_qdata)

    # Initialize a new `MountOperation`.
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

    def initialize(*, anonymous : Bool? = nil, choice : Int32? = nil, domain : ::String? = nil, is_tcrypt_hidden_volume : Bool? = nil, is_tcrypt_system_volume : Bool? = nil, password : ::String? = nil, password_save : Gio::PasswordSave? = nil, pim : UInt32? = nil, username : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !anonymous.nil?
        (_names.to_unsafe + _n).value = "anonymous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, anonymous)
        _n += 1
      end
      if !choice.nil?
        (_names.to_unsafe + _n).value = "choice".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, choice)
        _n += 1
      end
      if !domain.nil?
        (_names.to_unsafe + _n).value = "domain".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, domain)
        _n += 1
      end
      if !is_tcrypt_hidden_volume.nil?
        (_names.to_unsafe + _n).value = "is-tcrypt-hidden-volume".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_tcrypt_hidden_volume)
        _n += 1
      end
      if !is_tcrypt_system_volume.nil?
        (_names.to_unsafe + _n).value = "is-tcrypt-system-volume".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_tcrypt_system_volume)
        _n += 1
      end
      if !password.nil?
        (_names.to_unsafe + _n).value = "password".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, password)
        _n += 1
      end
      if !password_save.nil?
        (_names.to_unsafe + _n).value = "password-save".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, password_save)
        _n += 1
      end
      if !pim.nil?
        (_names.to_unsafe + _n).value = "pim".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pim)
        _n += 1
      end
      if !username.nil?
        (_names.to_unsafe + _n).value = "username".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, username)
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
      @@g_type ||= LibGio.g_mount_operation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::MountOperation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def anonymous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "anonymous", unsafe_value, Pointer(Void).null)
      value
    end

    def anonymous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "anonymous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def choice=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "choice", unsafe_value, Pointer(Void).null)
      value
    end

    def choice : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "choice", pointerof(value), Pointer(Void).null)
      value
    end

    def domain=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "domain", unsafe_value, Pointer(Void).null)
      value
    end

    def domain : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "domain", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#domain` property to nil.
    def domain=(value : Nil) : Nil
      LibGObject.g_object_set(self, "domain", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#domain`, but can return nil.
    def domain? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "domain", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def is_tcrypt_hidden_volume=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-tcrypt-hidden-volume", unsafe_value, Pointer(Void).null)
      value
    end

    def is_tcrypt_hidden_volume? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-tcrypt-hidden-volume", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_tcrypt_system_volume=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-tcrypt-system-volume", unsafe_value, Pointer(Void).null)
      value
    end

    def is_tcrypt_system_volume? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-tcrypt-system-volume", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def password=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "password", unsafe_value, Pointer(Void).null)
      value
    end

    def password : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "password", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#password` property to nil.
    def password=(value : Nil) : Nil
      LibGObject.g_object_set(self, "password", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#password`, but can return nil.
    def password? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "password", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def password_save=(value : Gio::PasswordSave) : Gio::PasswordSave
      unsafe_value = value

      LibGObject.g_object_set(self, "password-save", unsafe_value, Pointer(Void).null)
      value
    end

    def password_save : Gio::PasswordSave
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "password-save", pointerof(value), Pointer(Void).null)
      Gio::PasswordSave.new(value)
    end

    def pim=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "pim", unsafe_value, Pointer(Void).null)
      value
    end

    def pim : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "pim", pointerof(value), Pointer(Void).null)
      value
    end

    def username=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "username", unsafe_value, Pointer(Void).null)
      value
    end

    def username : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "username", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#username` property to nil.
    def username=(value : Nil) : Nil
      LibGObject.g_object_set(self, "username", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#username`, but can return nil.
    def username? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "username", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # g_mount_operation_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_mount_operation_new

      # Return value handling
      Gio::MountOperation.new(_retval, GICrystal::Transfer::Full)
    end

    def anonymous : Bool
      # g_mount_operation_get_anonymous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_mount_operation_get_anonymous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def choice : Int32
      # g_mount_operation_get_choice: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_mount_operation_get_choice(to_unsafe)

      # Return value handling
      _retval
    end

    def domain : ::String?
      # g_mount_operation_get_domain: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_mount_operation_get_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def is_tcrypt_hidden_volume : Bool
      # g_mount_operation_get_is_tcrypt_hidden_volume: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_mount_operation_get_is_tcrypt_hidden_volume(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_tcrypt_system_volume : Bool
      # g_mount_operation_get_is_tcrypt_system_volume: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_mount_operation_get_is_tcrypt_system_volume(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def password : ::String?
      # g_mount_operation_get_password: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_mount_operation_get_password(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def password_save : Gio::PasswordSave
      # g_mount_operation_get_password_save: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_mount_operation_get_password_save(to_unsafe)

      # Return value handling
      Gio::PasswordSave.new(_retval)
    end

    def pim : UInt32
      # g_mount_operation_get_pim: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_mount_operation_get_pim(to_unsafe)

      # Return value handling
      _retval
    end

    def username : ::String?
      # g_mount_operation_get_username: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_mount_operation_get_username(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def reply(result : Gio::MountOperationResult) : Nil
      # g_mount_operation_reply: (Method)
      # @result:
      # Returns: (transfer none)

      # C call
      LibGio.g_mount_operation_reply(to_unsafe, result)

      # Return value handling
    end

    def anonymous=(anonymous : Bool) : Nil
      # g_mount_operation_set_anonymous: (Method | Setter)
      # @anonymous:
      # Returns: (transfer none)

      # C call
      LibGio.g_mount_operation_set_anonymous(to_unsafe, anonymous)

      # Return value handling
    end

    def choice=(choice : Int32) : Nil
      # g_mount_operation_set_choice: (Method | Setter)
      # @choice:
      # Returns: (transfer none)

      # C call
      LibGio.g_mount_operation_set_choice(to_unsafe, choice)

      # Return value handling
    end

    def domain=(domain : ::String?) : Nil
      # g_mount_operation_set_domain: (Method | Setter)
      # @domain: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      domain = if domain.nil?
                 Pointer(LibC::Char).null
               else
                 domain.to_unsafe
               end

      # C call
      LibGio.g_mount_operation_set_domain(to_unsafe, domain)

      # Return value handling
    end

    def is_tcrypt_hidden_volume=(hidden_volume : Bool) : Nil
      # g_mount_operation_set_is_tcrypt_hidden_volume: (Method | Setter)
      # @hidden_volume:
      # Returns: (transfer none)

      # C call
      LibGio.g_mount_operation_set_is_tcrypt_hidden_volume(to_unsafe, hidden_volume)

      # Return value handling
    end

    def is_tcrypt_system_volume=(system_volume : Bool) : Nil
      # g_mount_operation_set_is_tcrypt_system_volume: (Method | Setter)
      # @system_volume:
      # Returns: (transfer none)

      # C call
      LibGio.g_mount_operation_set_is_tcrypt_system_volume(to_unsafe, system_volume)

      # Return value handling
    end

    def password=(password : ::String?) : Nil
      # g_mount_operation_set_password: (Method | Setter)
      # @password: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      password = if password.nil?
                   Pointer(LibC::Char).null
                 else
                   password.to_unsafe
                 end

      # C call
      LibGio.g_mount_operation_set_password(to_unsafe, password)

      # Return value handling
    end

    def password_save=(save : Gio::PasswordSave) : Nil
      # g_mount_operation_set_password_save: (Method | Setter)
      # @save:
      # Returns: (transfer none)

      # C call
      LibGio.g_mount_operation_set_password_save(to_unsafe, save)

      # Return value handling
    end

    def pim=(pim : UInt32) : Nil
      # g_mount_operation_set_pim: (Method | Setter)
      # @pim:
      # Returns: (transfer none)

      # C call
      LibGio.g_mount_operation_set_pim(to_unsafe, pim)

      # Return value handling
    end

    def username=(username : ::String?) : Nil
      # g_mount_operation_set_username: (Method | Setter)
      # @username: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      username = if username.nil?
                   Pointer(LibC::Char).null
                 else
                   username.to_unsafe
                 end

      # C call
      LibGio.g_mount_operation_set_username(to_unsafe, username)

      # Return value handling
    end

    struct AbortedSignal < GObject::Signal
      def name : String
        @detail ? "aborted::#{@detail}" : "aborted"
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

      def connect(handler : Proc(Gio::MountOperation, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::MountOperation.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::MountOperation, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "aborted")
      end
    end

    def aborted_signal
      AbortedSignal.new(self)
    end

    struct AskPasswordSignal < GObject::Signal
      def name : String
        @detail ? "ask-password::#{@detail}" : "ask-password"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, ::String, ::String, Gio::AskPasswordFlags, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, ::String, ::String, Gio::AskPasswordFlags, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_default_user : Pointer(LibC::Char), lib_default_domain : Pointer(LibC::Char), lib_flags : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # Generator::BuiltInTypeArgPlan
          default_user = ::String.new(lib_default_user)
          # Generator::BuiltInTypeArgPlan
          default_domain = ::String.new(lib_default_domain)
          # Generator::BuiltInTypeArgPlan
          flags = Gio::AskPasswordFlags.new(lib_flags)
          ::Box(Proc(::String, ::String, ::String, Gio::AskPasswordFlags, Nil)).unbox(_lib_box).call(message, default_user, default_domain, flags)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::MountOperation, ::String, ::String, ::String, Gio::AskPasswordFlags, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_default_user : Pointer(LibC::Char), lib_default_domain : Pointer(LibC::Char), lib_flags : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gio::MountOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # Generator::BuiltInTypeArgPlan
          default_user = ::String.new(lib_default_user)
          # Generator::BuiltInTypeArgPlan
          default_domain = ::String.new(lib_default_domain)
          # Generator::BuiltInTypeArgPlan
          flags = Gio::AskPasswordFlags.new(lib_flags)
          ::Box(Proc(Gio::MountOperation, ::String, ::String, ::String, Gio::AskPasswordFlags, Nil)).unbox(_lib_box).call(_sender, message, default_user, default_domain, flags)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : ::String, default_user : ::String, default_domain : ::String, flags : Gio::AskPasswordFlags) : Nil
        LibGObject.g_signal_emit_by_name(@source, "ask-password", message, default_user, default_domain, flags)
      end
    end

    def ask_password_signal
      AskPasswordSignal.new(self)
    end

    struct AskQuestionSignal < GObject::Signal
      def name : String
        @detail ? "ask-question::#{@detail}" : "ask-question"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Enumerable(::String), Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_choices : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(::String, Enumerable(::String), Nil)).unbox(_lib_box).call(message, choices)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::MountOperation, ::String, Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_choices : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          _sender = Gio::MountOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(Gio::MountOperation, ::String, Enumerable(::String), Nil)).unbox(_lib_box).call(_sender, message, choices)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : ::String, choices : Enumerable(::String)) : Nil
        # Generator::ArrayArgPlan
        choices = choices.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

        LibGObject.g_signal_emit_by_name(@source, "ask-question", message, choices)
      end
    end

    def ask_question_signal
      AskQuestionSignal.new(self)
    end

    struct ReplySignal < GObject::Signal
      def name : String
        @detail ? "reply::#{@detail}" : "reply"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::MountOperationResult, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::MountOperationResult, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_result : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          result = Gio::MountOperationResult.new(lib_result)
          ::Box(Proc(Gio::MountOperationResult, Nil)).unbox(_lib_box).call(result)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::MountOperation, Gio::MountOperationResult, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_result : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gio::MountOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          result = Gio::MountOperationResult.new(lib_result)
          ::Box(Proc(Gio::MountOperation, Gio::MountOperationResult, Nil)).unbox(_lib_box).call(_sender, result)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(result : Gio::MountOperationResult) : Nil
        LibGObject.g_signal_emit_by_name(@source, "reply", result)
      end
    end

    def reply_signal
      ReplySignal.new(self)
    end

    struct ShowProcessesSignal < GObject::Signal
      def name : String
        @detail ? "show-processes::#{@detail}" : "show-processes"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Enumerable(Int32), Enumerable(::String), Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Enumerable(Int32), Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_processes : Pointer(Int32), lib_choices : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(::String, Enumerable(Int32), Enumerable(::String), Nil)).unbox(_lib_box).call(message, processes, choices)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::MountOperation, ::String, Enumerable(Int32), Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_processes : Pointer(Int32), lib_choices : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          _sender = Gio::MountOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(Gio::MountOperation, ::String, Enumerable(Int32), Enumerable(::String), Nil)).unbox(_lib_box).call(_sender, message, processes, choices)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : ::String, processes : Enumerable(Int32), choices : Enumerable(::String)) : Nil
        # Generator::ArrayArgPlan
        processes = processes.to_a.to_unsafe.as(Pointer(Int32))
        # Generator::ArrayArgPlan
        choices = choices.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

        LibGObject.g_signal_emit_by_name(@source, "show-processes", message, processes, choices)
      end
    end

    def show_processes_signal
      ShowProcessesSignal.new(self)
    end

    struct ShowUnmountProgressSignal < GObject::Signal
      def name : String
        @detail ? "show-unmount-progress::#{@detail}" : "show-unmount-progress"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Int64, Int64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Int64, Int64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_time_left : Int64, lib_bytes_left : Int64, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # NoStrategy
          time_left = lib_time_left
          # NoStrategy
          bytes_left = lib_bytes_left
          ::Box(Proc(::String, Int64, Int64, Nil)).unbox(_lib_box).call(message, time_left, bytes_left)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::MountOperation, ::String, Int64, Int64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(LibC::Char), lib_time_left : Int64, lib_bytes_left : Int64, _lib_box : Pointer(Void)) {
          _sender = Gio::MountOperation.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = ::String.new(lib_message)
          # NoStrategy
          time_left = lib_time_left
          # NoStrategy
          bytes_left = lib_bytes_left
          ::Box(Proc(Gio::MountOperation, ::String, Int64, Int64, Nil)).unbox(_lib_box).call(_sender, message, time_left, bytes_left)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : ::String, time_left : Int64, bytes_left : Int64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "show-unmount-progress", message, time_left, bytes_left)
      end
    end

    def show_unmount_progress_signal
      ShowUnmountProgressSignal.new(self)
    end

    # aborted: (None)
    # Returns: (transfer none)
    private macro _register_aborted_vfunc(impl_method_name)
      private def self._vfunc_aborted(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_aborted(Pointer(Void))).pointer
        previous_def
      end
    end

    # aborted: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_aborted_vfunc(impl_method_name)
      private def self._vfunc_unsafe_aborted(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_aborted = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_aborted(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_aborted : Proc(Pointer(Void), Void)? = nil
    end

    # ask_password: (None)
    # @message:
    # @default_user:
    # @default_domain:
    # @flags:
    # Returns: (transfer none)
    private macro _register_ask_password_vfunc(impl_method_name)
      private def self._vfunc_ask_password(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_default_user :  Pointer(LibC::Char), lib_default_domain :  Pointer(LibC::Char), lib_flags :  UInt32, ) : Void
        # @message: 
# @default_user: 
# @default_domain: 
# @flags: 

# Generator::BuiltInTypeArgPlan
message=::String.new(lib_message)
# Generator::BuiltInTypeArgPlan
default_user=::String.new(lib_default_user)
# Generator::BuiltInTypeArgPlan
default_domain=::String.new(lib_default_domain)
# Generator::BuiltInTypeArgPlan
flags=Gio::AskPasswordFlags.new(lib_flags)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(message, default_user, default_domain, flags)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ask_password(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(LibC::Char), UInt32)).pointer
        previous_def
      end
    end

    # ask_password: (None)
    # @message:
    # @default_user:
    # @default_domain:
    # @flags:
    # Returns: (transfer none)
    private macro _register_unsafe_ask_password_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ask_password(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_default_user :  Pointer(LibC::Char), lib_default_domain :  Pointer(LibC::Char), lib_flags :  UInt32, ) : Void
# @message: 
# @default_user: 
# @default_domain: 
# @flags: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_message, lib_default_user, lib_default_domain, lib_flags)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ask_password = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(LibC::Char), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ask_password(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(LibC::Char), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ask_password : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(LibC::Char), UInt32, Void)? = nil
    end

    # ask_question: (None)
    # @message:
    # @choices: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_ask_question_vfunc(impl_method_name)
      private def self._vfunc_ask_question(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_choices :  Pointer(Pointer(LibC::Char)), ) : Void
        # @message: 
# @choices: (array zero-terminated=1 element-type Utf8)

# Generator::BuiltInTypeArgPlan
message=::String.new(lib_message)
# Generator::ArrayArgPlan
raise NotImplementedError.new


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(message, choices)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ask_question(Pointer(Void), Pointer(LibC::Char), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end
    end

    # ask_question: (None)
    # @message:
    # @choices: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_unsafe_ask_question_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ask_question(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_choices :  Pointer(Pointer(LibC::Char)), ) : Void
# @message: 
# @choices: (array zero-terminated=1 element-type Utf8)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_message, lib_choices)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ask_question = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Pointer(LibC::Char)), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ask_question(Pointer(Void), Pointer(LibC::Char), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ask_question : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Pointer(LibC::Char)), Void)? = nil
    end

    # reply: (None)
    # @result:
    # Returns: (transfer none)
    private macro _register_reply_vfunc(impl_method_name)
      private def self._vfunc_reply(%this : Pointer(Void), lib_result :  UInt32, ) : Void
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::MountOperationResult.new(lib_result)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_reply(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # reply: (None)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_reply_vfunc(impl_method_name)
      private def self._vfunc_unsafe_reply(%this : Pointer(Void), lib_result :  UInt32, ) : Void
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reply = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reply(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reply : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # show_processes: (None)
    # @message:
    # @processes: (array element-type Int32)
    # @choices: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_show_processes_vfunc(impl_method_name)
      private def self._vfunc_show_processes(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_processes :  Pointer(Int32), lib_choices :  Pointer(Pointer(LibC::Char)), ) : Void
        # @message: 
# @processes: (array element-type Int32)
# @choices: (array zero-terminated=1 element-type Utf8)

# Generator::BuiltInTypeArgPlan
message=::String.new(lib_message)
# Generator::ArrayArgPlan
raise NotImplementedError.new
# Generator::ArrayArgPlan
raise NotImplementedError.new


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(message, processes, choices)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_show_processes(Pointer(Void), Pointer(LibC::Char), Pointer(Int32), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end
    end

    # show_processes: (None)
    # @message:
    # @processes: (array element-type Int32)
    # @choices: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_unsafe_show_processes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_show_processes(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_processes :  Pointer(Int32), lib_choices :  Pointer(Pointer(LibC::Char)), ) : Void
# @message: 
# @processes: (array element-type Int32)
# @choices: (array zero-terminated=1 element-type Utf8)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_message, lib_processes, lib_choices)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_show_processes = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Int32), Pointer(Pointer(LibC::Char)), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_show_processes(Pointer(Void), Pointer(LibC::Char), Pointer(Int32), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_show_processes : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Int32), Pointer(Pointer(LibC::Char)), Void)? = nil
    end

    # show_unmount_progress: (None)
    # @message:
    # @time_left:
    # @bytes_left:
    # Returns: (transfer none)
    private macro _register_show_unmount_progress_vfunc(impl_method_name)
      private def self._vfunc_show_unmount_progress(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_time_left :  Int64, lib_bytes_left :  Int64, ) : Void
        # @message: 
# @time_left: 
# @bytes_left: 

# Generator::BuiltInTypeArgPlan
message=::String.new(lib_message)
time_left=lib_time_left
bytes_left=lib_bytes_left


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(message, time_left, bytes_left)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_show_unmount_progress(Pointer(Void), Pointer(LibC::Char), Int64, Int64)).pointer
        previous_def
      end
    end

    # show_unmount_progress: (None)
    # @message:
    # @time_left:
    # @bytes_left:
    # Returns: (transfer none)
    private macro _register_unsafe_show_unmount_progress_vfunc(impl_method_name)
      private def self._vfunc_unsafe_show_unmount_progress(%this : Pointer(Void), lib_message :  Pointer(LibC::Char), lib_time_left :  Int64, lib_bytes_left :  Int64, ) : Void
# @message: 
# @time_left: 
# @bytes_left: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_message, lib_time_left, lib_bytes_left)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_show_unmount_progress = Proc(Pointer(Void), Pointer(LibC::Char), Int64, Int64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_show_unmount_progress(Pointer(Void), Pointer(LibC::Char), Int64, Int64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_show_unmount_progress : Proc(Pointer(Void), Pointer(LibC::Char), Int64, Int64, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
