require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PrintContext < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(PrintContext, g_object_get_qdata)

    # Initialize a new `PrintContext`.
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
      @@g_type ||= LibGtk.gtk_print_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PrintContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def create_pango_context : Pango::Context
      # gtk_print_context_create_pango_context: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_context_create_pango_context(to_unsafe)

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::Full)
    end

    def create_pango_layout : Pango::Layout
      # gtk_print_context_create_pango_layout: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_context_create_pango_layout(to_unsafe)

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::Full)
    end

    def cairo_context : Cairo::Context
      # gtk_print_context_get_cairo_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_cairo_context(to_unsafe)

      # Return value handling
      Cairo::Context.new(_retval, GICrystal::Transfer::None)
    end

    def dpi_x : Float64
      # gtk_print_context_get_dpi_x: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_dpi_x(to_unsafe)

      # Return value handling
      _retval
    end

    def dpi_y : Float64
      # gtk_print_context_get_dpi_y: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_dpi_y(to_unsafe)

      # Return value handling
      _retval
    end

    def hard_margins(top : Float64, bottom : Float64, left : Float64, right : Float64) : Bool
      # gtk_print_context_get_hard_margins: (Method)
      # @top: (out) (transfer full)
      # @bottom: (out) (transfer full)
      # @left: (out) (transfer full)
      # @right: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_hard_margins(to_unsafe, top, bottom, left, right)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def height : Float64
      # gtk_print_context_get_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def page_setup : Gtk::PageSetup
      # gtk_print_context_get_page_setup: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_page_setup(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::None)
    end

    def pango_fontmap : Pango::FontMap
      # gtk_print_context_get_pango_fontmap: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_pango_fontmap(to_unsafe)

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::None)
    end

    def width : Float64
      # gtk_print_context_get_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_context_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def set_cairo_context(cr : Cairo::Context, dpi_x : Float64, dpi_y : Float64) : Nil
      # gtk_print_context_set_cairo_context: (Method)
      # @cr:
      # @dpi_x:
      # @dpi_y:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_context_set_cairo_context(to_unsafe, cr, dpi_x, dpi_y)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
