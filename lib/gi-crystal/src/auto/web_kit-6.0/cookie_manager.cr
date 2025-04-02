require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class CookieManager < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(CookieManager, g_object_get_qdata)

    # Initialize a new `CookieManager`.
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
      @@g_type ||= LibWebKit.webkit_cookie_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::CookieManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def add_cookie(cookie : Soup::Cookie, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_cookie_manager_add_cookie: (Method)
      # @cookie:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibWebKit.webkit_cookie_manager_add_cookie(to_unsafe, cookie, cancellable, callback, user_data)

      # Return value handling
    end

    def add_cookie_finish(result : Gio::AsyncResult) : Bool
      # webkit_cookie_manager_add_cookie_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_cookie_manager_add_cookie_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def delete_cookie(cookie : Soup::Cookie, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_cookie_manager_delete_cookie: (Method)
      # @cookie:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibWebKit.webkit_cookie_manager_delete_cookie(to_unsafe, cookie, cancellable, callback, user_data)

      # Return value handling
    end

    def delete_cookie_finish(result : Gio::AsyncResult) : Bool
      # webkit_cookie_manager_delete_cookie_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_cookie_manager_delete_cookie_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def accept_policy(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_cookie_manager_get_accept_policy: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibWebKit.webkit_cookie_manager_get_accept_policy(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def accept_policy_finish(result : Gio::AsyncResult) : WebKit::CookieAcceptPolicy
      # webkit_cookie_manager_get_accept_policy_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_cookie_manager_get_accept_policy_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::CookieAcceptPolicy.new(_retval)
    end

    def all_cookies(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_cookie_manager_get_all_cookies: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibWebKit.webkit_cookie_manager_get_all_cookies(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def all_cookies_finish(result : Gio::AsyncResult) : GLib::List
      # webkit_cookie_manager_get_all_cookies_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_cookie_manager_get_all_cookies_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Soup::Cookie).new(_retval, GICrystal::Transfer::Full)
    end

    def cookies(uri : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_cookie_manager_get_cookies: (Method)
      # @uri:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibWebKit.webkit_cookie_manager_get_cookies(to_unsafe, uri, cancellable, callback, user_data)

      # Return value handling
    end

    def cookies_finish(result : Gio::AsyncResult) : GLib::List
      # webkit_cookie_manager_get_cookies_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_cookie_manager_get_cookies_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Soup::Cookie).new(_retval, GICrystal::Transfer::Full)
    end

    def replace_cookies(cookies : GLib::List, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_cookie_manager_replace_cookies: (Method)
      # @cookies:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibWebKit.webkit_cookie_manager_replace_cookies(to_unsafe, cookies, cancellable, callback, user_data)

      # Return value handling
    end

    def replace_cookies_finish(result : Gio::AsyncResult) : Bool
      # webkit_cookie_manager_replace_cookies_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_cookie_manager_replace_cookies_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def accept_policy=(policy : WebKit::CookieAcceptPolicy) : Nil
      # webkit_cookie_manager_set_accept_policy: (Method)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_cookie_manager_set_accept_policy(to_unsafe, policy)

      # Return value handling
    end

    def set_persistent_storage(filename : ::String, storage : WebKit::CookiePersistentStorage) : Nil
      # webkit_cookie_manager_set_persistent_storage: (Method)
      # @filename:
      # @storage:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_cookie_manager_set_persistent_storage(to_unsafe, filename, storage)

      # Return value handling
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
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

      def connect(handler : Proc(WebKit::CookieManager, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::CookieManager.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::CookieManager, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
