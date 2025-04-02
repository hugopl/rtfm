require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class IMContext < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::IMContextClass), class_init,
        sizeof(LibGtk::IMContext), instance_init, 0)
    end

    GICrystal.declare_new_method(IMContext, g_object_get_qdata)

    # Initialize a new `IMContext`.
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

    def initialize(*, input_hints : Gtk::InputHints? = nil, input_purpose : Gtk::InputPurpose? = nil)
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
      @@g_type ||= LibGtk.gtk_im_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::IMContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def input_hints=(value : Gtk::InputHints) : Gtk::InputHints
      unsafe_value = value

      LibGObject.g_object_set(self, "input-hints", unsafe_value, Pointer(Void).null)
      value
    end

    def input_hints : Gtk::InputHints
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-hints", pointerof(value), Pointer(Void).null)
      Gtk::InputHints.new(value)
    end

    def input_purpose=(value : Gtk::InputPurpose) : Gtk::InputPurpose
      unsafe_value = value

      LibGObject.g_object_set(self, "input-purpose", unsafe_value, Pointer(Void).null)
      value
    end

    def input_purpose : Gtk::InputPurpose
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-purpose", pointerof(value), Pointer(Void).null)
      Gtk::InputPurpose.new(value)
    end

    def activate_osk(event : Gdk::Event?) : Bool
      # gtk_im_context_activate_osk: (Method)
      # @event: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      event = if event.nil?
                Pointer(Void).null
              else
                event.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_im_context_activate_osk(to_unsafe, event)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def delete_surrounding(offset : Int32, n_chars : Int32) : Bool
      # gtk_im_context_delete_surrounding: (Method)
      # @offset:
      # @n_chars:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_im_context_delete_surrounding(to_unsafe, offset, n_chars)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def filter_key(press : Bool, surface : Gdk::Surface, device : Gdk::Device, time : UInt32, keycode : UInt32, state : Gdk::ModifierType, group : Int32) : Bool
      # gtk_im_context_filter_key: (Method)
      # @press:
      # @surface:
      # @device:
      # @time:
      # @keycode:
      # @state:
      # @group:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_im_context_filter_key(to_unsafe, press, surface, device, time, keycode, state, group)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def filter_keypress(event : Gdk::Event) : Bool
      # gtk_im_context_filter_keypress: (Method)
      # @event:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_im_context_filter_keypress(to_unsafe, event)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def focus_in : Nil
      # gtk_im_context_focus_in: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_focus_in(to_unsafe)

      # Return value handling
    end

    def focus_out : Nil
      # gtk_im_context_focus_out: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_focus_out(to_unsafe)

      # Return value handling
    end

    def preedit_string(str : ::String, attrs : Pango::AttrList, cursor_pos : Int32) : Nil
      # gtk_im_context_get_preedit_string: (Method)
      # @str: (out) (transfer full)
      # @attrs: (out) (transfer full)
      # @cursor_pos: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_get_preedit_string(to_unsafe, str, attrs, cursor_pos)

      # Return value handling
    end

    @[Deprecated]
    def surrounding(text : ::String, cursor_index : Int32) : Bool
      # gtk_im_context_get_surrounding: (Method)
      # @text: (out) (transfer full)
      # @cursor_index: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_im_context_get_surrounding(to_unsafe, text, cursor_index)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def surrounding_with_selection(text : ::String, cursor_index : Int32, anchor_index : Int32) : Bool
      # gtk_im_context_get_surrounding_with_selection: (Method)
      # @text: (out) (transfer full)
      # @cursor_index: (out) (transfer full)
      # @anchor_index: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_im_context_get_surrounding_with_selection(to_unsafe, text, cursor_index, anchor_index)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reset : Nil
      # gtk_im_context_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_reset(to_unsafe)

      # Return value handling
    end

    def client_widget=(widget : Gtk::Widget?) : Nil
      # gtk_im_context_set_client_widget: (Method)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_im_context_set_client_widget(to_unsafe, widget)

      # Return value handling
    end

    def cursor_location=(area : Gdk::Rectangle) : Nil
      # gtk_im_context_set_cursor_location: (Method)
      # @area:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_set_cursor_location(to_unsafe, area)

      # Return value handling
    end

    @[Deprecated]
    def set_surrounding(text : ::String, len : Int32, cursor_index : Int32) : Nil
      # gtk_im_context_set_surrounding: (Method)
      # @text:
      # @len:
      # @cursor_index:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_set_surrounding(to_unsafe, text, len, cursor_index)

      # Return value handling
    end

    def set_surrounding_with_selection(text : ::String, len : Int32, cursor_index : Int32, anchor_index : Int32) : Nil
      # gtk_im_context_set_surrounding_with_selection: (Method)
      # @text:
      # @len:
      # @cursor_index:
      # @anchor_index:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_set_surrounding_with_selection(to_unsafe, text, len, cursor_index, anchor_index)

      # Return value handling
    end

    def use_preedit=(use_preedit : Bool) : Nil
      # gtk_im_context_set_use_preedit: (Method)
      # @use_preedit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_im_context_set_use_preedit(to_unsafe, use_preedit)

      # Return value handling
    end

    struct CommitSignal < GObject::Signal
      def name : String
        @detail ? "commit::#{@detail}" : "commit"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_str : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          str = ::String.new(lib_str)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(str)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::IMContext, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_str : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::IMContext.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          str = ::String.new(lib_str)
          ::Box(Proc(Gtk::IMContext, ::String, Nil)).unbox(_lib_box).call(_sender, str)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(str : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "commit", str)
      end
    end

    def commit_signal
      CommitSignal.new(self)
    end

    struct DeleteSurroundingSignal < GObject::Signal
      def name : String
        @detail ? "delete-surrounding::#{@detail}" : "delete-surrounding"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Int32, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Int32, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset : Int32, lib_n_chars : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          offset = lib_offset
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(Int32, Int32, Bool)).unbox(_lib_box).call(offset, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::IMContext, Int32, Int32, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset : Int32, lib_n_chars : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::IMContext.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          offset = lib_offset
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(Gtk::IMContext, Int32, Int32, Bool)).unbox(_lib_box).call(_sender, offset, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(offset : Int32, n_chars : Int32) : Nil
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

      def connect(handler : Proc(Gtk::IMContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IMContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IMContext, Nil)).unbox(_lib_box).call(_sender)
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

    struct PreeditEndSignal < GObject::Signal
      def name : String
        @detail ? "preedit-end::#{@detail}" : "preedit-end"
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

      def connect(handler : Proc(Gtk::IMContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IMContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IMContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "preedit-end")
      end
    end

    def preedit_end_signal
      PreeditEndSignal.new(self)
    end

    struct PreeditStartSignal < GObject::Signal
      def name : String
        @detail ? "preedit-start::#{@detail}" : "preedit-start"
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

      def connect(handler : Proc(Gtk::IMContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IMContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IMContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "preedit-start")
      end
    end

    def preedit_start_signal
      PreeditStartSignal.new(self)
    end

    struct RetrieveSurroundingSignal < GObject::Signal
      def name : String
        @detail ? "retrieve-surrounding::#{@detail}" : "retrieve-surrounding"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::IMContext, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IMContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IMContext, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "retrieve-surrounding")
      end
    end

    def retrieve_surrounding_signal
      RetrieveSurroundingSignal.new(self)
    end

    # activate_osk: (None)
    # Returns: (transfer none)
    private macro _register_activate_osk_vfunc(impl_method_name)
      private def self._vfunc_activate_osk(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate_osk(Pointer(Void))).pointer
        previous_def
      end
    end

    # activate_osk: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_activate_osk_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate_osk(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate_osk = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate_osk(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate_osk : Proc(Pointer(Void), Void)? = nil
    end

    # activate_osk_with_event: (None)
    # @event:
    # Returns: (transfer none)
    private macro _register_activate_osk_with_event_vfunc(impl_method_name)
      private def self._vfunc_activate_osk_with_event(%this : Pointer(Void), lib_event :  Pointer(Void), ) : LibC::Int
        # @event: 

# Generator::BuiltInTypeArgPlan
event=Gdk::Event.new(lib_event, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(event)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate_osk_with_event(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # activate_osk_with_event: (None)
    # @event:
    # Returns: (transfer none)
    private macro _register_unsafe_activate_osk_with_event_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate_osk_with_event(%this : Pointer(Void), lib_event :  Pointer(Void), ) : LibC::Int
# @event: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_event)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate_osk_with_event = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate_osk_with_event(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate_osk_with_event : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # commit: (None)
    # @str:
    # Returns: (transfer none)
    private macro _register_commit_vfunc(impl_method_name)
      private def self._vfunc_commit(%this : Pointer(Void), lib_str :  Pointer(LibC::Char), ) : Void
        # @str: 

# Generator::BuiltInTypeArgPlan
str=::String.new(lib_str)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(str)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_commit(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # commit: (None)
    # @str:
    # Returns: (transfer none)
    private macro _register_unsafe_commit_vfunc(impl_method_name)
      private def self._vfunc_unsafe_commit(%this : Pointer(Void), lib_str :  Pointer(LibC::Char), ) : Void
# @str: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_str)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_commit = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_commit(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_commit : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # delete_surrounding: (None)
    # @offset:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_delete_surrounding_vfunc(impl_method_name)
      private def self._vfunc_delete_surrounding(%this : Pointer(Void), lib_offset :  Int32, lib_n_chars :  Int32, ) : LibC::Int
        # @offset: 
# @n_chars: 

offset=lib_offset
n_chars=lib_n_chars


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(offset, n_chars)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_surrounding(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # delete_surrounding: (None)
    # @offset:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_unsafe_delete_surrounding_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_surrounding(%this : Pointer(Void), lib_offset :  Int32, lib_n_chars :  Int32, ) : LibC::Int
# @offset: 
# @n_chars: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_offset, lib_n_chars)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_surrounding = Proc(Pointer(Void), Int32, Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_surrounding(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_surrounding : Proc(Pointer(Void), Int32, Int32, LibC::Int)? = nil
    end

    # filter_keypress: (None)
    # @event:
    # Returns: (transfer none)
    private macro _register_filter_keypress_vfunc(impl_method_name)
      private def self._vfunc_filter_keypress(%this : Pointer(Void), lib_event :  Pointer(Void), ) : LibC::Int
        # @event: 

# Generator::BuiltInTypeArgPlan
event=Gdk::Event.new(lib_event, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(event)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_filter_keypress(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # filter_keypress: (None)
    # @event:
    # Returns: (transfer none)
    private macro _register_unsafe_filter_keypress_vfunc(impl_method_name)
      private def self._vfunc_unsafe_filter_keypress(%this : Pointer(Void), lib_event :  Pointer(Void), ) : LibC::Int
# @event: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_event)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_filter_keypress = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_filter_keypress(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_filter_keypress : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # focus_in: (None)
    # Returns: (transfer none)
    private macro _register_focus_in_vfunc(impl_method_name)
      private def self._vfunc_focus_in(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_focus_in(Pointer(Void))).pointer
        previous_def
      end
    end

    # focus_in: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_focus_in_vfunc(impl_method_name)
      private def self._vfunc_unsafe_focus_in(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_focus_in = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_focus_in(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_focus_in : Proc(Pointer(Void), Void)? = nil
    end

    # focus_out: (None)
    # Returns: (transfer none)
    private macro _register_focus_out_vfunc(impl_method_name)
      private def self._vfunc_focus_out(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_focus_out(Pointer(Void))).pointer
        previous_def
      end
    end

    # focus_out: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_focus_out_vfunc(impl_method_name)
      private def self._vfunc_unsafe_focus_out(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_focus_out = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_focus_out(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_focus_out : Proc(Pointer(Void), Void)? = nil
    end

    # get_preedit_string: (None)
    # @str: (out) (transfer full)
    # @attrs: (out) (transfer full)
    # @cursor_pos: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_preedit_string_vfunc(impl_method_name)
      private def self._vfunc_get_preedit_string(%this : Pointer(Void), lib_str :  Pointer(LibC::Char), lib_attrs :  Pointer(Void), lib_cursor_pos :  Int32, ) : Void
        # @str: (out) (transfer full) 
# @attrs: (out) (transfer full) 
# @cursor_pos: (out) (transfer full) 

# Generator::BuiltInTypeArgPlan
str=GICrystal.transfer_full(lib_str)
# Generator::BuiltInTypeArgPlan
attrs=Pango::AttrList.new(lib_attrs, GICrystal::Transfer::Full)
cursor_pos=lib_cursor_pos


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(str, attrs, cursor_pos)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preedit_string(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # get_preedit_string: (None)
    # @str: (out) (transfer full)
    # @attrs: (out) (transfer full)
    # @cursor_pos: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preedit_string_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preedit_string(%this : Pointer(Void), lib_str :  Pointer(LibC::Char), lib_attrs :  Pointer(Void), lib_cursor_pos :  Int32, ) : Void
# @str: (out) (transfer full) 
# @attrs: (out) (transfer full) 
# @cursor_pos: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_str, lib_attrs, lib_cursor_pos)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preedit_string = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preedit_string(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preedit_string : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Void)? = nil
    end

    # get_surrounding: (None)
    # @text: (out) (transfer full)
    # @cursor_index: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_surrounding_vfunc(impl_method_name)
      private def self._vfunc_get_surrounding(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_cursor_index :  Int32, ) : LibC::Int
        # @text: (out) (transfer full) 
# @cursor_index: (out) (transfer full) 

# Generator::BuiltInTypeArgPlan
text=GICrystal.transfer_full(lib_text)
cursor_index=lib_cursor_index


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, cursor_index)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_surrounding(Pointer(Void), Pointer(LibC::Char), Int32)).pointer
        previous_def
      end
    end

    # get_surrounding: (None)
    # @text: (out) (transfer full)
    # @cursor_index: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_surrounding_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_surrounding(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_cursor_index :  Int32, ) : LibC::Int
# @text: (out) (transfer full) 
# @cursor_index: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_cursor_index)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_surrounding = Proc(Pointer(Void), Pointer(LibC::Char), Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_surrounding(Pointer(Void), Pointer(LibC::Char), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_surrounding : Proc(Pointer(Void), Pointer(LibC::Char), Int32, LibC::Int)? = nil
    end

    # get_surrounding_with_selection: (None)
    # @text: (out) (transfer full)
    # @cursor_index: (out) (transfer full)
    # @anchor_index: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_surrounding_with_selection_vfunc(impl_method_name)
      private def self._vfunc_get_surrounding_with_selection(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_cursor_index :  Int32, lib_anchor_index :  Int32, ) : LibC::Int
        # @text: (out) (transfer full) 
# @cursor_index: (out) (transfer full) 
# @anchor_index: (out) (transfer full) 

# Generator::BuiltInTypeArgPlan
text=GICrystal.transfer_full(lib_text)
cursor_index=lib_cursor_index
anchor_index=lib_anchor_index


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, cursor_index, anchor_index)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_surrounding_with_selection(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end
    end

    # get_surrounding_with_selection: (None)
    # @text: (out) (transfer full)
    # @cursor_index: (out) (transfer full)
    # @anchor_index: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_surrounding_with_selection_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_surrounding_with_selection(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_cursor_index :  Int32, lib_anchor_index :  Int32, ) : LibC::Int
# @text: (out) (transfer full) 
# @cursor_index: (out) (transfer full) 
# @anchor_index: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_cursor_index, lib_anchor_index)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_surrounding_with_selection = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_surrounding_with_selection(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_surrounding_with_selection : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, LibC::Int)? = nil
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_preedit_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_preedit_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_preedit_changed : Proc(Pointer(Void), Void)? = nil
    end

    # preedit_end: (None)
    # Returns: (transfer none)
    private macro _register_preedit_end_vfunc(impl_method_name)
      private def self._vfunc_preedit_end(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_preedit_end(Pointer(Void))).pointer
        previous_def
      end
    end

    # preedit_end: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_preedit_end_vfunc(impl_method_name)
      private def self._vfunc_unsafe_preedit_end(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_preedit_end = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_preedit_end(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_preedit_end : Proc(Pointer(Void), Void)? = nil
    end

    # preedit_start: (None)
    # Returns: (transfer none)
    private macro _register_preedit_start_vfunc(impl_method_name)
      private def self._vfunc_preedit_start(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_preedit_start(Pointer(Void))).pointer
        previous_def
      end
    end

    # preedit_start: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_preedit_start_vfunc(impl_method_name)
      private def self._vfunc_unsafe_preedit_start(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_preedit_start = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_preedit_start(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_preedit_start : Proc(Pointer(Void), Void)? = nil
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reset = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reset(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reset : Proc(Pointer(Void), Void)? = nil
    end

    # retrieve_surrounding: (None)
    # Returns: (transfer none)
    private macro _register_retrieve_surrounding_vfunc(impl_method_name)
      private def self._vfunc_retrieve_surrounding(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_retrieve_surrounding(Pointer(Void))).pointer
        previous_def
      end
    end

    # retrieve_surrounding: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_retrieve_surrounding_vfunc(impl_method_name)
      private def self._vfunc_unsafe_retrieve_surrounding(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_retrieve_surrounding = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_retrieve_surrounding(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_retrieve_surrounding : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # set_client_widget: (None)
    # @widget: (nullable)
    # Returns: (transfer none)
    private macro _register_set_client_widget_vfunc(impl_method_name)
      private def self._vfunc_set_client_widget(%this : Pointer(Void), lib_widget :  Pointer(Void), ) : Void
        # @widget: (nullable) 

# Generator::NullableArrayPlan
widget=(lib_widget.null? ? nil : Gtk::Widget.new(lib_widget, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None) unless lib_widget.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_client_widget(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_client_widget: (None)
    # @widget: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_client_widget_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_client_widget(%this : Pointer(Void), lib_widget :  Pointer(Void), ) : Void
# @widget: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_client_widget = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_client_widget(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_client_widget : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # set_cursor_location: (None)
    # @area:
    # Returns: (transfer none)
    private macro _register_set_cursor_location_vfunc(impl_method_name)
      private def self._vfunc_set_cursor_location(%this : Pointer(Void), lib_area :  Pointer(Void), ) : Void
        # @area: 

# Generator::BuiltInTypeArgPlan
area=Gdk::Rectangle.new(lib_area, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(area)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_cursor_location(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_cursor_location: (None)
    # @area:
    # Returns: (transfer none)
    private macro _register_unsafe_set_cursor_location_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_cursor_location(%this : Pointer(Void), lib_area :  Pointer(Void), ) : Void
# @area: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_area)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_cursor_location = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_cursor_location(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_cursor_location : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # set_surrounding: (None)
    # @text:
    # @len:
    # @cursor_index:
    # Returns: (transfer none)
    private macro _register_set_surrounding_vfunc(impl_method_name)
      private def self._vfunc_set_surrounding(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_len :  Int32, lib_cursor_index :  Int32, ) : Void
        # @text: 
# @len: 
# @cursor_index: 

# Generator::BuiltInTypeArgPlan
text=::String.new(lib_text)
len=lib_len
cursor_index=lib_cursor_index


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, len, cursor_index)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_surrounding(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end
    end

    # set_surrounding: (None)
    # @text:
    # @len:
    # @cursor_index:
    # Returns: (transfer none)
    private macro _register_unsafe_set_surrounding_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_surrounding(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_len :  Int32, lib_cursor_index :  Int32, ) : Void
# @text: 
# @len: 
# @cursor_index: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_len, lib_cursor_index)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_surrounding = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_surrounding(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_surrounding : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Void)? = nil
    end

    # set_surrounding_with_selection: (None)
    # @text:
    # @len:
    # @cursor_index:
    # @anchor_index:
    # Returns: (transfer none)
    private macro _register_set_surrounding_with_selection_vfunc(impl_method_name)
      private def self._vfunc_set_surrounding_with_selection(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_len :  Int32, lib_cursor_index :  Int32, lib_anchor_index :  Int32, ) : Void
        # @text: 
# @len: 
# @cursor_index: 
# @anchor_index: 

# Generator::BuiltInTypeArgPlan
text=::String.new(lib_text)
len=lib_len
cursor_index=lib_cursor_index
anchor_index=lib_anchor_index


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, len, cursor_index, anchor_index)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_surrounding_with_selection(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # set_surrounding_with_selection: (None)
    # @text:
    # @len:
    # @cursor_index:
    # @anchor_index:
    # Returns: (transfer none)
    private macro _register_unsafe_set_surrounding_with_selection_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_surrounding_with_selection(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_len :  Int32, lib_cursor_index :  Int32, lib_anchor_index :  Int32, ) : Void
# @text: 
# @len: 
# @cursor_index: 
# @anchor_index: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_len, lib_cursor_index, lib_anchor_index)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_surrounding_with_selection = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_surrounding_with_selection(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_surrounding_with_selection : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Int32, Void)? = nil
    end

    # set_use_preedit: (None)
    # @use_preedit:
    # Returns: (transfer none)
    private macro _register_set_use_preedit_vfunc(impl_method_name)
      private def self._vfunc_set_use_preedit(%this : Pointer(Void), lib_use_preedit :  LibC::Int, ) : Void
        # @use_preedit: 

# Generator::BuiltInTypeArgPlan
use_preedit=GICrystal.to_bool(lib_use_preedit)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(use_preedit)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_use_preedit(Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # set_use_preedit: (None)
    # @use_preedit:
    # Returns: (transfer none)
    private macro _register_unsafe_set_use_preedit_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_use_preedit(%this : Pointer(Void), lib_use_preedit :  LibC::Int, ) : Void
# @use_preedit: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_use_preedit)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_use_preedit = Proc(Pointer(Void), LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_use_preedit(Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_use_preedit : Proc(Pointer(Void), LibC::Int, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
