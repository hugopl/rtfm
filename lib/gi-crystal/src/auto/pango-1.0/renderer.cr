require "../g_object-2.0/object"

module Pango
  @[GICrystal::GeneratedWrapper]
  class Renderer < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::RendererClass), class_init,
        sizeof(LibPango::Renderer), instance_init, 0)
    end

    GICrystal.declare_new_method(Renderer, g_object_get_qdata)

    # Initialize a new `Renderer`.
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
      @@g_type ||= LibPango.pango_renderer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::Renderer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def activate : Nil
      # pango_renderer_activate: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_activate(to_unsafe)

      # Return value handling
    end

    def deactivate : Nil
      # pango_renderer_deactivate: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_deactivate(to_unsafe)

      # Return value handling
    end

    def draw_error_underline(x : Int32, y : Int32, width : Int32, height : Int32) : Nil
      # pango_renderer_draw_error_underline: (Method)
      # @x:
      # @y:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_draw_error_underline(to_unsafe, x, y, width, height)

      # Return value handling
    end

    def draw_glyph(font : Pango::Font, glyph : UInt32, x : Float64, y : Float64) : Nil
      # pango_renderer_draw_glyph: (Method)
      # @font:
      # @glyph:
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_draw_glyph(to_unsafe, font, glyph, x, y)

      # Return value handling
    end

    def draw_glyph_item(text : ::String?, glyph_item : Pango::GlyphItem, x : Int32, y : Int32) : Nil
      # pango_renderer_draw_glyph_item: (Method)
      # @text: (nullable)
      # @glyph_item:
      # @x:
      # @y:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      LibPango.pango_renderer_draw_glyph_item(to_unsafe, text, glyph_item, x, y)

      # Return value handling
    end

    def draw_glyphs(font : Pango::Font, glyphs : Pango::GlyphString, x : Int32, y : Int32) : Nil
      # pango_renderer_draw_glyphs: (Method)
      # @font:
      # @glyphs:
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_draw_glyphs(to_unsafe, font, glyphs, x, y)

      # Return value handling
    end

    def draw_layout(layout : Pango::Layout, x : Int32, y : Int32) : Nil
      # pango_renderer_draw_layout: (Method)
      # @layout:
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_draw_layout(to_unsafe, layout, x, y)

      # Return value handling
    end

    def draw_layout_line(line : Pango::LayoutLine, x : Int32, y : Int32) : Nil
      # pango_renderer_draw_layout_line: (Method)
      # @line:
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_draw_layout_line(to_unsafe, line, x, y)

      # Return value handling
    end

    def draw_rectangle(part : Pango::RenderPart, x : Int32, y : Int32, width : Int32, height : Int32) : Nil
      # pango_renderer_draw_rectangle: (Method)
      # @part:
      # @x:
      # @y:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_draw_rectangle(to_unsafe, part, x, y, width, height)

      # Return value handling
    end

    def draw_trapezoid(part : Pango::RenderPart, y1_ : Float64, x11 : Float64, x21 : Float64, y2 : Float64, x12 : Float64, x22 : Float64) : Nil
      # pango_renderer_draw_trapezoid: (Method)
      # @part:
      # @y1_:
      # @x11:
      # @x21:
      # @y2:
      # @x12:
      # @x22:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_draw_trapezoid(to_unsafe, part, y1_, x11, x21, y2, x12, x22)

      # Return value handling
    end

    def alpha(part : Pango::RenderPart) : UInt16
      # pango_renderer_get_alpha: (Method)
      # @part:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_renderer_get_alpha(to_unsafe, part)

      # Return value handling
      _retval
    end

    def color(part : Pango::RenderPart) : Pango::Color?
      # pango_renderer_get_color: (Method)
      # @part:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_renderer_get_color(to_unsafe, part)

      # Return value handling
      Pango::Color.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout : Pango::Layout?
      # pango_renderer_get_layout: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_renderer_get_layout(to_unsafe)

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout_line : Pango::LayoutLine?
      # pango_renderer_get_layout_line: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_renderer_get_layout_line(to_unsafe)

      # Return value handling
      Pango::LayoutLine.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def matrix : Pango::Matrix?
      # pango_renderer_get_matrix: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_renderer_get_matrix(to_unsafe)

      # Return value handling
      Pango::Matrix.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def part_changed(part : Pango::RenderPart) : Nil
      # pango_renderer_part_changed: (Method)
      # @part:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_part_changed(to_unsafe, part)

      # Return value handling
    end

    def set_alpha(part : Pango::RenderPart, alpha : UInt16) : Nil
      # pango_renderer_set_alpha: (Method)
      # @part:
      # @alpha:
      # Returns: (transfer none)

      # C call
      LibPango.pango_renderer_set_alpha(to_unsafe, part, alpha)

      # Return value handling
    end

    def set_color(part : Pango::RenderPart, color : Pango::Color?) : Nil
      # pango_renderer_set_color: (Method)
      # @part:
      # @color: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      color = if color.nil?
                Pointer(Void).null
              else
                color.to_unsafe
              end

      # C call
      LibPango.pango_renderer_set_color(to_unsafe, part, color)

      # Return value handling
    end

    def matrix=(matrix : Pango::Matrix?) : Nil
      # pango_renderer_set_matrix: (Method)
      # @matrix: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      matrix = if matrix.nil?
                 Pointer(Void).null
               else
                 matrix.to_unsafe
               end

      # C call
      LibPango.pango_renderer_set_matrix(to_unsafe, matrix)

      # Return value handling
    end

    # begin: (None)
    # Returns: (transfer none)
    private macro _register_begin_vfunc(impl_method_name)
      private def self._vfunc_begin(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_begin(Pointer(Void))).pointer
        previous_def
      end
    end

    # begin: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_begin_vfunc(impl_method_name)
      private def self._vfunc_unsafe_begin(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_begin = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_begin(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_begin : Proc(Pointer(Void), Void)? = nil
    end

    # draw_error_underline: (None)
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_draw_error_underline_vfunc(impl_method_name)
      private def self._vfunc_draw_error_underline(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
        # @x: 
# @y: 
# @width: 
# @height: 

x=lib_x
y=lib_y
width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(x, y, width, height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_error_underline(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # draw_error_underline: (None)
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_error_underline_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_error_underline(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
# @x: 
# @y: 
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_x, lib_y, lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_error_underline = Proc(Pointer(Void), Int32, Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_error_underline(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_error_underline : Proc(Pointer(Void), Int32, Int32, Int32, Int32, Void)? = nil
    end

    # draw_glyph: (None)
    # @font:
    # @glyph:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_draw_glyph_vfunc(impl_method_name)
      private def self._vfunc_draw_glyph(%this : Pointer(Void), lib_font :  Pointer(Void), lib_glyph :  UInt32, lib_x :  Float64, lib_y :  Float64, ) : Void
        # @font: 
# @glyph: 
# @x: 
# @y: 

# Generator::BuiltInTypeArgPlan
font=Pango::Font.new(lib_font, GICrystal::Transfer::None)
glyph=lib_glyph
x=lib_x
y=lib_y


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(font, glyph, x, y)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_glyph(Pointer(Void), Pointer(Void), UInt32, Float64, Float64)).pointer
        previous_def
      end
    end

    # draw_glyph: (None)
    # @font:
    # @glyph:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_glyph_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_glyph(%this : Pointer(Void), lib_font :  Pointer(Void), lib_glyph :  UInt32, lib_x :  Float64, lib_y :  Float64, ) : Void
# @font: 
# @glyph: 
# @x: 
# @y: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_font, lib_glyph, lib_x, lib_y)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_glyph = Proc(Pointer(Void), Pointer(Void), UInt32, Float64, Float64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_glyph(Pointer(Void), Pointer(Void), UInt32, Float64, Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_glyph : Proc(Pointer(Void), Pointer(Void), UInt32, Float64, Float64, Void)? = nil
    end

    # draw_glyph_item: (None)
    # @text: (nullable)
    # @glyph_item:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_draw_glyph_item_vfunc(impl_method_name)
      private def self._vfunc_draw_glyph_item(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_glyph_item :  Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
        # @text: (nullable) 
# @glyph_item: 
# @x: 
# @y: 

# Generator::NullableArrayPlan
text=(lib_text.null? ? nil : ::String.new(lib_text))
# Generator::BuiltInTypeArgPlan
text=::String.new(lib_text) unless lib_text.null?
# Generator::BuiltInTypeArgPlan
glyph_item=Pango::GlyphItem.new(lib_glyph_item, GICrystal::Transfer::None)
x=lib_x
y=lib_y


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, glyph_item, x, y)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_glyph_item(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # draw_glyph_item: (None)
    # @text: (nullable)
    # @glyph_item:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_glyph_item_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_glyph_item(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_glyph_item :  Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
# @text: (nullable) 
# @glyph_item: 
# @x: 
# @y: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_glyph_item, lib_x, lib_y)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_glyph_item = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_glyph_item(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_glyph_item : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Int32, Int32, Void)? = nil
    end

    # draw_glyphs: (None)
    # @font:
    # @glyphs:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_draw_glyphs_vfunc(impl_method_name)
      private def self._vfunc_draw_glyphs(%this : Pointer(Void), lib_font :  Pointer(Void), lib_glyphs :  Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
        # @font: 
# @glyphs: 
# @x: 
# @y: 

# Generator::BuiltInTypeArgPlan
font=Pango::Font.new(lib_font, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
glyphs=Pango::GlyphString.new(lib_glyphs, GICrystal::Transfer::None)
x=lib_x
y=lib_y


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(font, glyphs, x, y)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_glyphs(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # draw_glyphs: (None)
    # @font:
    # @glyphs:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_glyphs_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_glyphs(%this : Pointer(Void), lib_font :  Pointer(Void), lib_glyphs :  Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
# @font: 
# @glyphs: 
# @x: 
# @y: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_font, lib_glyphs, lib_x, lib_y)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_glyphs = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_glyphs(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_glyphs : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32, Int32, Void)? = nil
    end

    # draw_rectangle: (None)
    # @part:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_draw_rectangle_vfunc(impl_method_name)
      private def self._vfunc_draw_rectangle(%this : Pointer(Void), lib_part :  UInt32, lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
        # @part: 
# @x: 
# @y: 
# @width: 
# @height: 

# Generator::BuiltInTypeArgPlan
part=Pango::RenderPart.new(lib_part)
x=lib_x
y=lib_y
width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(part, x, y, width, height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_rectangle(Pointer(Void), UInt32, Int32, Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # draw_rectangle: (None)
    # @part:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_rectangle_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_rectangle(%this : Pointer(Void), lib_part :  UInt32, lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
# @part: 
# @x: 
# @y: 
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_part, lib_x, lib_y, lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_rectangle = Proc(Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_rectangle(Pointer(Void), UInt32, Int32, Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_rectangle : Proc(Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Void)? = nil
    end

    # draw_shape: (None)
    # @attr:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_draw_shape_vfunc(impl_method_name)
      private def self._vfunc_draw_shape(%this : Pointer(Void), lib_attr :  Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
        # @attr: 
# @x: 
# @y: 

# Generator::BuiltInTypeArgPlan
attr=Pango::AttrShape.new(lib_attr, GICrystal::Transfer::None)
x=lib_x
y=lib_y


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attr, x, y)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_shape(Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # draw_shape: (None)
    # @attr:
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_shape_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_shape(%this : Pointer(Void), lib_attr :  Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
# @attr: 
# @x: 
# @y: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attr, lib_x, lib_y)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_shape = Proc(Pointer(Void), Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_shape(Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_shape : Proc(Pointer(Void), Pointer(Void), Int32, Int32, Void)? = nil
    end

    # draw_trapezoid: (None)
    # @part:
    # @y1_:
    # @x11:
    # @x21:
    # @y2:
    # @x12:
    # @x22:
    # Returns: (transfer none)
    private macro _register_draw_trapezoid_vfunc(impl_method_name)
      private def self._vfunc_draw_trapezoid(%this : Pointer(Void), lib_part :  UInt32, lib_y1_ :  Float64, lib_x11 :  Float64, lib_x21 :  Float64, lib_y2 :  Float64, lib_x12 :  Float64, lib_x22 :  Float64, ) : Void
        # @part: 
# @y1_: 
# @x11: 
# @x21: 
# @y2: 
# @x12: 
# @x22: 

# Generator::BuiltInTypeArgPlan
part=Pango::RenderPart.new(lib_part)
y1_=lib_y1_
x11=lib_x11
x21=lib_x21
y2=lib_y2
x12=lib_x12
x22=lib_x22


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(part, y1_, x11, x21, y2, x12, x22)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_draw_trapezoid(Pointer(Void), UInt32, Float64, Float64, Float64, Float64, Float64, Float64)).pointer
        previous_def
      end
    end

    # draw_trapezoid: (None)
    # @part:
    # @y1_:
    # @x11:
    # @x21:
    # @y2:
    # @x12:
    # @x22:
    # Returns: (transfer none)
    private macro _register_unsafe_draw_trapezoid_vfunc(impl_method_name)
      private def self._vfunc_unsafe_draw_trapezoid(%this : Pointer(Void), lib_part :  UInt32, lib_y1_ :  Float64, lib_x11 :  Float64, lib_x21 :  Float64, lib_y2 :  Float64, lib_x12 :  Float64, lib_x22 :  Float64, ) : Void
# @part: 
# @y1_: 
# @x11: 
# @x21: 
# @y2: 
# @x12: 
# @x22: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_part, lib_y1_, lib_x11, lib_x21, lib_y2, lib_x12, lib_x22)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_draw_trapezoid = Proc(Pointer(Void), UInt32, Float64, Float64, Float64, Float64, Float64, Float64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_draw_trapezoid(Pointer(Void), UInt32, Float64, Float64, Float64, Float64, Float64, Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_draw_trapezoid : Proc(Pointer(Void), UInt32, Float64, Float64, Float64, Float64, Float64, Float64, Void)? = nil
    end

    # end: (None)
    # Returns: (transfer none)
    private macro _register_end_vfunc(impl_method_name)
      private def self._vfunc_end(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_end(Pointer(Void))).pointer
        previous_def
      end
    end

    # end: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_end_vfunc(impl_method_name)
      private def self._vfunc_unsafe_end(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_end = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_end(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_end : Proc(Pointer(Void), Void)? = nil
    end

    # part_changed: (None)
    # @part:
    # Returns: (transfer none)
    private macro _register_part_changed_vfunc(impl_method_name)
      private def self._vfunc_part_changed(%this : Pointer(Void), lib_part :  UInt32, ) : Void
        # @part: 

# Generator::BuiltInTypeArgPlan
part=Pango::RenderPart.new(lib_part)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(part)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_part_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # part_changed: (None)
    # @part:
    # Returns: (transfer none)
    private macro _register_unsafe_part_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_part_changed(%this : Pointer(Void), lib_part :  UInt32, ) : Void
# @part: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_part)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_part_changed = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_part_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_part_changed : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # prepare_run: (None)
    # @run:
    # Returns: (transfer none)
    private macro _register_prepare_run_vfunc(impl_method_name)
      private def self._vfunc_prepare_run(%this : Pointer(Void), lib_run :  Pointer(Void), ) : Void
        # @run: 

# Generator::BuiltInTypeArgPlan
run=Pango::GlyphItem.new(lib_run, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(run)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_prepare_run(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # prepare_run: (None)
    # @run:
    # Returns: (transfer none)
    private macro _register_unsafe_prepare_run_vfunc(impl_method_name)
      private def self._vfunc_unsafe_prepare_run(%this : Pointer(Void), lib_run :  Pointer(Void), ) : Void
# @run: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_run)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_prepare_run = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_prepare_run(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_prepare_run : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
