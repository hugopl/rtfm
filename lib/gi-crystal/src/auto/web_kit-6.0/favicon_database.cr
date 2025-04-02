require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class FaviconDatabase < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(FaviconDatabase, g_object_get_qdata)

    # Initialize a new `FaviconDatabase`.
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
      @@g_type ||= LibWebKit.webkit_favicon_database_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::FaviconDatabase.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def clear : Nil
      # webkit_favicon_database_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_favicon_database_clear(to_unsafe)

      # Return value handling
    end

    def favicon(page_uri : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_favicon_database_get_favicon: (Method)
      # @page_uri:
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
      LibWebKit.webkit_favicon_database_get_favicon(to_unsafe, page_uri, cancellable, callback, user_data)

      # Return value handling
    end

    def favicon_finish(result : Gio::AsyncResult) : Gdk::Texture
      # webkit_favicon_database_get_favicon_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_favicon_database_get_favicon_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def favicon_uri(page_uri : ::String) : ::String
      # webkit_favicon_database_get_favicon_uri: (Method)
      # @page_uri:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_favicon_database_get_favicon_uri(to_unsafe, page_uri)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    struct FaviconChangedSignal < GObject::Signal
      def name : String
        @detail ? "favicon-changed::#{@detail}" : "favicon-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, ::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page_uri : Pointer(LibC::Char), lib_favicon_uri : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page_uri = ::String.new(lib_page_uri)
          # Generator::BuiltInTypeArgPlan
          favicon_uri = ::String.new(lib_favicon_uri)
          ::Box(Proc(::String, ::String, Nil)).unbox(_lib_box).call(page_uri, favicon_uri)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::FaviconDatabase, ::String, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page_uri : Pointer(LibC::Char), lib_favicon_uri : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = WebKit::FaviconDatabase.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page_uri = ::String.new(lib_page_uri)
          # Generator::BuiltInTypeArgPlan
          favicon_uri = ::String.new(lib_favicon_uri)
          ::Box(Proc(WebKit::FaviconDatabase, ::String, ::String, Nil)).unbox(_lib_box).call(_sender, page_uri, favicon_uri)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page_uri : ::String, favicon_uri : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "favicon-changed", page_uri, favicon_uri)
      end
    end

    def favicon_changed_signal
      FaviconChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
