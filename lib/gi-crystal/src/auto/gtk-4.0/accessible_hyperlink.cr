require "../g_object-2.0/object"
require "./accessible"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class AccessibleHyperlink < GObject::Object
    include Accessible

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::AccessibleHyperlinkClass), class_init,
        sizeof(LibGtk::AccessibleHyperlink), instance_init, 0)
    end

    GICrystal.declare_new_method(AccessibleHyperlink, g_object_get_qdata)

    # Initialize a new `AccessibleHyperlink`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
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
      @@g_type ||= LibGtk.gtk_accessible_hyperlink_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AccessibleHyperlink.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(parent : Gtk::AccessibleHypertext, index : UInt32, uri : ::String, bounds : Gtk::AccessibleTextRange) : self
      # gtk_accessible_hyperlink_new: (Constructor)
      # @parent:
      # @index:
      # @uri:
      # @bounds:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_accessible_hyperlink_new(parent, index, uri, bounds)

      # Return value handling
      Gtk::AccessibleHyperlink.new(_retval, GICrystal::Transfer::Full)
    end

    def set_platform_state(state : Gtk::AccessiblePlatformState, enabled : Bool) : Nil
      # gtk_accessible_hyperlink_set_platform_state: (Method)
      # @state:
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_hyperlink_set_platform_state(to_unsafe, state, enabled)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
