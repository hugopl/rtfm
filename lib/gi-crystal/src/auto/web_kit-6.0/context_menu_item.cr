require "../g_object-2.0/initially_unowned"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class ContextMenuItem < GObject::InitiallyUnowned
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ContextMenuItem, g_object_get_qdata)

    # Initialize a new `ContextMenuItem`.
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
      @@g_type ||= LibWebKit.webkit_context_menu_item_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::ContextMenuItem.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new_from_gaction(action : Gio::Action, label : ::String, target : _?) : self
      # webkit_context_menu_item_new_from_gaction: (Constructor)
      # @action:
      # @label:
      # @target: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      target = if target.nil?
                 Pointer(Void).null
               elsif !target.is_a?(GLib::Variant)
                 GLib::Variant.new(target).to_unsafe
               else
                 target.to_unsafe
               end

      # C call
      _retval = LibWebKit.webkit_context_menu_item_new_from_gaction(action, label, target)

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_stock_action(action : WebKit::ContextMenuAction) : self
      # webkit_context_menu_item_new_from_stock_action: (Constructor)
      # @action:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_new_from_stock_action(action)

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_stock_action_with_label(action : WebKit::ContextMenuAction, label : ::String) : self
      # webkit_context_menu_item_new_from_stock_action_with_label: (Constructor)
      # @action:
      # @label:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_new_from_stock_action_with_label(action, label)

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_separator : self
      # webkit_context_menu_item_new_separator: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_new_separator

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_submenu(label : ::String, submenu : WebKit::ContextMenu) : self
      # webkit_context_menu_item_new_with_submenu: (Constructor)
      # @label:
      # @submenu:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_new_with_submenu(label, submenu)

      # Return value handling
      WebKit::ContextMenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def gaction : Gio::Action
      # webkit_context_menu_item_get_gaction: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_get_gaction(to_unsafe)

      # Return value handling
      Gio::AbstractAction.new(_retval, GICrystal::Transfer::None)
    end

    def stock_action : WebKit::ContextMenuAction
      # webkit_context_menu_item_get_stock_action: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_get_stock_action(to_unsafe)

      # Return value handling
      WebKit::ContextMenuAction.new(_retval)
    end

    def submenu : WebKit::ContextMenu
      # webkit_context_menu_item_get_submenu: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_get_submenu(to_unsafe)

      # Return value handling
      WebKit::ContextMenu.new(_retval, GICrystal::Transfer::None)
    end

    def is_separator : Bool
      # webkit_context_menu_item_is_separator: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_context_menu_item_is_separator(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def submenu=(submenu : WebKit::ContextMenu?) : Nil
      # webkit_context_menu_item_set_submenu: (Method)
      # @submenu: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      submenu = if submenu.nil?
                  Pointer(Void).null
                else
                  submenu.to_unsafe
                end

      # C call
      LibWebKit.webkit_context_menu_item_set_submenu(to_unsafe, submenu)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
