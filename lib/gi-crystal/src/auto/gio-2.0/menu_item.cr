require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class MenuItem < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(MenuItem, g_object_get_qdata)

    # Initialize a new `MenuItem`.
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
      @@g_type ||= LibGio.g_menu_item_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::MenuItem.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(label : ::String?, detailed_action : ::String?) : self
      # g_menu_item_new: (Constructor)
      # @label: (nullable)
      # @detailed_action: (nullable)
      # Returns: (transfer full)

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
      _retval = LibGio.g_menu_item_new(label, detailed_action)

      # Return value handling
      Gio::MenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_model(model : Gio::MenuModel, item_index : Int32) : self
      # g_menu_item_new_from_model: (Constructor)
      # @model:
      # @item_index:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_menu_item_new_from_model(model, item_index)

      # Return value handling
      Gio::MenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_section(label : ::String?, section : Gio::MenuModel) : self
      # g_menu_item_new_section: (Constructor)
      # @label: (nullable)
      # @section:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      _retval = LibGio.g_menu_item_new_section(label, section)

      # Return value handling
      Gio::MenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_submenu(label : ::String?, submenu : Gio::MenuModel) : self
      # g_menu_item_new_submenu: (Constructor)
      # @label: (nullable)
      # @submenu:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      _retval = LibGio.g_menu_item_new_submenu(label, submenu)

      # Return value handling
      Gio::MenuItem.new(_retval, GICrystal::Transfer::Full)
    end

    def attribute_value(attribute : ::String, expected_type : GLib::VariantType?) : GLib::Variant?
      # g_menu_item_get_attribute_value: (Method)
      # @attribute:
      # @expected_type: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      expected_type = if expected_type.nil?
                        Pointer(Void).null
                      else
                        expected_type.to_unsafe
                      end

      # C call
      _retval = LibGio.g_menu_item_get_attribute_value(to_unsafe, attribute, expected_type)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def link(link : ::String) : Gio::MenuModel?
      # g_menu_item_get_link: (Method)
      # @link:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_menu_item_get_link(to_unsafe, link)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def set_action_and_target_value(action : ::String?, target_value : _?) : Nil
      # g_menu_item_set_action_and_target_value: (Method)
      # @action: (nullable)
      # @target_value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      action = if action.nil?
                 Pointer(LibC::Char).null
               else
                 action.to_unsafe
               end
      # Generator::HandmadeArgPlan
      target_value = if target_value.nil?
                       Pointer(Void).null
                     elsif !target_value.is_a?(GLib::Variant)
                       GLib::Variant.new(target_value).to_unsafe
                     else
                       target_value.to_unsafe
                     end

      # C call
      LibGio.g_menu_item_set_action_and_target_value(to_unsafe, action, target_value)

      # Return value handling
    end

    def set_attribute_value(attribute : ::String, value : _?) : Nil
      # g_menu_item_set_attribute_value: (Method)
      # @attribute:
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if value.nil?
                Pointer(Void).null
              elsif !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_menu_item_set_attribute_value(to_unsafe, attribute, value)

      # Return value handling
    end

    def detailed_action=(detailed_action : ::String) : Nil
      # g_menu_item_set_detailed_action: (Method)
      # @detailed_action:
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_item_set_detailed_action(to_unsafe, detailed_action)

      # Return value handling
    end

    def icon=(icon : Gio::Icon) : Nil
      # g_menu_item_set_icon: (Method)
      # @icon:
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_item_set_icon(to_unsafe, icon)

      # Return value handling
    end

    def label=(label : ::String?) : Nil
      # g_menu_item_set_label: (Method)
      # @label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibGio.g_menu_item_set_label(to_unsafe, label)

      # Return value handling
    end

    def set_link(link : ::String, model : Gio::MenuModel?) : Nil
      # g_menu_item_set_link: (Method)
      # @link:
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGio.g_menu_item_set_link(to_unsafe, link, model)

      # Return value handling
    end

    def section=(section : Gio::MenuModel?) : Nil
      # g_menu_item_set_section: (Method)
      # @section: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      section = if section.nil?
                  Pointer(Void).null
                else
                  section.to_unsafe
                end

      # C call
      LibGio.g_menu_item_set_section(to_unsafe, section)

      # Return value handling
    end

    def submenu=(submenu : Gio::MenuModel?) : Nil
      # g_menu_item_set_submenu: (Method)
      # @submenu: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      submenu = if submenu.nil?
                  Pointer(Void).null
                else
                  submenu.to_unsafe
                end

      # C call
      LibGio.g_menu_item_set_submenu(to_unsafe, submenu)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
