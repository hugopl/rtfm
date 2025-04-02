require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Notification < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Notification, g_object_get_qdata)

    # Initialize a new `Notification`.
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
      @@g_type ||= LibGio.g_notification_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Notification.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(title : ::String) : self
      # g_notification_new: (Constructor)
      # @title:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_notification_new(title)

      # Return value handling
      Gio::Notification.new(_retval, GICrystal::Transfer::Full)
    end

    def add_button(label : ::String, detailed_action : ::String) : Nil
      # g_notification_add_button: (Method)
      # @label:
      # @detailed_action:
      # Returns: (transfer none)

      # C call
      LibGio.g_notification_add_button(to_unsafe, label, detailed_action)

      # Return value handling
    end

    def add_button_with_target(label : ::String, action : ::String, target : _?) : Nil
      # g_notification_add_button_with_target_value: (Method)
      # @label:
      # @action:
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
      LibGio.g_notification_add_button_with_target_value(to_unsafe, label, action, target)

      # Return value handling
    end

    def body=(body : ::String?) : Nil
      # g_notification_set_body: (Method)
      # @body: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      body = if body.nil?
               Pointer(LibC::Char).null
             else
               body.to_unsafe
             end

      # C call
      LibGio.g_notification_set_body(to_unsafe, body)

      # Return value handling
    end

    def category=(category : ::String?) : Nil
      # g_notification_set_category: (Method)
      # @category: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      category = if category.nil?
                   Pointer(LibC::Char).null
                 else
                   category.to_unsafe
                 end

      # C call
      LibGio.g_notification_set_category(to_unsafe, category)

      # Return value handling
    end

    def default_action=(detailed_action : ::String) : Nil
      # g_notification_set_default_action: (Method)
      # @detailed_action:
      # Returns: (transfer none)

      # C call
      LibGio.g_notification_set_default_action(to_unsafe, detailed_action)

      # Return value handling
    end

    def set_default_action_and_target(action : ::String, target : _?) : Nil
      # g_notification_set_default_action_and_target_value: (Method)
      # @action:
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
      LibGio.g_notification_set_default_action_and_target_value(to_unsafe, action, target)

      # Return value handling
    end

    def icon=(icon : Gio::Icon) : Nil
      # g_notification_set_icon: (Method)
      # @icon:
      # Returns: (transfer none)

      # C call
      LibGio.g_notification_set_icon(to_unsafe, icon)

      # Return value handling
    end

    def priority=(priority : Gio::NotificationPriority) : Nil
      # g_notification_set_priority: (Method)
      # @priority:
      # Returns: (transfer none)

      # C call
      LibGio.g_notification_set_priority(to_unsafe, priority)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # g_notification_set_title: (Method)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGio.g_notification_set_title(to_unsafe, title)

      # Return value handling
    end

    @[Deprecated]
    def urgent=(urgent : Bool) : Nil
      # g_notification_set_urgent: (Method)
      # @urgent:
      # Returns: (transfer none)

      # C call
      LibGio.g_notification_set_urgent(to_unsafe, urgent)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
