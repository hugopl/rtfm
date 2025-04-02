require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class ContextMenu < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ContextMenu, g_object_get_qdata)

    # Initialize a new `ContextMenu`.
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
      @@g_type ||= LibWebKit.webkit_context_menu_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::ContextMenu.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # webkit_context_menu_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_context_menu_new

      # Return value handling
      WebKit::ContextMenu.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_items(items : GLib::List) : self
      # webkit_context_menu_new_with_items: (Constructor)
      # @items:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_context_menu_new_with_items(items)

      # Return value handling
      WebKit::ContextMenu.new(_retval, GICrystal::Transfer::Full)
    end

    def append(item : WebKit::ContextMenuItem) : Nil
      # webkit_context_menu_append: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_context_menu_append(to_unsafe, item)

      # Return value handling
    end

    def first : WebKit::ContextMenuItem
      # webkit_context_menu_first: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_first(to_unsafe)

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::None)
    end

    def event : Gdk::Event
      # webkit_context_menu_get_event: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_get_event(to_unsafe)

      # Return value handling
      Gdk::Event.new(_retval, GICrystal::Transfer::None)
    end

    def item_at_position(position : UInt32) : WebKit::ContextMenuItem
      # webkit_context_menu_get_item_at_position: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_get_item_at_position(to_unsafe, position)

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::None)
    end

    def items : GLib::List
      # webkit_context_menu_get_items: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_get_items(to_unsafe)

      # Return value handling
      GLib::List(WebKit::ContextMenuItem).new(_retval, GICrystal::Transfer::None)
    end

    def n_items : UInt32
      # webkit_context_menu_get_n_items: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_get_n_items(to_unsafe)

      # Return value handling
      _retval
    end

    def user_data : GLib::Variant
      # webkit_context_menu_get_user_data: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_get_user_data(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None)
    end

    def insert(item : WebKit::ContextMenuItem, position : Int32) : Nil
      # webkit_context_menu_insert: (Method)
      # @item:
      # @position:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_context_menu_insert(to_unsafe, item, position)

      # Return value handling
    end

    def last : WebKit::ContextMenuItem
      # webkit_context_menu_last: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_last(to_unsafe)

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::None)
    end

    def move_item(item : WebKit::ContextMenuItem, position : Int32) : Nil
      # webkit_context_menu_move_item: (Method)
      # @item:
      # @position:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_context_menu_move_item(to_unsafe, item, position)

      # Return value handling
    end

    def prepend(item : WebKit::ContextMenuItem) : Nil
      # webkit_context_menu_prepend: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_context_menu_prepend(to_unsafe, item)

      # Return value handling
    end

    def remove(item : WebKit::ContextMenuItem) : Nil
      # webkit_context_menu_remove: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_context_menu_remove(to_unsafe, item)

      # Return value handling
    end

    def remove_all : Nil
      # webkit_context_menu_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_context_menu_remove_all(to_unsafe)

      # Return value handling
    end

    def user_data=(user_data : _) : Nil
      # webkit_context_menu_set_user_data: (Method)
      # @user_data:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      user_data = if !user_data.is_a?(GLib::Variant)
                    GLib::Variant.new(user_data).to_unsafe
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibWebKit.webkit_context_menu_set_user_data(to_unsafe, user_data)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
