require "../g_object-2.0/object"

module Pango
  @[GICrystal::GeneratedWrapper]
  class Layout < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::LayoutClass), class_init,
        sizeof(LibPango::Layout), instance_init, 0)
    end

    GICrystal.declare_new_method(Layout, g_object_get_qdata)

    # Initialize a new `Layout`.
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
      @@g_type ||= LibPango.pango_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::Layout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(context : Pango::Context) : self
      # pango_layout_new: (Constructor)
      # @context:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_layout_new(context)

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::Full)
    end

    def deserialize(context : Pango::Context, bytes : GLib::Bytes, flags : Pango::LayoutDeserializeFlags) : Pango::Layout?
      # pango_layout_deserialize: (Throws)
      # @context:
      # @bytes:
      # @flags:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibPango.pango_layout_deserialize(context, bytes, flags, pointerof(_error))

      # Error check
      Pango.raise_gerror(_error) unless _error.null?

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def context_changed : Nil
      # pango_layout_context_changed: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_context_changed(to_unsafe)

      # Return value handling
    end

    def copy : Pango::Layout
      # pango_layout_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_layout_copy(to_unsafe)

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::Full)
    end

    def alignment : Pango::Alignment
      # pango_layout_get_alignment: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_alignment(to_unsafe)

      # Return value handling
      Pango::Alignment.new(_retval)
    end

    def attributes : Pango::AttrList?
      # pango_layout_get_attributes: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_layout_get_attributes(to_unsafe)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def auto_dir : Bool
      # pango_layout_get_auto_dir: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_auto_dir(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def baseline : Int32
      # pango_layout_get_baseline: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_baseline(to_unsafe)

      # Return value handling
      _retval
    end

    def caret_pos(index_ : Int32) : Pango::Rectangle
      # pango_layout_get_caret_pos: (Method)
      # @index_:
      # @strong_pos: (out) (caller-allocates) (optional)
      # @weak_pos: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      strong_pos = Pointer(Void).null   # Generator::CallerAllocatesPlan
      strong_pos = Pango::Rectangle.new # Generator::OutArgUsedInReturnPlan
      weak_pos = Pointer(Void).null     # Generator::CallerAllocatesPlan
      weak_pos = Pango::Rectangle.new
      # C call
      LibPango.pango_layout_get_caret_pos(to_unsafe, index_, strong_pos, weak_pos)

      # Return value handling
      strong_pos
    end

    def character_count : Int32
      # pango_layout_get_character_count: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_character_count(to_unsafe)

      # Return value handling
      _retval
    end

    def context : Pango::Context
      # pango_layout_get_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_context(to_unsafe)

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::None)
    end

    def cursor_pos(index_ : Int32) : Pango::Rectangle
      # pango_layout_get_cursor_pos: (Method)
      # @index_:
      # @strong_pos: (out) (caller-allocates) (optional)
      # @weak_pos: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      strong_pos = Pointer(Void).null   # Generator::CallerAllocatesPlan
      strong_pos = Pango::Rectangle.new # Generator::OutArgUsedInReturnPlan
      weak_pos = Pointer(Void).null     # Generator::CallerAllocatesPlan
      weak_pos = Pango::Rectangle.new
      # C call
      LibPango.pango_layout_get_cursor_pos(to_unsafe, index_, strong_pos, weak_pos)

      # Return value handling
      strong_pos
    end

    def direction(index : Int32) : Pango::Direction
      # pango_layout_get_direction: (Method)
      # @index:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_direction(to_unsafe, index)

      # Return value handling
      Pango::Direction.new(_retval)
    end

    def ellipsize : Pango::EllipsizeMode
      # pango_layout_get_ellipsize: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_ellipsize(to_unsafe)

      # Return value handling
      Pango::EllipsizeMode.new(_retval)
    end

    def extents : Pango::Rectangle
      # pango_layout_get_extents: (Method)
      # @ink_rect: (out) (caller-allocates) (optional)
      # @logical_rect: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      ink_rect = Pointer(Void).null     # Generator::CallerAllocatesPlan
      ink_rect = Pango::Rectangle.new   # Generator::OutArgUsedInReturnPlan
      logical_rect = Pointer(Void).null # Generator::CallerAllocatesPlan
      logical_rect = Pango::Rectangle.new
      # C call
      LibPango.pango_layout_get_extents(to_unsafe, ink_rect, logical_rect)

      # Return value handling
      ink_rect
    end

    def font_description : Pango::FontDescription?
      # pango_layout_get_font_description: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_layout_get_font_description(to_unsafe)

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def height : Int32
      # pango_layout_get_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def indent : Int32
      # pango_layout_get_indent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_indent(to_unsafe)

      # Return value handling
      _retval
    end

    def iter : Pango::LayoutIter
      # pango_layout_get_iter: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_layout_get_iter(to_unsafe)

      # Return value handling
      Pango::LayoutIter.new(_retval, GICrystal::Transfer::Full)
    end

    def justify : Bool
      # pango_layout_get_justify: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_justify(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def justify_last_line : Bool
      # pango_layout_get_justify_last_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_justify_last_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def line(line : Int32) : Pango::LayoutLine?
      # pango_layout_get_line: (Method)
      # @line:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_layout_get_line(to_unsafe, line)

      # Return value handling
      Pango::LayoutLine.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def line_count : Int32
      # pango_layout_get_line_count: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_line_count(to_unsafe)

      # Return value handling
      _retval
    end

    def line_readonly(line : Int32) : Pango::LayoutLine?
      # pango_layout_get_line_readonly: (Method)
      # @line:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_layout_get_line_readonly(to_unsafe, line)

      # Return value handling
      Pango::LayoutLine.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def line_spacing : Float32
      # pango_layout_get_line_spacing: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_line_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def lines : GLib::SList
      # pango_layout_get_lines: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_lines(to_unsafe)

      # Return value handling
      GLib::SList(Pango::LayoutLine).new(_retval, GICrystal::Transfer::None)
    end

    def lines_readonly : GLib::SList
      # pango_layout_get_lines_readonly: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_lines_readonly(to_unsafe)

      # Return value handling
      GLib::SList(Pango::LayoutLine).new(_retval, GICrystal::Transfer::None)
    end

    def log_attrs(attrs : Enumerable(Pango::LogAttr)) : Nil
      # pango_layout_get_log_attrs: (Method)
      # @attrs: (out) (transfer container) (array length=n_attrs element-type Interface)
      # @n_attrs: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_attrs = attrs.size
      # Generator::ArrayArgPlan
      attrs = attrs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibPango::LogAttr))

      # C call
      LibPango.pango_layout_get_log_attrs(to_unsafe, attrs, n_attrs)

      # Return value handling
    end

    def log_attrs(*attrs : Pango::LogAttr)
      log_attrs(attrs)
    end

    def log_attrs_readonly : Enumerable(Pango::LogAttr)
      # pango_layout_get_log_attrs_readonly: (Method)
      # @n_attrs: (out) (transfer full)
      # Returns: (transfer none) (array length=n_attrs element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      n_attrs = 0
      # C call
      _retval = LibPango.pango_layout_get_log_attrs_readonly(to_unsafe, pointerof(n_attrs))

      # Return value handling
      GICrystal.transfer_array(_retval, n_attrs, GICrystal::Transfer::None)
    end

    def pixel_extents : Pango::Rectangle
      # pango_layout_get_pixel_extents: (Method)
      # @ink_rect: (out) (caller-allocates) (optional)
      # @logical_rect: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      ink_rect = Pointer(Void).null     # Generator::CallerAllocatesPlan
      ink_rect = Pango::Rectangle.new   # Generator::OutArgUsedInReturnPlan
      logical_rect = Pointer(Void).null # Generator::CallerAllocatesPlan
      logical_rect = Pango::Rectangle.new
      # C call
      LibPango.pango_layout_get_pixel_extents(to_unsafe, ink_rect, logical_rect)

      # Return value handling
      ink_rect
    end

    def pixel_size : Nil
      # pango_layout_get_pixel_size: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibPango.pango_layout_get_pixel_size(to_unsafe, width, height)

      # Return value handling
    end

    def serial : UInt32
      # pango_layout_get_serial: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_serial(to_unsafe)

      # Return value handling
      _retval
    end

    def single_paragraph_mode : Bool
      # pango_layout_get_single_paragraph_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_single_paragraph_mode(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def size : Nil
      # pango_layout_get_size: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibPango.pango_layout_get_size(to_unsafe, width, height)

      # Return value handling
    end

    def spacing : Int32
      # pango_layout_get_spacing: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def tabs : Pango::TabArray?
      # pango_layout_get_tabs: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_layout_get_tabs(to_unsafe)

      # Return value handling
      Pango::TabArray.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def text : ::String
      # pango_layout_get_text: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_text(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def unknown_glyphs_count : Int32
      # pango_layout_get_unknown_glyphs_count: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_unknown_glyphs_count(to_unsafe)

      # Return value handling
      _retval
    end

    def width : Int32
      # pango_layout_get_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def wrap : Pango::WrapMode
      # pango_layout_get_wrap: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_get_wrap(to_unsafe)

      # Return value handling
      Pango::WrapMode.new(_retval)
    end

    def index_to_line_x(index_ : Int32, trailing : Bool) : Nil
      # pango_layout_index_to_line_x: (Method)
      # @index_:
      # @trailing:
      # @line: (out) (transfer full) (optional)
      # @x_pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      line = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      x_pos = Pointer(Int32).null
      # C call
      LibPango.pango_layout_index_to_line_x(to_unsafe, index_, trailing, line, x_pos)

      # Return value handling
    end

    def index_to_pos(index_ : Int32) : Pango::Rectangle
      # pango_layout_index_to_pos: (Method)
      # @index_:
      # @pos: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      pos = Pango::Rectangle.new
      # C call
      LibPango.pango_layout_index_to_pos(to_unsafe, index_, pos)

      # Return value handling
      pos
    end

    def is_ellipsized : Bool
      # pango_layout_is_ellipsized: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_is_ellipsized(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_wrapped : Bool
      # pango_layout_is_wrapped: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_is_wrapped(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def move_cursor_visually(strong : Bool, old_index : Int32, old_trailing : Int32, direction : Int32, new_index : Int32, new_trailing : Int32) : Nil
      # pango_layout_move_cursor_visually: (Method)
      # @strong:
      # @old_index:
      # @old_trailing:
      # @direction:
      # @new_index: (out) (transfer full)
      # @new_trailing: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_move_cursor_visually(to_unsafe, strong, old_index, old_trailing, direction, new_index, new_trailing)

      # Return value handling
    end

    def serialize(flags : Pango::LayoutSerializeFlags) : GLib::Bytes
      # pango_layout_serialize: (Method)
      # @flags:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_layout_serialize(to_unsafe, flags)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def alignment=(alignment : Pango::Alignment) : Nil
      # pango_layout_set_alignment: (Method)
      # @alignment:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_alignment(to_unsafe, alignment)

      # Return value handling
    end

    def attributes=(attrs : Pango::AttrList?) : Nil
      # pango_layout_set_attributes: (Method)
      # @attrs: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      attrs = if attrs.nil?
                Pointer(Void).null
              else
                attrs.to_unsafe
              end

      # C call
      LibPango.pango_layout_set_attributes(to_unsafe, attrs)

      # Return value handling
    end

    def auto_dir=(auto_dir : Bool) : Nil
      # pango_layout_set_auto_dir: (Method)
      # @auto_dir:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_auto_dir(to_unsafe, auto_dir)

      # Return value handling
    end

    def ellipsize=(ellipsize : Pango::EllipsizeMode) : Nil
      # pango_layout_set_ellipsize: (Method)
      # @ellipsize:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_ellipsize(to_unsafe, ellipsize)

      # Return value handling
    end

    def font_description=(desc : Pango::FontDescription?) : Nil
      # pango_layout_set_font_description: (Method)
      # @desc: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      desc = if desc.nil?
               Pointer(Void).null
             else
               desc.to_unsafe
             end

      # C call
      LibPango.pango_layout_set_font_description(to_unsafe, desc)

      # Return value handling
    end

    def height=(height : Int32) : Nil
      # pango_layout_set_height: (Method)
      # @height:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_height(to_unsafe, height)

      # Return value handling
    end

    def indent=(indent : Int32) : Nil
      # pango_layout_set_indent: (Method)
      # @indent:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_indent(to_unsafe, indent)

      # Return value handling
    end

    def justify=(justify : Bool) : Nil
      # pango_layout_set_justify: (Method)
      # @justify:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_justify(to_unsafe, justify)

      # Return value handling
    end

    def justify_last_line=(justify : Bool) : Nil
      # pango_layout_set_justify_last_line: (Method)
      # @justify:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_justify_last_line(to_unsafe, justify)

      # Return value handling
    end

    def line_spacing=(factor : Float32) : Nil
      # pango_layout_set_line_spacing: (Method)
      # @factor:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_line_spacing(to_unsafe, factor)

      # Return value handling
    end

    def set_markup(markup : ::String, length : Int32) : Nil
      # pango_layout_set_markup: (Method)
      # @markup:
      # @length:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_markup(to_unsafe, markup, length)

      # Return value handling
    end

    def set_markup_with_accel(markup : ::String, length : Int32, accel_marker : Char) : Nil
      # pango_layout_set_markup_with_accel: (Method)
      # @markup:
      # @length:
      # @accel_marker:
      # @accel_char: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::BuiltInTypeArgPlan
      accel_marker = accel_marker.ord.to_u32
      # Generator::OutArgUsedInReturnPlan
      accel_char = Pointer(UInt32).null
      # C call
      LibPango.pango_layout_set_markup_with_accel(to_unsafe, markup, length, accel_marker, accel_char)

      # Return value handling
    end

    def single_paragraph_mode=(setting : Bool) : Nil
      # pango_layout_set_single_paragraph_mode: (Method)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_single_paragraph_mode(to_unsafe, setting)

      # Return value handling
    end

    def spacing=(spacing : Int32) : Nil
      # pango_layout_set_spacing: (Method)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def tabs=(tabs : Pango::TabArray?) : Nil
      # pango_layout_set_tabs: (Method)
      # @tabs: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tabs = if tabs.nil?
               Pointer(Void).null
             else
               tabs.to_unsafe
             end

      # C call
      LibPango.pango_layout_set_tabs(to_unsafe, tabs)

      # Return value handling
    end

    def set_text(text : ::String, length : Int32) : Nil
      # pango_layout_set_text: (Method)
      # @text:
      # @length:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_text(to_unsafe, text, length)

      # Return value handling
    end

    def width=(width : Int32) : Nil
      # pango_layout_set_width: (Method)
      # @width:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_width(to_unsafe, width)

      # Return value handling
    end

    def wrap=(wrap : Pango::WrapMode) : Nil
      # pango_layout_set_wrap: (Method)
      # @wrap:
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_set_wrap(to_unsafe, wrap)

      # Return value handling
    end

    def write_to_file(flags : Pango::LayoutSerializeFlags, filename : ::String) : Bool
      # pango_layout_write_to_file: (Method | Throws)
      # @flags:
      # @filename:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibPango.pango_layout_write_to_file(to_unsafe, flags, filename, pointerof(_error))

      # Error check
      Pango.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def xy_to_index(x : Int32, y : Int32, index_ : Int32, trailing : Int32) : Bool
      # pango_layout_xy_to_index: (Method)
      # @x:
      # @y:
      # @index_: (out) (transfer full)
      # @trailing: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_xy_to_index(to_unsafe, x, y, index_, trailing)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
