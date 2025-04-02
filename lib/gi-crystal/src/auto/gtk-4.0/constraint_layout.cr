require "./layout_manager"
require "./buildable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ConstraintLayout < LayoutManager
    include Buildable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ConstraintLayoutClass), class_init,
        sizeof(LibGtk::ConstraintLayout), instance_init, 0)
    end

    GICrystal.declare_new_method(ConstraintLayout, g_object_get_qdata)

    # Initialize a new `ConstraintLayout`.
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
      @@g_type ||= LibGtk.gtk_constraint_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ConstraintLayout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_constraint_layout_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_constraint_layout_new

      # Return value handling
      Gtk::ConstraintLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def add_constraint(constraint : Gtk::Constraint) : Nil
      # gtk_constraint_layout_add_constraint: (Method)
      # @constraint: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(constraint)

      # C call
      LibGtk.gtk_constraint_layout_add_constraint(to_unsafe, constraint)

      # Return value handling
    end

    def add_constraints_from_description(lines : Enumerable(::String), hspacing : Int32, vspacing : Int32, views : Pointer(Void)) : GLib::List
      # gtk_constraint_layout_add_constraints_from_descriptionv: (Method | Throws)
      # @lines: (array length=n_lines element-type Utf8)
      # @n_lines:
      # @hspacing:
      # @vspacing:
      # @views:
      # Returns: (transfer container)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      n_lines = lines.size
      # Generator::ArrayArgPlan
      lines = lines.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGtk.gtk_constraint_layout_add_constraints_from_descriptionv(to_unsafe, lines, n_lines, hspacing, vspacing, views, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gtk::Constraint).new(_retval, GICrystal::Transfer::Container)
    end

    def add_guide(guide : Gtk::ConstraintGuide) : Nil
      # gtk_constraint_layout_add_guide: (Method)
      # @guide: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(guide)

      # C call
      LibGtk.gtk_constraint_layout_add_guide(to_unsafe, guide)

      # Return value handling
    end

    def observe_constraints : Gio::ListModel
      # gtk_constraint_layout_observe_constraints: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_constraint_layout_observe_constraints(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def observe_guides : Gio::ListModel
      # gtk_constraint_layout_observe_guides: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_constraint_layout_observe_guides(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def remove_all_constraints : Nil
      # gtk_constraint_layout_remove_all_constraints: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_constraint_layout_remove_all_constraints(to_unsafe)

      # Return value handling
    end

    def remove_constraint(constraint : Gtk::Constraint) : Nil
      # gtk_constraint_layout_remove_constraint: (Method)
      # @constraint:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_constraint_layout_remove_constraint(to_unsafe, constraint)

      # Return value handling
    end

    def remove_guide(guide : Gtk::ConstraintGuide) : Nil
      # gtk_constraint_layout_remove_guide: (Method)
      # @guide:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_constraint_layout_remove_guide(to_unsafe, guide)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
