require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TextChildAnchor < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TextChildAnchorClass), class_init,
        sizeof(LibGtk::TextChildAnchor), instance_init, 0)
    end

    GICrystal.declare_new_method(TextChildAnchor, g_object_get_qdata)

    # Initialize a new `TextChildAnchor`.
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
      @@g_type ||= LibGtk.gtk_text_child_anchor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TextChildAnchor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_text_child_anchor_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_child_anchor_new

      # Return value handling
      Gtk::TextChildAnchor.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_replacement(character : ::String) : self
      # gtk_text_child_anchor_new_with_replacement: (Constructor)
      # @character:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_child_anchor_new_with_replacement(character)

      # Return value handling
      Gtk::TextChildAnchor.new(_retval, GICrystal::Transfer::Full)
    end

    def deleted : Bool
      # gtk_text_child_anchor_get_deleted: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_child_anchor_get_deleted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def widgets : Enumerable(Gtk::Widget)
      # gtk_text_child_anchor_get_widgets: (Method)
      # @out_len: (out) (transfer full)
      # Returns: (transfer container) (array length=out_len element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      out_len = 0_u32
      # C call
      _retval = LibGtk.gtk_text_child_anchor_get_widgets(to_unsafe, pointerof(out_len))

      # Return value handling
      GICrystal.transfer_array(_retval, out_len, GICrystal::Transfer::Container)
    end

    def_equals_and_hash @pointer
  end
end
