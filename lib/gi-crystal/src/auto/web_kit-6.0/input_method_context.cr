require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class InputMethodContext < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibWebKit::InputMethodContextClass), class_init,
        sizeof(LibWebKit::InputMethodContext), instance_init, 0)
    end

    GICrystal.declare_new_method(InputMethodContext, g_object_get_qdata)

    # Initialize a new `InputMethodContext`.
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

    def initialize(*, input_hints : WebKit::InputHints? = nil, input_purpose : WebKit::InputPurpose? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !input_hints.nil?
        (_names.to_unsafe + _n).value = "input-hints".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_hints)
        _n += 1
      end
      if !input_purpose.nil?
        (_names.to_unsafe + _n).value = "input-purpose".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_purpose)
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
      @@g_type ||= LibWebKit.webkit_input_method_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::InputMethodContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def input_hints=(value : WebKit::InputHints) : WebKit::InputHints
      unsafe_value = value

      LibGObject.g_object_set(self, "input-hints", unsafe_value, Pointer(Void).null)
      value
    end

    def input_hints : WebKit::InputHints
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-hints", pointerof(value), Pointer(Void).null)
      WebKit::InputHints.new(value)
    end

    def input_purpose=(value : WebKit::InputPurpose) : WebKit::InputPurpose
      unsafe_value = value

      LibGObject.g_object_set(self, "input-purpose", unsafe_value, Pointer(Void).null)
      value
    end

    def input_purpose : WebKit::InputPurpose
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-purpose", pointerof(value), Pointer(Void).null)
      WebKit::InputPurpose.new(value)
    end

    def filter_key_event(key_event : Gdk::Event) : Bool
      # webkit_input_method_context_filter_key_event: (Method)
      # @key_event:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_input_method_context_filter_key_event(to_unsafe, key_event)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def input_hints : WebKit::InputHints
      # webkit_input_method_context_get_input_hints: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_input_method_context_get_input_hints(to_unsafe)

      # Return value handling
      WebKit::InputHints.new(_retval)
    end

    def input_purpose : WebKit::InputPurpose
      # webkit_input_method_context_get_input_purpose: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_input_method_context_get_input_purpose(to_unsafe)

      # Return value handling
      WebKit::InputPurpose.new(_retval)
    end

    def preedit(text : ::String?, underlines : GLib::List?, cursor_offset : UInt32?) : Nil
      # webkit_input_method_context_get_preedit: (Method)
      # @text: (out) (transfer full) (nullable)
      # @underlines: (out) (transfer full) (nullable)
      # @cursor_offset: (out) (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end
      # Generator::NullableArrayPlan
      underlines = if underlines.nil?
                     Pointer(LibGLib::List).null
                   else
                     underlines.to_unsafe
                   end
      # Generator::NullableArrayPlan
      cursor_offset = if cursor_offset.nil?
                        UInt32.null
                      else
                        cursor_offset.to_unsafe
                      end

      # C call
      LibWebKit.webkit_input_method_context_get_preedit(to_unsafe, text, underlines, cursor_offset)

      # Return value handling
    end

    def notify_cursor_area(x : Int32, y : Int32, width : Int32, height : Int32) : Nil
      # webkit_input_method_context_notify_cursor_area: (Method)
      # @x:
      # @y:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_notify_cursor_area(to_unsafe, x, y, width, height)

      # Return value handling
    end

    def notify_focus_in : Nil
      # webkit_input_method_context_notify_focus_in: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_notify_focus_in(to_unsafe)

      # Return value handling
    end

    def notify_focus_out : Nil
      # webkit_input_method_context_notify_focus_out: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_notify_focus_out(to_unsafe)

      # Return value handling
    end

    def notify_surrounding(text : ::String, length : Int32, cursor_index : UInt32, selection_index : UInt32) : Nil
      # webkit_input_method_context_notify_surrounding: (Method)
      # @text:
      # @length:
      # @cursor_index:
      # @selection_index:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_notify_surrounding(to_unsafe, text, length, cursor_index, selection_index)

      # Return value handling
    end

    def reset : Nil
      # webkit_input_method_context_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_reset(to_unsafe)

      # Return value handling
    end

    def enable_preedit=(enabled : Bool) : Nil
      # webkit_input_method_context_set_enable_preedit: (Method)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_set_enable_preedit(to_unsafe, enabled)

      # Return value handling
    end

    def input_hints=(hints : WebKit::InputHints) : Nil
      # webkit_input_method_context_set_input_hints: (Method | Setter)
      # @hints:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_set_input_hints(to_unsafe, hints)

      # Return value handling
    end

    def input_purpose=(purpose : WebKit::InputPurpose) : Nil
      # webkit_input_method_context_set_input_purpose: (Method | Setter)
      # @purpose:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_context_set_input_purpose(to_unsafe, purpose)

      # Return value handling
    end

    struct CommittedSignal < GObject::Signal
      def name : String
        @detail ? "committed::#{@detail}" : "committed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_text : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          text = ::String.new(lib_text)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(text)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::InputMethodContext, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_text : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = WebKit::InputMethodContext.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          text = ::String.new(lib_text)
          ::Box(Proc(WebKit::InputMethodContext, ::String, Nil)).unbox(_lib_box).call(_sender, text)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(text : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "committed", text)
      end
    end

    def committed_signal
      CommittedSignal.new(self)
    end

    struct DeleteSurroundingSignal < GObject::Signal
      def name : String
        @detail ? "delete-surrounding::#{@detail}" : "delete-surrounding"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset : Int32, lib_n_chars : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          offset = lib_offset
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(Int32, UInt32, Nil)).unbox(_lib_box).call(offset, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::InputMethodContext, Int32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset : Int32, lib_n_chars : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::InputMethodContext.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          offset = lib_offset
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(WebKit::InputMethodContext, Int32, UInt32, Nil)).unbox(_lib_box).call(_sender, offset, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(offset : Int32, n_chars : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "delete-surrounding", offset, n_chars)
      end
    end

    def delete_surrounding_signal
      DeleteSurroundingSignal.new(self)
    end

    struct PreeditChangedSignal < GObject::Signal
      def name : String
        @detail ? "preedit-changed::#{@detail}" : "preedit-changed"
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

      def connect(handler : Proc(WebKit::InputMethodContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::InputMethodContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::InputMethodContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "preedit-changed")
      end
    end

    def preedit_changed_signal
      PreeditChangedSignal.new(self)
    end

    struct PreeditFinishedSignal < GObject::Signal
      def name : String
        @detail ? "preedit-finished::#{@detail}" : "preedit-finished"
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

      def connect(handler : Proc(WebKit::InputMethodContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::InputMethodContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::InputMethodContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "preedit-finished")
      end
    end

    def preedit_finished_signal
      PreeditFinishedSignal.new(self)
    end

    struct PreeditStartedSignal < GObject::Signal
      def name : String
        @detail ? "preedit-started::#{@detail}" : "preedit-started"
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

      def connect(handler : Proc(WebKit::InputMethodContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::InputMethodContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::InputMethodContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "preedit-started")
      end
    end

    def preedit_started_signal
      PreeditStartedSignal.new(self)
    end

    # committed: (None)
    # @text:
    # Returns: (transfer none)
    private macro _register_committed_vfunc(impl_method_name)
      private def self._vfunc_committed(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), ) : Void
        # @text: 

# Generator::BuiltInTypeArgPlan
text=::String.new(lib_text)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_committed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # committed: (None)
    # @text:
    # Returns: (transfer none)
    private macro _register_unsafe_committed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_committed(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), ) : Void
# @text: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_committed = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_committed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_committed : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # delete_surrounding: (None)
    # @offset:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_delete_surrounding_vfunc(impl_method_name)
      private def self._vfunc_delete_surrounding(%this : Pointer(Void), lib_offset :  Int32, lib_n_chars :  UInt32, ) : Void
        # @offset: 
# @n_chars: 

offset=lib_offset
n_chars=lib_n_chars


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(offset, n_chars)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_surrounding(Pointer(Void), Int32, UInt32)).pointer
        previous_def
      end
    end

    # delete_surrounding: (None)
    # @offset:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_unsafe_delete_surrounding_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_surrounding(%this : Pointer(Void), lib_offset :  Int32, lib_n_chars :  UInt32, ) : Void
# @offset: 
# @n_chars: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_offset, lib_n_chars)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_surrounding = Proc(Pointer(Void), Int32, UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_surrounding(Pointer(Void), Int32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_surrounding : Proc(Pointer(Void), Int32, UInt32, Void)? = nil
    end

    # filter_key_event: (None)
    # @key_event:
    # Returns: (transfer none)
    private macro _register_filter_key_event_vfunc(impl_method_name)
      private def self._vfunc_filter_key_event(%this : Pointer(Void), lib_key_event :  Pointer(Void), ) : LibC::Int
        # @key_event: 

# Generator::BuiltInTypeArgPlan
key_event=Gdk::Event.new(lib_key_event, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key_event)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_filter_key_event(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # filter_key_event: (None)
    # @key_event:
    # Returns: (transfer none)
    private macro _register_unsafe_filter_key_event_vfunc(impl_method_name)
      private def self._vfunc_unsafe_filter_key_event(%this : Pointer(Void), lib_key_event :  Pointer(Void), ) : LibC::Int
# @key_event: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key_event)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_filter_key_event = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_filter_key_event(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_filter_key_event : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # get_preedit: (None)
    # @text: (out) (transfer full) (nullable)
    # @underlines: (out) (transfer full) (nullable)
    # @cursor_offset: (out) (transfer full) (nullable)
    # Returns: (transfer none)
    private macro _register_get_preedit_vfunc(impl_method_name)
      private def self._vfunc_get_preedit(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_underlines :  Pointer(LibGLib::List), lib_cursor_offset :  UInt32, ) : Void
        # @text: (out) (transfer full) (nullable) 
# @underlines: (out) (transfer full) (nullable) 
# @cursor_offset: (out) (transfer full) (nullable) 

# Generator::NullableArrayPlan
text=(lib_text.null? ? nil : ::String.new(lib_text))
# Generator::BuiltInTypeArgPlan
text=GICrystal.transfer_full(lib_text) unless lib_text.null?
# Generator::NullableArrayPlan
underlines=(lib_underlines.null? ? nil : GLib::List(WebKit::InputMethodUnderline).new(lib_underlines, GICrystal::Transfer::None))
# Generator::NullableArrayPlan
cursor_offset=(lib_cursor_offset.null? ? nil : lib_cursor_offset)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, underlines, cursor_offset)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preedit(Pointer(Void), Pointer(LibC::Char), Pointer(LibGLib::List), UInt32)).pointer
        previous_def
      end
    end

    # get_preedit: (None)
    # @text: (out) (transfer full) (nullable)
    # @underlines: (out) (transfer full) (nullable)
    # @cursor_offset: (out) (transfer full) (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preedit_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preedit(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_underlines :  Pointer(LibGLib::List), lib_cursor_offset :  UInt32, ) : Void
# @text: (out) (transfer full) (nullable) 
# @underlines: (out) (transfer full) (nullable) 
# @cursor_offset: (out) (transfer full) (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_underlines, lib_cursor_offset)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preedit = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibGLib::List), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preedit(Pointer(Void), Pointer(LibC::Char), Pointer(LibGLib::List), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preedit : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibGLib::List), UInt32, Void)? = nil
    end

    # notify_cursor_area: (None)
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_notify_cursor_area_vfunc(impl_method_name)
      private def self._vfunc_notify_cursor_area(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
        # @x: 
# @y: 
# @width: 
# @height: 

x=lib_x
y=lib_y
width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(x, y, width, height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_notify_cursor_area(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # notify_cursor_area: (None)
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_notify_cursor_area_vfunc(impl_method_name)
      private def self._vfunc_unsafe_notify_cursor_area(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
# @x: 
# @y: 
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_x, lib_y, lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_notify_cursor_area = Proc(Pointer(Void), Int32, Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_notify_cursor_area(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_notify_cursor_area : Proc(Pointer(Void), Int32, Int32, Int32, Int32, Void)? = nil
    end

    # notify_focus_in: (None)
    # Returns: (transfer none)
    private macro _register_notify_focus_in_vfunc(impl_method_name)
      private def self._vfunc_notify_focus_in(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_notify_focus_in(Pointer(Void))).pointer
        previous_def
      end
    end

    # notify_focus_in: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_notify_focus_in_vfunc(impl_method_name)
      private def self._vfunc_unsafe_notify_focus_in(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_notify_focus_in = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_notify_focus_in(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_notify_focus_in : Proc(Pointer(Void), Void)? = nil
    end

    # notify_focus_out: (None)
    # Returns: (transfer none)
    private macro _register_notify_focus_out_vfunc(impl_method_name)
      private def self._vfunc_notify_focus_out(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_notify_focus_out(Pointer(Void))).pointer
        previous_def
      end
    end

    # notify_focus_out: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_notify_focus_out_vfunc(impl_method_name)
      private def self._vfunc_unsafe_notify_focus_out(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_notify_focus_out = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_notify_focus_out(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_notify_focus_out : Proc(Pointer(Void), Void)? = nil
    end

    # notify_surrounding: (None)
    # @text:
    # @length:
    # @cursor_index:
    # @selection_index:
    # Returns: (transfer none)
    private macro _register_notify_surrounding_vfunc(impl_method_name)
      private def self._vfunc_notify_surrounding(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_length :  UInt32, lib_cursor_index :  UInt32, lib_selection_index :  UInt32, ) : Void
        # @text: 
# @length: 
# @cursor_index: 
# @selection_index: 

# Generator::BuiltInTypeArgPlan
text=::String.new(lib_text)
length=lib_length
cursor_index=lib_cursor_index
selection_index=lib_selection_index


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, length, cursor_index, selection_index)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_notify_surrounding(Pointer(Void), Pointer(LibC::Char), UInt32, UInt32, UInt32)).pointer
        previous_def
      end
    end

    # notify_surrounding: (None)
    # @text:
    # @length:
    # @cursor_index:
    # @selection_index:
    # Returns: (transfer none)
    private macro _register_unsafe_notify_surrounding_vfunc(impl_method_name)
      private def self._vfunc_unsafe_notify_surrounding(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_length :  UInt32, lib_cursor_index :  UInt32, lib_selection_index :  UInt32, ) : Void
# @text: 
# @length: 
# @cursor_index: 
# @selection_index: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_length, lib_cursor_index, lib_selection_index)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_notify_surrounding = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, UInt32, UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_notify_surrounding(Pointer(Void), Pointer(LibC::Char), UInt32, UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_notify_surrounding : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, UInt32, UInt32, Void)? = nil
    end

    # preedit_changed: (None)
    # Returns: (transfer none)
    private macro _register_preedit_changed_vfunc(impl_method_name)
      private def self._vfunc_preedit_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_preedit_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # preedit_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_preedit_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_preedit_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_preedit_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_preedit_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_preedit_changed : Proc(Pointer(Void), Void)? = nil
    end

    # preedit_finished: (None)
    # Returns: (transfer none)
    private macro _register_preedit_finished_vfunc(impl_method_name)
      private def self._vfunc_preedit_finished(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_preedit_finished(Pointer(Void))).pointer
        previous_def
      end
    end

    # preedit_finished: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_preedit_finished_vfunc(impl_method_name)
      private def self._vfunc_unsafe_preedit_finished(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_preedit_finished = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_preedit_finished(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_preedit_finished : Proc(Pointer(Void), Void)? = nil
    end

    # preedit_started: (None)
    # Returns: (transfer none)
    private macro _register_preedit_started_vfunc(impl_method_name)
      private def self._vfunc_preedit_started(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_preedit_started(Pointer(Void))).pointer
        previous_def
      end
    end

    # preedit_started: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_preedit_started_vfunc(impl_method_name)
      private def self._vfunc_unsafe_preedit_started(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_preedit_started = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_preedit_started(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_preedit_started : Proc(Pointer(Void), Void)? = nil
    end

    # reset: (None)
    # Returns: (transfer none)
    private macro _register_reset_vfunc(impl_method_name)
      private def self._vfunc_reset(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_reset(Pointer(Void))).pointer
        previous_def
      end
    end

    # reset: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_reset_vfunc(impl_method_name)
      private def self._vfunc_unsafe_reset(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reset = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reset(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reset : Proc(Pointer(Void), Void)? = nil
    end

    # set_enable_preedit: (None)
    # @enabled:
    # Returns: (transfer none)
    private macro _register_set_enable_preedit_vfunc(impl_method_name)
      private def self._vfunc_set_enable_preedit(%this : Pointer(Void), lib_enabled :  LibC::Int, ) : Void
        # @enabled: 

# Generator::BuiltInTypeArgPlan
enabled=GICrystal.to_bool(lib_enabled)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(enabled)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_enable_preedit(Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # set_enable_preedit: (None)
    # @enabled:
    # Returns: (transfer none)
    private macro _register_unsafe_set_enable_preedit_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_enable_preedit(%this : Pointer(Void), lib_enabled :  LibC::Int, ) : Void
# @enabled: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_enabled)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_enable_preedit = Proc(Pointer(Void), LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_enable_preedit(Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_enable_preedit : Proc(Pointer(Void), LibC::Int, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
