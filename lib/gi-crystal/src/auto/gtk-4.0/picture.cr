require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Picture < Widget
    include Accessible
    include Buildable
    include ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::PictureClass), class_init,
        sizeof(LibGtk::Picture), instance_init, 0)
    end

    GICrystal.declare_new_method(Picture, g_object_get_qdata)

    # Initialize a new `Picture`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, alternative_text : ::String? = nil, can_focus : Bool? = nil, can_shrink : Bool? = nil, can_target : Bool? = nil, content_fit : Gtk::ContentFit? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, file : Gio::File? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, keep_aspect_ratio : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, paintable : Gdk::Paintable? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[42]
      _values = StaticArray(LibGObject::Value, 42).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !alternative_text.nil?
        (_names.to_unsafe + _n).value = "alternative-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, alternative_text)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_shrink.nil?
        (_names.to_unsafe + _n).value = "can-shrink".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_shrink)
        _n += 1
      end
      if !can_target.nil?
        (_names.to_unsafe + _n).value = "can-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_target)
        _n += 1
      end
      if !content_fit.nil?
        (_names.to_unsafe + _n).value = "content-fit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content_fit)
        _n += 1
      end
      if !css_classes.nil?
        (_names.to_unsafe + _n).value = "css-classes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_classes)
        _n += 1
      end
      if !css_name.nil?
        (_names.to_unsafe + _n).value = "css-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_name)
        _n += 1
      end
      if !cursor.nil?
        (_names.to_unsafe + _n).value = "cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor)
        _n += 1
      end
      if !file.nil?
        (_names.to_unsafe + _n).value = "file".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, file)
        _n += 1
      end
      if !focus_on_click.nil?
        (_names.to_unsafe + _n).value = "focus-on-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_on_click)
        _n += 1
      end
      if !focusable.nil?
        (_names.to_unsafe + _n).value = "focusable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focusable)
        _n += 1
      end
      if !halign.nil?
        (_names.to_unsafe + _n).value = "halign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, halign)
        _n += 1
      end
      if !has_default.nil?
        (_names.to_unsafe + _n).value = "has-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_default)
        _n += 1
      end
      if !has_focus.nil?
        (_names.to_unsafe + _n).value = "has-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_focus)
        _n += 1
      end
      if !has_tooltip.nil?
        (_names.to_unsafe + _n).value = "has-tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_tooltip)
        _n += 1
      end
      if !height_request.nil?
        (_names.to_unsafe + _n).value = "height-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height_request)
        _n += 1
      end
      if !hexpand.nil?
        (_names.to_unsafe + _n).value = "hexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand)
        _n += 1
      end
      if !hexpand_set.nil?
        (_names.to_unsafe + _n).value = "hexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand_set)
        _n += 1
      end
      if !keep_aspect_ratio.nil?
        (_names.to_unsafe + _n).value = "keep-aspect-ratio".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, keep_aspect_ratio)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !limit_events.nil?
        (_names.to_unsafe + _n).value = "limit-events".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, limit_events)
        _n += 1
      end
      if !margin_bottom.nil?
        (_names.to_unsafe + _n).value = "margin-bottom".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_bottom)
        _n += 1
      end
      if !margin_end.nil?
        (_names.to_unsafe + _n).value = "margin-end".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_end)
        _n += 1
      end
      if !margin_start.nil?
        (_names.to_unsafe + _n).value = "margin-start".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_start)
        _n += 1
      end
      if !margin_top.nil?
        (_names.to_unsafe + _n).value = "margin-top".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_top)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !opacity.nil?
        (_names.to_unsafe + _n).value = "opacity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, opacity)
        _n += 1
      end
      if !overflow.nil?
        (_names.to_unsafe + _n).value = "overflow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overflow)
        _n += 1
      end
      if !paintable.nil?
        (_names.to_unsafe + _n).value = "paintable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, paintable)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !root.nil?
        (_names.to_unsafe + _n).value = "root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, root)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_markup)
        _n += 1
      end
      if !tooltip_text.nil?
        (_names.to_unsafe + _n).value = "tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_text)
        _n += 1
      end
      if !valign.nil?
        (_names.to_unsafe + _n).value = "valign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valign)
        _n += 1
      end
      if !vexpand.nil?
        (_names.to_unsafe + _n).value = "vexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand)
        _n += 1
      end
      if !vexpand_set.nil?
        (_names.to_unsafe + _n).value = "vexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand_set)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
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
      @@g_type ||= LibGtk.gtk_picture_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Picture.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def alternative_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "alternative-text", unsafe_value, Pointer(Void).null)
      value
    end

    def alternative_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "alternative-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#alternative_text` property to nil.
    def alternative_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "alternative-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#alternative_text`, but can return nil.
    def alternative_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "alternative-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def can_shrink=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-shrink", unsafe_value, Pointer(Void).null)
      value
    end

    def can_shrink? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-shrink", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def content_fit=(value : Gtk::ContentFit) : Gtk::ContentFit
      unsafe_value = value

      LibGObject.g_object_set(self, "content-fit", unsafe_value, Pointer(Void).null)
      value
    end

    def content_fit : Gtk::ContentFit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "content-fit", pointerof(value), Pointer(Void).null)
      Gtk::ContentFit.new(value)
    end

    def file=(value : Gio::File?) : Gio::File?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "file", unsafe_value, Pointer(Void).null)
      value
    end

    def file : Gio::File?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "file", pointerof(value), Pointer(Void).null)
      Gio::AbstractFile.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def keep_aspect_ratio=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "keep-aspect-ratio", unsafe_value, Pointer(Void).null)
      value
    end

    def keep_aspect_ratio? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "keep-aspect-ratio", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def paintable=(value : Gdk::Paintable?) : Gdk::Paintable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "paintable", unsafe_value, Pointer(Void).null)
      value
    end

    def paintable : Gdk::Paintable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "paintable", pointerof(value), Pointer(Void).null)
      Gdk::AbstractPaintable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # gtk_picture_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_picture_new

      # Return value handling
      Gtk::Picture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_file(file : Gio::File?) : self
      # gtk_picture_new_for_file: (Constructor)
      # @file: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_picture_new_for_file(file)

      # Return value handling
      Gtk::Picture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_filename(filename : ::String?) : self
      # gtk_picture_new_for_filename: (Constructor)
      # @filename: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filename = if filename.nil?
                   Pointer(LibC::Char).null
                 else
                   filename.to_unsafe
                 end

      # C call
      _retval = LibGtk.gtk_picture_new_for_filename(filename)

      # Return value handling
      Gtk::Picture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_paintable(paintable : Gdk::Paintable?) : self
      # gtk_picture_new_for_paintable: (Constructor)
      # @paintable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_picture_new_for_paintable(paintable)

      # Return value handling
      Gtk::Picture.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_for_pixbuf(pixbuf : GdkPixbuf::Pixbuf?) : self
      # gtk_picture_new_for_pixbuf: (Constructor)
      # @pixbuf: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      pixbuf = if pixbuf.nil?
                 Pointer(Void).null
               else
                 pixbuf.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_picture_new_for_pixbuf(pixbuf)

      # Return value handling
      Gtk::Picture.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_resource(resource_path : ::String?) : self
      # gtk_picture_new_for_resource: (Constructor)
      # @resource_path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      resource_path = if resource_path.nil?
                        Pointer(LibC::Char).null
                      else
                        resource_path.to_unsafe
                      end

      # C call
      _retval = LibGtk.gtk_picture_new_for_resource(resource_path)

      # Return value handling
      Gtk::Picture.new(_retval, GICrystal::Transfer::Full)
    end

    def alternative_text : ::String?
      # gtk_picture_get_alternative_text: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_picture_get_alternative_text(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def can_shrink : Bool
      # gtk_picture_get_can_shrink: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_picture_get_can_shrink(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def content_fit : Gtk::ContentFit
      # gtk_picture_get_content_fit: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_picture_get_content_fit(to_unsafe)

      # Return value handling
      Gtk::ContentFit.new(_retval)
    end

    def file : Gio::File?
      # gtk_picture_get_file: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_picture_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def keep_aspect_ratio : Bool
      # gtk_picture_get_keep_aspect_ratio: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_picture_get_keep_aspect_ratio(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def paintable : Gdk::Paintable?
      # gtk_picture_get_paintable: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_picture_get_paintable(to_unsafe)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def alternative_text=(alternative_text : ::String?) : Nil
      # gtk_picture_set_alternative_text: (Method | Setter)
      # @alternative_text: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      alternative_text = if alternative_text.nil?
                           Pointer(LibC::Char).null
                         else
                           alternative_text.to_unsafe
                         end

      # C call
      LibGtk.gtk_picture_set_alternative_text(to_unsafe, alternative_text)

      # Return value handling
    end

    def can_shrink=(can_shrink : Bool) : Nil
      # gtk_picture_set_can_shrink: (Method | Setter)
      # @can_shrink:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_picture_set_can_shrink(to_unsafe, can_shrink)

      # Return value handling
    end

    def content_fit=(content_fit : Gtk::ContentFit) : Nil
      # gtk_picture_set_content_fit: (Method | Setter)
      # @content_fit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_picture_set_content_fit(to_unsafe, content_fit)

      # Return value handling
    end

    def file=(file : Gio::File?) : Nil
      # gtk_picture_set_file: (Method | Setter)
      # @file: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      LibGtk.gtk_picture_set_file(to_unsafe, file)

      # Return value handling
    end

    def filename=(filename : ::String?) : Nil
      # gtk_picture_set_filename: (Method)
      # @filename: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filename = if filename.nil?
                   Pointer(LibC::Char).null
                 else
                   filename.to_unsafe
                 end

      # C call
      LibGtk.gtk_picture_set_filename(to_unsafe, filename)

      # Return value handling
    end

    @[Deprecated]
    def keep_aspect_ratio=(keep_aspect_ratio : Bool) : Nil
      # gtk_picture_set_keep_aspect_ratio: (Method | Setter)
      # @keep_aspect_ratio:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_picture_set_keep_aspect_ratio(to_unsafe, keep_aspect_ratio)

      # Return value handling
    end

    def paintable=(paintable : Gdk::Paintable?) : Nil
      # gtk_picture_set_paintable: (Method | Setter)
      # @paintable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      LibGtk.gtk_picture_set_paintable(to_unsafe, paintable)

      # Return value handling
    end

    @[Deprecated]
    def pixbuf=(pixbuf : GdkPixbuf::Pixbuf?) : Nil
      # gtk_picture_set_pixbuf: (Method)
      # @pixbuf: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      pixbuf = if pixbuf.nil?
                 Pointer(Void).null
               else
                 pixbuf.to_unsafe
               end

      # C call
      LibGtk.gtk_picture_set_pixbuf(to_unsafe, pixbuf)

      # Return value handling
    end

    def resource=(resource_path : ::String?) : Nil
      # gtk_picture_set_resource: (Method)
      # @resource_path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      resource_path = if resource_path.nil?
                        Pointer(LibC::Char).null
                      else
                        resource_path.to_unsafe
                      end

      # C call
      LibGtk.gtk_picture_set_resource(to_unsafe, resource_path)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
