require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class UserContentManager < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(UserContentManager, g_object_get_qdata)

    # Initialize a new `UserContentManager`.
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
      @@g_type ||= LibWebKit.webkit_user_content_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::UserContentManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # webkit_user_content_manager_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_user_content_manager_new

      # Return value handling
      WebKit::UserContentManager.new(_retval, GICrystal::Transfer::Full)
    end

    def add_filter(filter : WebKit::UserContentFilter) : Nil
      # webkit_user_content_manager_add_filter: (Method)
      # @filter:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_add_filter(to_unsafe, filter)

      # Return value handling
    end

    def add_script(script : WebKit::UserScript) : Nil
      # webkit_user_content_manager_add_script: (Method)
      # @script:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_add_script(to_unsafe, script)

      # Return value handling
    end

    def add_style_sheet(stylesheet : WebKit::UserStyleSheet) : Nil
      # webkit_user_content_manager_add_style_sheet: (Method)
      # @stylesheet:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_add_style_sheet(to_unsafe, stylesheet)

      # Return value handling
    end

    def register_script_message_handler(name : ::String, world_name : ::String?) : Bool
      # webkit_user_content_manager_register_script_message_handler: (Method)
      # @name:
      # @world_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      world_name = if world_name.nil?
                     Pointer(LibC::Char).null
                   else
                     world_name.to_unsafe
                   end

      # C call
      _retval = LibWebKit.webkit_user_content_manager_register_script_message_handler(to_unsafe, name, world_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def register_script_message_handler_with_reply(name : ::String, world_name : ::String?) : Bool
      # webkit_user_content_manager_register_script_message_handler_with_reply: (Method)
      # @name:
      # @world_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      world_name = if world_name.nil?
                     Pointer(LibC::Char).null
                   else
                     world_name.to_unsafe
                   end

      # C call
      _retval = LibWebKit.webkit_user_content_manager_register_script_message_handler_with_reply(to_unsafe, name, world_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove_all_filters : Nil
      # webkit_user_content_manager_remove_all_filters: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_remove_all_filters(to_unsafe)

      # Return value handling
    end

    def remove_all_scripts : Nil
      # webkit_user_content_manager_remove_all_scripts: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_remove_all_scripts(to_unsafe)

      # Return value handling
    end

    def remove_all_style_sheets : Nil
      # webkit_user_content_manager_remove_all_style_sheets: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_remove_all_style_sheets(to_unsafe)

      # Return value handling
    end

    def remove_filter(filter : WebKit::UserContentFilter) : Nil
      # webkit_user_content_manager_remove_filter: (Method)
      # @filter:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_remove_filter(to_unsafe, filter)

      # Return value handling
    end

    def remove_filter_by_id(filter_id : ::String) : Nil
      # webkit_user_content_manager_remove_filter_by_id: (Method)
      # @filter_id:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_remove_filter_by_id(to_unsafe, filter_id)

      # Return value handling
    end

    def remove_script(script : WebKit::UserScript) : Nil
      # webkit_user_content_manager_remove_script: (Method)
      # @script:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_remove_script(to_unsafe, script)

      # Return value handling
    end

    def remove_style_sheet(stylesheet : WebKit::UserStyleSheet) : Nil
      # webkit_user_content_manager_remove_style_sheet: (Method)
      # @stylesheet:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_manager_remove_style_sheet(to_unsafe, stylesheet)

      # Return value handling
    end

    def unregister_script_message_handler(name : ::String, world_name : ::String?) : Nil
      # webkit_user_content_manager_unregister_script_message_handler: (Method)
      # @name:
      # @world_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      world_name = if world_name.nil?
                     Pointer(LibC::Char).null
                   else
                     world_name.to_unsafe
                   end

      # C call
      LibWebKit.webkit_user_content_manager_unregister_script_message_handler(to_unsafe, name, world_name)

      # Return value handling
    end

    struct ScriptMessageReceivedSignal < GObject::Signal
      def name : String
        @detail ? "script-message-received::#{@detail}" : "script-message-received"
      end

      def connect(*, after : Bool = false, &block : Proc(JavaScriptCore::Value, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(JavaScriptCore::Value, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          value = JavaScriptCore::Value.new(lib_value, GICrystal::Transfer::None)
          ::Box(Proc(JavaScriptCore::Value, Nil)).unbox(_lib_box).call(value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::UserContentManager, JavaScriptCore::Value, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::UserContentManager.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          value = JavaScriptCore::Value.new(lib_value, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::UserContentManager, JavaScriptCore::Value, Nil)).unbox(_lib_box).call(_sender, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(value : JavaScriptCore::Value) : Nil
        LibGObject.g_signal_emit_by_name(@source, "script-message-received", value)
      end
    end

    def script_message_received_signal
      ScriptMessageReceivedSignal.new(self)
    end

    struct ScriptMessageWithReplyReceivedSignal < GObject::Signal
      def name : String
        @detail ? "script-message-with-reply-received::#{@detail}" : "script-message-with-reply-received"
      end

      def connect(*, after : Bool = false, &block : Proc(JavaScriptCore::Value, WebKit::ScriptMessageReply, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(JavaScriptCore::Value, WebKit::ScriptMessageReply, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), lib_reply : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          value = JavaScriptCore::Value.new(lib_value, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          reply = WebKit::ScriptMessageReply.new(lib_reply, GICrystal::Transfer::None)
          ::Box(Proc(JavaScriptCore::Value, WebKit::ScriptMessageReply, Bool)).unbox(_lib_box).call(value, reply)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::UserContentManager, JavaScriptCore::Value, WebKit::ScriptMessageReply, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), lib_reply : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::UserContentManager.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          value = JavaScriptCore::Value.new(lib_value, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          reply = WebKit::ScriptMessageReply.new(lib_reply, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::UserContentManager, JavaScriptCore::Value, WebKit::ScriptMessageReply, Bool)).unbox(_lib_box).call(_sender, value, reply)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(value : JavaScriptCore::Value, reply : WebKit::ScriptMessageReply) : Nil
        LibGObject.g_signal_emit_by_name(@source, "script-message-with-reply-received", value, reply)
      end
    end

    def script_message_with_reply_received_signal
      ScriptMessageWithReplyReceivedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
