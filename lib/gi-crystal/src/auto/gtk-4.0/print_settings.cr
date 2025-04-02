require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PrintSettings < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(PrintSettings, g_object_get_qdata)

    # Initialize a new `PrintSettings`.
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
      @@g_type ||= LibGtk.gtk_print_settings_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PrintSettings.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_print_settings_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_settings_new

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_file(file_name : ::String) : self
      # gtk_print_settings_new_from_file: (Constructor | Throws)
      # @file_name:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_settings_new_from_file(file_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_gvariant(variant : _) : self
      # gtk_print_settings_new_from_gvariant: (Constructor)
      # @variant:
      # Returns: (transfer full)

      # Generator::HandmadeArgPlan
      variant = if !variant.is_a?(GLib::Variant)
                  GLib::Variant.new(variant).to_unsafe
                else
                  variant.to_unsafe
                end

      # C call
      _retval = LibGtk.gtk_print_settings_new_from_gvariant(variant)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_key_file(key_file : GLib::KeyFile, group_name : ::String?) : self
      # gtk_print_settings_new_from_key_file: (Constructor | Throws)
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
      _retval = LibGtk.gtk_print_settings_new_from_key_file(key_file, group_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Gtk::PrintSettings
      # gtk_print_settings_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_settings_copy(to_unsafe)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::Full)
    end

    def foreach(func : Gtk::PrintSettingsFunc, user_data : Pointer(Void)?) : Nil
      # gtk_print_settings_foreach: (Method)
      # @func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGtk.gtk_print_settings_foreach(to_unsafe, func, user_data)

      # Return value handling
    end

    def get(key : ::String) : ::String?
      # gtk_print_settings_get: (Method)
      # @key:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get(to_unsafe, key)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def bool(key : ::String) : Bool
      # gtk_print_settings_get_bool: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_bool(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def collate : Bool
      # gtk_print_settings_get_collate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_collate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def default_source : ::String?
      # gtk_print_settings_get_default_source: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get_default_source(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def dither : ::String?
      # gtk_print_settings_get_dither: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get_dither(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def double(key : ::String) : Float64
      # gtk_print_settings_get_double: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_double(to_unsafe, key)

      # Return value handling
      _retval
    end

    def double_with_default(key : ::String, def _def : Float64) : Float64
      # gtk_print_settings_get_double_with_default: (Method)
      # @key:
      # @def:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_double_with_default(to_unsafe, key, _def)

      # Return value handling
      _retval
    end

    def duplex : Gtk::PrintDuplex
      # gtk_print_settings_get_duplex: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_duplex(to_unsafe)

      # Return value handling
      Gtk::PrintDuplex.new(_retval)
    end

    def finishings : ::String?
      # gtk_print_settings_get_finishings: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get_finishings(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def int(key : ::String) : Int32
      # gtk_print_settings_get_int: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_int(to_unsafe, key)

      # Return value handling
      _retval
    end

    def int_with_default(key : ::String, def _def : Int32) : Int32
      # gtk_print_settings_get_int_with_default: (Method)
      # @key:
      # @def:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_int_with_default(to_unsafe, key, _def)

      # Return value handling
      _retval
    end

    def length(key : ::String, unit : Gtk::Unit) : Float64
      # gtk_print_settings_get_length: (Method)
      # @key:
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_length(to_unsafe, key, unit)

      # Return value handling
      _retval
    end

    def media_type : ::String?
      # gtk_print_settings_get_media_type: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get_media_type(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def n_copies : Int32
      # gtk_print_settings_get_n_copies: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_n_copies(to_unsafe)

      # Return value handling
      _retval
    end

    def number_up : Int32
      # gtk_print_settings_get_number_up: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_number_up(to_unsafe)

      # Return value handling
      _retval
    end

    def number_up_layout : Gtk::NumberUpLayout
      # gtk_print_settings_get_number_up_layout: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_number_up_layout(to_unsafe)

      # Return value handling
      Gtk::NumberUpLayout.new(_retval)
    end

    def orientation : Gtk::PageOrientation
      # gtk_print_settings_get_orientation: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_orientation(to_unsafe)

      # Return value handling
      Gtk::PageOrientation.new(_retval)
    end

    def output_bin : ::String?
      # gtk_print_settings_get_output_bin: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get_output_bin(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def page_ranges : Enumerable(Gtk::PageRange)
      # gtk_print_settings_get_page_ranges: (Method)
      # @num_ranges: (out) (transfer full)
      # Returns: (transfer full) (array length=num_ranges element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      num_ranges = 0
      # C call
      _retval = LibGtk.gtk_print_settings_get_page_ranges(to_unsafe, pointerof(num_ranges))

      # Return value handling
      GICrystal.transfer_array(_retval, num_ranges, GICrystal::Transfer::Full)
    end

    def page_set : Gtk::PageSet
      # gtk_print_settings_get_page_set: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_page_set(to_unsafe)

      # Return value handling
      Gtk::PageSet.new(_retval)
    end

    def paper_height(unit : Gtk::Unit) : Float64
      # gtk_print_settings_get_paper_height: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_paper_height(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def paper_size : Gtk::PaperSize?
      # gtk_print_settings_get_paper_size: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get_paper_size(to_unsafe)

      # Return value handling
      Gtk::PaperSize.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def paper_width(unit : Gtk::Unit) : Float64
      # gtk_print_settings_get_paper_width: (Method)
      # @unit:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_paper_width(to_unsafe, unit)

      # Return value handling
      _retval
    end

    def print_pages : Gtk::PrintPages
      # gtk_print_settings_get_print_pages: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_print_pages(to_unsafe)

      # Return value handling
      Gtk::PrintPages.new(_retval)
    end

    def printer : ::String?
      # gtk_print_settings_get_printer: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_settings_get_printer(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def printer_lpi : Float64
      # gtk_print_settings_get_printer_lpi: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_printer_lpi(to_unsafe)

      # Return value handling
      _retval
    end

    def quality : Gtk::PrintQuality
      # gtk_print_settings_get_quality: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_quality(to_unsafe)

      # Return value handling
      Gtk::PrintQuality.new(_retval)
    end

    def resolution : Int32
      # gtk_print_settings_get_resolution: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_resolution(to_unsafe)

      # Return value handling
      _retval
    end

    def resolution_x : Int32
      # gtk_print_settings_get_resolution_x: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_resolution_x(to_unsafe)

      # Return value handling
      _retval
    end

    def resolution_y : Int32
      # gtk_print_settings_get_resolution_y: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_resolution_y(to_unsafe)

      # Return value handling
      _retval
    end

    def reverse : Bool
      # gtk_print_settings_get_reverse: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_reverse(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def scale : Float64
      # gtk_print_settings_get_scale: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def use_color : Bool
      # gtk_print_settings_get_use_color: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_get_use_color(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_key(key : ::String) : Bool
      # gtk_print_settings_has_key: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_has_key(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def load_file(file_name : ::String) : Bool
      # gtk_print_settings_load_file: (Method | Throws)
      # @file_name:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_settings_load_file(to_unsafe, file_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def load_key_file(key_file : GLib::KeyFile, group_name : ::String?) : Bool
      # gtk_print_settings_load_key_file: (Method | Throws)
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
      _retval = LibGtk.gtk_print_settings_load_key_file(to_unsafe, key_file, group_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set(key : ::String, value : ::String?) : Nil
      # gtk_print_settings_set: (Method)
      # @key:
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(LibC::Char).null
              else
                value.to_unsafe
              end

      # C call
      LibGtk.gtk_print_settings_set(to_unsafe, key, value)

      # Return value handling
    end

    def set_bool(key : ::String, value : Bool) : Nil
      # gtk_print_settings_set_bool: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_bool(to_unsafe, key, value)

      # Return value handling
    end

    def collate=(collate : Bool) : Nil
      # gtk_print_settings_set_collate: (Method)
      # @collate:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_collate(to_unsafe, collate)

      # Return value handling
    end

    def default_source=(default_source : ::String) : Nil
      # gtk_print_settings_set_default_source: (Method)
      # @default_source:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_default_source(to_unsafe, default_source)

      # Return value handling
    end

    def dither=(dither : ::String) : Nil
      # gtk_print_settings_set_dither: (Method)
      # @dither:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_dither(to_unsafe, dither)

      # Return value handling
    end

    def set_double(key : ::String, value : Float64) : Nil
      # gtk_print_settings_set_double: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_double(to_unsafe, key, value)

      # Return value handling
    end

    def duplex=(duplex : Gtk::PrintDuplex) : Nil
      # gtk_print_settings_set_duplex: (Method)
      # @duplex:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_duplex(to_unsafe, duplex)

      # Return value handling
    end

    def finishings=(finishings : ::String) : Nil
      # gtk_print_settings_set_finishings: (Method)
      # @finishings:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_finishings(to_unsafe, finishings)

      # Return value handling
    end

    def set_int(key : ::String, value : Int32) : Nil
      # gtk_print_settings_set_int: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_int(to_unsafe, key, value)

      # Return value handling
    end

    def set_length(key : ::String, value : Float64, unit : Gtk::Unit) : Nil
      # gtk_print_settings_set_length: (Method)
      # @key:
      # @value:
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_length(to_unsafe, key, value, unit)

      # Return value handling
    end

    def media_type=(media_type : ::String) : Nil
      # gtk_print_settings_set_media_type: (Method)
      # @media_type:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_media_type(to_unsafe, media_type)

      # Return value handling
    end

    def n_copies=(num_copies : Int32) : Nil
      # gtk_print_settings_set_n_copies: (Method)
      # @num_copies:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_n_copies(to_unsafe, num_copies)

      # Return value handling
    end

    def number_up=(number_up : Int32) : Nil
      # gtk_print_settings_set_number_up: (Method)
      # @number_up:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_number_up(to_unsafe, number_up)

      # Return value handling
    end

    def number_up_layout=(number_up_layout : Gtk::NumberUpLayout) : Nil
      # gtk_print_settings_set_number_up_layout: (Method)
      # @number_up_layout:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_number_up_layout(to_unsafe, number_up_layout)

      # Return value handling
    end

    def orientation=(orientation : Gtk::PageOrientation) : Nil
      # gtk_print_settings_set_orientation: (Method)
      # @orientation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_orientation(to_unsafe, orientation)

      # Return value handling
    end

    def output_bin=(output_bin : ::String) : Nil
      # gtk_print_settings_set_output_bin: (Method)
      # @output_bin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_output_bin(to_unsafe, output_bin)

      # Return value handling
    end

    def page_ranges=(page_ranges : Enumerable(Gtk::PageRange)) : Nil
      # gtk_print_settings_set_page_ranges: (Method)
      # @page_ranges: (array length=num_ranges element-type Interface)
      # @num_ranges:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      num_ranges = page_ranges.size
      # Generator::ArrayArgPlan
      page_ranges = page_ranges.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGtk::PageRange))

      # C call
      LibGtk.gtk_print_settings_set_page_ranges(to_unsafe, page_ranges, num_ranges)

      # Return value handling
    end

    def page_set=(page_set : Gtk::PageSet) : Nil
      # gtk_print_settings_set_page_set: (Method)
      # @page_set:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_page_set(to_unsafe, page_set)

      # Return value handling
    end

    def set_paper_height(height : Float64, unit : Gtk::Unit) : Nil
      # gtk_print_settings_set_paper_height: (Method)
      # @height:
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_paper_height(to_unsafe, height, unit)

      # Return value handling
    end

    def paper_size=(paper_size : Gtk::PaperSize) : Nil
      # gtk_print_settings_set_paper_size: (Method)
      # @paper_size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_paper_size(to_unsafe, paper_size)

      # Return value handling
    end

    def set_paper_width(width : Float64, unit : Gtk::Unit) : Nil
      # gtk_print_settings_set_paper_width: (Method)
      # @width:
      # @unit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_paper_width(to_unsafe, width, unit)

      # Return value handling
    end

    def print_pages=(pages : Gtk::PrintPages) : Nil
      # gtk_print_settings_set_print_pages: (Method)
      # @pages:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_print_pages(to_unsafe, pages)

      # Return value handling
    end

    def printer=(printer : ::String) : Nil
      # gtk_print_settings_set_printer: (Method)
      # @printer:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_printer(to_unsafe, printer)

      # Return value handling
    end

    def printer_lpi=(lpi : Float64) : Nil
      # gtk_print_settings_set_printer_lpi: (Method)
      # @lpi:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_printer_lpi(to_unsafe, lpi)

      # Return value handling
    end

    def quality=(quality : Gtk::PrintQuality) : Nil
      # gtk_print_settings_set_quality: (Method)
      # @quality:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_quality(to_unsafe, quality)

      # Return value handling
    end

    def resolution=(resolution : Int32) : Nil
      # gtk_print_settings_set_resolution: (Method)
      # @resolution:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_resolution(to_unsafe, resolution)

      # Return value handling
    end

    def set_resolution_xy(resolution_x : Int32, resolution_y : Int32) : Nil
      # gtk_print_settings_set_resolution_xy: (Method)
      # @resolution_x:
      # @resolution_y:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_resolution_xy(to_unsafe, resolution_x, resolution_y)

      # Return value handling
    end

    def reverse=(reverse : Bool) : Nil
      # gtk_print_settings_set_reverse: (Method)
      # @reverse:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_reverse(to_unsafe, reverse)

      # Return value handling
    end

    def scale=(scale : Float64) : Nil
      # gtk_print_settings_set_scale: (Method)
      # @scale:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_scale(to_unsafe, scale)

      # Return value handling
    end

    def use_color=(use_color : Bool) : Nil
      # gtk_print_settings_set_use_color: (Method)
      # @use_color:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_set_use_color(to_unsafe, use_color)

      # Return value handling
    end

    def to_file(file_name : ::String) : Bool
      # gtk_print_settings_to_file: (Method | Throws)
      # @file_name:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_print_settings_to_file(to_unsafe, file_name, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_gvariant : GLib::Variant
      # gtk_print_settings_to_gvariant: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_settings_to_gvariant(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None)
    end

    def to_key_file(key_file : GLib::KeyFile, group_name : ::String?) : Nil
      # gtk_print_settings_to_key_file: (Method)
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
      LibGtk.gtk_print_settings_to_key_file(to_unsafe, key_file, group_name)

      # Return value handling
    end

    def unset(key : ::String) : Nil
      # gtk_print_settings_unset: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_settings_unset(to_unsafe, key)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
