require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class BackForwardList < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(BackForwardList, g_object_get_qdata)

    # Initialize a new `BackForwardList`.
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
      @@g_type ||= LibWebKit.webkit_back_forward_list_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::BackForwardList.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def back_item : WebKit::BackForwardListItem?
      # webkit_back_forward_list_get_back_item: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_back_item(to_unsafe)

      # Return value handling
      WebKit::BackForwardListItem.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def back_list : GLib::List
      # webkit_back_forward_list_get_back_list: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_back_list(to_unsafe)

      # Return value handling
      GLib::List(WebKit::BackForwardListItem).new(_retval, GICrystal::Transfer::Container)
    end

    def back_list_with_limit(limit : UInt32) : GLib::List
      # webkit_back_forward_list_get_back_list_with_limit: (Method)
      # @limit:
      # Returns: (transfer container)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_back_list_with_limit(to_unsafe, limit)

      # Return value handling
      GLib::List(WebKit::BackForwardListItem).new(_retval, GICrystal::Transfer::Container)
    end

    def current_item : WebKit::BackForwardListItem?
      # webkit_back_forward_list_get_current_item: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_current_item(to_unsafe)

      # Return value handling
      WebKit::BackForwardListItem.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def forward_item : WebKit::BackForwardListItem?
      # webkit_back_forward_list_get_forward_item: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_forward_item(to_unsafe)

      # Return value handling
      WebKit::BackForwardListItem.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def forward_list : GLib::List
      # webkit_back_forward_list_get_forward_list: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_forward_list(to_unsafe)

      # Return value handling
      GLib::List(WebKit::BackForwardListItem).new(_retval, GICrystal::Transfer::Container)
    end

    def forward_list_with_limit(limit : UInt32) : GLib::List
      # webkit_back_forward_list_get_forward_list_with_limit: (Method)
      # @limit:
      # Returns: (transfer container)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_forward_list_with_limit(to_unsafe, limit)

      # Return value handling
      GLib::List(WebKit::BackForwardListItem).new(_retval, GICrystal::Transfer::Container)
    end

    def length : UInt32
      # webkit_back_forward_list_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def nth_item(index : Int32) : WebKit::BackForwardListItem?
      # webkit_back_forward_list_get_nth_item: (Method)
      # @index:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_back_forward_list_get_nth_item(to_unsafe, index)

      # Return value handling
      WebKit::BackForwardListItem.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::BackForwardListItem?, Pointer(Void)?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::BackForwardListItem?, Pointer(Void)?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_item_added : Pointer(Void), lib_items_removed : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          item_added = (lib_item_added.null? ? nil : WebKit::BackForwardListItem.new(lib_item_added, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          item_added = WebKit::BackForwardListItem.new(lib_item_added, GICrystal::Transfer::None) unless lib_item_added.null?
          # Generator::NullableArrayPlan
          items_removed = (lib_items_removed.null? ? nil : lib_items_removed)
          ::Box(Proc(WebKit::BackForwardListItem?, Pointer(Void)?, Nil)).unbox(_lib_box).call(item_added, items_removed)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::BackForwardList, WebKit::BackForwardListItem?, Pointer(Void)?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_item_added : Pointer(Void), lib_items_removed : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::BackForwardList.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          item_added = (lib_item_added.null? ? nil : WebKit::BackForwardListItem.new(lib_item_added, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          item_added = WebKit::BackForwardListItem.new(lib_item_added, GICrystal::Transfer::None) unless lib_item_added.null?
          # Generator::NullableArrayPlan
          items_removed = (lib_items_removed.null? ? nil : lib_items_removed)
          ::Box(Proc(WebKit::BackForwardList, WebKit::BackForwardListItem?, Pointer(Void)?, Nil)).unbox(_lib_box).call(_sender, item_added, items_removed)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(item_added : WebKit::BackForwardListItem?, items_removed : Pointer(Void)?) : Nil
        # Generator::NullableArrayPlan
        item_added = if item_added.nil?
                       Void.null
                     else
                       item_added.to_unsafe
                     end
        # Generator::NullableArrayPlan
        items_removed = if items_removed.nil?
                          Pointer(Void).null
                        else
                          items_removed.to_unsafe
                        end

        LibGObject.g_signal_emit_by_name(@source, "changed", item_added, items_removed)
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
