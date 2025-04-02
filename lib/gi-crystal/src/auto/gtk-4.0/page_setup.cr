require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PageSetup < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(PageSetup, g_object_get_qdata)

    # Initialize a new `PageSetup`.
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
      @@g_type ||= LibGtk.gtk_page_setup_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PageSetup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_page_setup_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_page_setup_new

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_file(file_name : ::String) : self
      # gtk_page_setup_new_from_file: (Constructor | Throws)
      # @file_name:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_page_setup_new_from_file(file_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_gvariant(variant : _) : self
      # gtk_page_setup_new_from_gvariant: (Constructor)
      # @variant:
      # Returns: (transfer full)

      # Generator::HandmadeArgPlan
      variant = if !variant.is_a?(GLib::Variant)
                  GLib::Variant.new(variant).to_unsafe
                else
                  variant.to_unsafe
                end

      # C call
      _retval = LibGtk.gtk_page_setup_new_from_gvariant(variant)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_key_file(key_file : GLib::KeyFile, group_name : ::String?) : self
      # gtk_page_setup_new_from_key_file: (Constructor | Throws)
      # @key_file:
      # @group_name: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      group_name = if group_name.nil?
                     Pointer(LibC::Char).null
                   else
                     group_name.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_page_setup_new_from_key_file(key_file, group_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Gtk::PageSetup
      # gtk_page_setup_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_page_setup_copy(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def bottom_margin(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_bottom_margin: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_bottom_margin(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def left_margin(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_left_margin: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_left_margin(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def orientation : Gtk::PageOrientation
      # gtk_page_setup_get_orientation: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_orientation(to_unsafe)

      # Return value handling
      Gtk::PageOrientation.new(_retval)
    end

    def page_height(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_page_height: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_page_height(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def page_width(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_page_width: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_page_width(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def paper_height(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_paper_height: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_paper_height(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def paper_size : Gtk::PaperSize
      # gtk_page_setup_get_paper_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_paper_size(to_unsafe)

      # Return value handling
      Gtk::PaperSize.new(_retval, GICrystal::Transfer::None)
    end

    def paper_width(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_paper_width: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_paper_width(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def right_margin(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_right_margin: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_right_margin(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def top_margin(unit : Gtk::Unit) : Float64
      # gtk_page_setup_get_top_margin: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_get_top_margin(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def load_file(file_name : ::String) : Bool
      # gtk_page_setup_load_file: (Method | Throws)
      # @file_name:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_page_setup_load_file(to_unsafe, file_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def load_key_file(key_file : GLib::KeyFile, group_name : ::String?) : Bool
      # gtk_page_setup_load_key_file: (Method | Throws)
      # @key_file:
      # @group_name: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      group_name = if group_name.nil?
                     Pointer(LibC::Char).null
                   else
                     group_name.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_page_setup_load_key_file(to_unsafe, key_file, group_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_bottom_margin(margin : Float64, unit : Gtk::Unit) : Nil
      # gtk_page_setup_set_bottom_margin: (Method)
      # @margin:
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_page_setup_set_bottom_margin(to_unsafe, margin, unit)

      # Return value handling
    end

    def set_left_margin(margin : Float64, unit : Gtk::Unit) : Nil
      # gtk_page_setup_set_left_margin: (Method)
      # @margin:
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_page_setup_set_left_margin(to_unsafe, margin, unit)

      # Return value handling
    end

    def orientation=(orientation : Gtk::PageOrientation) : Nil
      # gtk_page_setup_set_orientation: (Method)
      # @orientation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_page_setup_set_orientation(to_unsafe, orientation)

      # Return value handling
    end

    def paper_size=(size : Gtk::PaperSize) : Nil
      # gtk_page_setup_set_paper_size: (Method)
      # @size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_page_setup_set_paper_size(to_unsafe, size)

      # Return value handling
    end

    def paper_size_and_default_margins=(size : Gtk::PaperSize) : Nil
      # gtk_page_setup_set_paper_size_and_default_margins: (Method)
      # @size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_page_setup_set_paper_size_and_default_margins(to_unsafe, size)

      # Return value handling
    end

    def set_right_margin(margin : Float64, unit : Gtk::Unit) : Nil
      # gtk_page_setup_set_right_margin: (Method)
      # @margin:
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_page_setup_set_right_margin(to_unsafe, margin, unit)

      # Return value handling
    end

    def set_top_margin(margin : Float64, unit : Gtk::Unit) : Nil
      # gtk_page_setup_set_top_margin: (Method)
      # @margin:
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_page_setup_set_top_margin(to_unsafe, margin, unit)

      # Return value handling
    end

    def to_file(file_name : ::String) : Bool
      # gtk_page_setup_to_file: (Method | Throws)
      # @file_name:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_page_setup_to_file(to_unsafe, file_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_gvariant : GLib::Variant
      # gtk_page_setup_to_gvariant: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_page_setup_to_gvariant(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None)
    end

    def to_key_file(key_file : GLib::KeyFile, group_name : ::String?) : Nil
      # gtk_page_setup_to_key_file: (Method)
      # @key_file:
      # @group_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      group_name = if group_name.nil?
                     Pointer(LibC::Char).null
                   else
                     group_name.to_unsafe
                   end

      # C call
      LibGtk.gtk_page_setup_to_key_file(to_unsafe, key_file, group_name)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
