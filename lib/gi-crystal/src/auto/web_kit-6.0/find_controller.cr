require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class FindController < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(FindController, g_object_get_qdata)

    # Initialize a new `FindController`.
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

    def initialize(*, max_match_count : UInt32? = nil, options : WebKit::FindOptions? = nil, text : ::String? = nil, web_view : WebKit::WebView? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !max_match_count.nil?
        (_names.to_unsafe + _n).value = "max-match-count".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_match_count)
        _n += 1
      end
      if !options.nil?
        (_names.to_unsafe + _n).value = "options".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, options)
        _n += 1
      end
      if !text.nil?
        (_names.to_unsafe + _n).value = "text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text)
        _n += 1
      end
      if !web_view.nil?
        (_names.to_unsafe + _n).value = "web-view".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, web_view)
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
      @@g_type ||= LibWebKit.webkit_find_controller_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::FindController.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def max_match_count : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "max-match-count", pointerof(value), Pointer(Void).null)
      value
    end

    def options : WebKit::FindOptions
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "options", pointerof(value), Pointer(Void).null)
      WebKit::FindOptions.new(value)
    end

    def text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#text`, but can return nil.
    def text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def web_view=(value : WebKit::WebView?) : WebKit::WebView?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "web-view", unsafe_value, Pointer(Void).null)
      value
    end

    def web_view : WebKit::WebView?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "web-view", pointerof(value), Pointer(Void).null)
      WebKit::WebView.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def count_matches(search_text : ::String, find_options : UInt32, max_match_count : UInt32) : Nil
      # webkit_find_controller_count_matches: (Method)
      # @search_text:
      # @find_options:
      # @max_match_count:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_find_controller_count_matches(to_unsafe, search_text, find_options, max_match_count)

      # Return value handling
    end

    def max_match_count : UInt32
      # webkit_find_controller_get_max_match_count: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_find_controller_get_max_match_count(to_unsafe)

      # Return value handling
      _retval
    end

    def options : UInt32
      # webkit_find_controller_get_options: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_find_controller_get_options(to_unsafe)

      # Return value handling
      _retval
    end

    def search_text : ::String
      # webkit_find_controller_get_search_text: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_find_controller_get_search_text(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def web_view : WebKit::WebView
      # webkit_find_controller_get_web_view: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_find_controller_get_web_view(to_unsafe)

      # Return value handling
      WebKit::WebView.new(_retval, GICrystal::Transfer::None)
    end

    def search(search_text : ::String, find_options : UInt32, max_match_count : UInt32) : Nil
      # webkit_find_controller_search: (Method)
      # @search_text:
      # @find_options:
      # @max_match_count:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_find_controller_search(to_unsafe, search_text, find_options, max_match_count)

      # Return value handling
    end

    def search_finish : Nil
      # webkit_find_controller_search_finish: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_find_controller_search_finish(to_unsafe)

      # Return value handling
    end

    def search_next : Nil
      # webkit_find_controller_search_next: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_find_controller_search_next(to_unsafe)

      # Return value handling
    end

    def search_previous : Nil
      # webkit_find_controller_search_previous: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_find_controller_search_previous(to_unsafe)

      # Return value handling
    end

    struct CountedMatchesSignal < GObject::Signal
      def name : String
        @detail ? "counted-matches::#{@detail}" : "counted-matches"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_match_count : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          match_count = lib_match_count
          ::Box(Proc(UInt32, Nil)).unbox(_lib_box).call(match_count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::FindController, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_match_count : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::FindController.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          match_count = lib_match_count
          ::Box(Proc(WebKit::FindController, UInt32, Nil)).unbox(_lib_box).call(_sender, match_count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(match_count : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "counted-matches", match_count)
      end
    end

    def counted_matches_signal
      CountedMatchesSignal.new(self)
    end

    struct FailedToFindTextSignal < GObject::Signal
      def name : String
        @detail ? "failed-to-find-text::#{@detail}" : "failed-to-find-text"
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

      def connect(handler : Proc(WebKit::FindController, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::FindController.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::FindController, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "failed-to-find-text")
      end
    end

    def failed_to_find_text_signal
      FailedToFindTextSignal.new(self)
    end

    struct FoundTextSignal < GObject::Signal
      def name : String
        @detail ? "found-text::#{@detail}" : "found-text"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_match_count : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          match_count = lib_match_count
          ::Box(Proc(UInt32, Nil)).unbox(_lib_box).call(match_count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::FindController, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_match_count : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::FindController.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          match_count = lib_match_count
          ::Box(Proc(WebKit::FindController, UInt32, Nil)).unbox(_lib_box).call(_sender, match_count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(match_count : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "found-text", match_count)
      end
    end

    def found_text_signal
      FoundTextSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
