require "./menu_model"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Menu < MenuModel
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Menu, g_object_get_qdata)

    # Initialize a new `Menu`.
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
      @@g_type ||= LibGio.g_menu_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Menu.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_menu_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_menu_new

      # Return value handling
      Gio::Menu.new(_retval, GICrystal::Transfer::Full)
    end

    def append(label : ::String?, detailed_action : ::String?) : Nil
      # g_menu_append: (Method)
      # @label: (nullable)
      # @detailed_action: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end
      # Generator::NullableArrayPlan
      detailed_action = if detailed_action.nil?
                          Pointer(LibC::Char).null
                        else
                          detailed_action.to_unsafe
                        end

      # C call
      LibGio.g_menu_append(to_unsafe, label, detailed_action)

      # Return value handling
    end

    def append_item(item : Gio::MenuItem) : Nil
      # g_menu_append_item: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_append_item(to_unsafe, item)

      # Return value handling
    end

    def append_section(label : ::String?, section : Gio::MenuModel) : Nil
      # g_menu_append_section: (Method)
      # @label: (nullable)
      # @section:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGio.g_menu_append_section(to_unsafe, label, section)

      # Return value handling
    end

    def append_submenu(label : ::String?, submenu : Gio::MenuModel) : Nil
      # g_menu_append_submenu: (Method)
      # @label: (nullable)
      # @submenu:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGio.g_menu_append_submenu(to_unsafe, label, submenu)

      # Return value handling
    end

    def freeze : Nil
      # g_menu_freeze: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_freeze(to_unsafe)

      # Return value handling
    end

    def insert(position : Int32, label : ::String?, detailed_action : ::String?) : Nil
      # g_menu_insert: (Method)
      # @position:
      # @label: (nullable)
      # @detailed_action: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end
      # Generator::NullableArrayPlan
      detailed_action = if detailed_action.nil?
                          Pointer(LibC::Char).null
                        else
                          detailed_action.to_unsafe
                        end

      # C call
      LibGio.g_menu_insert(to_unsafe, position, label, detailed_action)

      # Return value handling
    end

    def insert_item(position : Int32, item : Gio::MenuItem) : Nil
      # g_menu_insert_item: (Method)
      # @position:
      # @item:
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_insert_item(to_unsafe, position, item)

      # Return value handling
    end

    def insert_section(position : Int32, label : ::String?, section : Gio::MenuModel) : Nil
      # g_menu_insert_section: (Method)
      # @position:
      # @label: (nullable)
      # @section:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGio.g_menu_insert_section(to_unsafe, position, label, section)

      # Return value handling
    end

    def insert_submenu(position : Int32, label : ::String?, submenu : Gio::MenuModel) : Nil
      # g_menu_insert_submenu: (Method)
      # @position:
      # @label: (nullable)
      # @submenu:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGio.g_menu_insert_submenu(to_unsafe, position, label, submenu)

      # Return value handling
    end

    def prepend(label : ::String?, detailed_action : ::String?) : Nil
      # g_menu_prepend: (Method)
      # @label: (nullable)
      # @detailed_action: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end
      # Generator::NullableArrayPlan
      detailed_action = if detailed_action.nil?
                          Pointer(LibC::Char).null
                        else
                          detailed_action.to_unsafe
                        end

      # C call
      LibGio.g_menu_prepend(to_unsafe, label, detailed_action)

      # Return value handling
    end

    def prepend_item(item : Gio::MenuItem) : Nil
      # g_menu_prepend_item: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_prepend_item(to_unsafe, item)

      # Return value handling
    end

    def prepend_section(label : ::String?, section : Gio::MenuModel) : Nil
      # g_menu_prepend_section: (Method)
      # @label: (nullable)
      # @section:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGio.g_menu_prepend_section(to_unsafe, label, section)

      # Return value handling
    end

    def prepend_submenu(label : ::String?, submenu : Gio::MenuModel) : Nil
      # g_menu_prepend_submenu: (Method)
      # @label: (nullable)
      # @submenu:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGio.g_menu_prepend_submenu(to_unsafe, label, submenu)

      # Return value handling
    end

    def remove(position : Int32) : Nil
      # g_menu_remove: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_remove(to_unsafe, position)

      # Return value handling
    end

    def remove_all : Nil
      # g_menu_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_remove_all(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
