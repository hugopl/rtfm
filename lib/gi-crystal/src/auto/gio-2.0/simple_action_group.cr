require "../g_object-2.0/object"
require "./action_group"

require "./action_map"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SimpleActionGroup < GObject::Object
    include ActionGroup
    include ActionMap

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SimpleActionGroupClass), class_init,
        sizeof(LibGio::SimpleActionGroup), instance_init, 0)
    end

    GICrystal.declare_new_method(SimpleActionGroup, g_object_get_qdata)

    # Initialize a new `SimpleActionGroup`.
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
      @@g_type ||= LibGio.g_simple_action_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SimpleActionGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_simple_action_group_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_simple_action_group_new

      # Return value handling
      Gio::SimpleActionGroup.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def add_entries(entries : Enumerable(Gio::ActionEntry), user_data : Pointer(Void)?) : Nil
      # g_simple_action_group_add_entries: (Method)
      # @entries: (array length=n_entries element-type Interface)
      # @n_entries:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_entries = entries.size
      # Generator::ArrayArgPlan
      entries = entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::ActionEntry))
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGio.g_simple_action_group_add_entries(to_unsafe, entries, n_entries, user_data)

      # Return value handling
    end

    @[Deprecated]
    def insert(action : Gio::Action) : Nil
      # g_simple_action_group_insert: (Method)
      # @action:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_action_group_insert(to_unsafe, action)

      # Return value handling
    end

    @[Deprecated]
    def lookup(action_name : ::String) : Gio::Action
      # g_simple_action_group_lookup: (Method)
      # @action_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_simple_action_group_lookup(to_unsafe, action_name)

      # Return value handling
      Gio::AbstractAction.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def remove(action_name : ::String) : Nil
      # g_simple_action_group_remove: (Method)
      # @action_name:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_action_group_remove(to_unsafe, action_name)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
