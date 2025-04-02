require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Image < Widget
    include Accessible
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Image, g_object_get_qdata)

    # Initialize a new `Image`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, file : ::String? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, gicon : Gio::Icon? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, icon_name : ::String? = nil, icon_size : Gtk::IconSize? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, paintable : Gdk::Paintable? = nil, parent : Gtk::Widget? = nil, pixel_size : Int32? = nil, receives_default : Bool? = nil, resource : ::String? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, storage_type : Gtk::ImageType? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, use_fallback : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[45]
      _values = StaticArray(LibGObject::Value, 45).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_target.nil?
        (_names.to_unsafe + _n).value = "can-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_target)
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
      if !gicon.nil?
        (_names.to_unsafe + _n).value = "gicon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gicon)
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
      if !icon_name.nil?
        (_names.to_unsafe + _n).value = "icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_name)
        _n += 1
      end
      if !icon_size.nil?
        (_names.to_unsafe + _n).value = "icon-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_size)
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
      if !pixel_size.nil?
        (_names.to_unsafe + _n).value = "pixel-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixel_size)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !resource.nil?
        (_names.to_unsafe + _n).value = "resource".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resource)
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
      if !storage_type.nil?
        (_names.to_unsafe + _n).value = "storage-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, storage_type)
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
      if !use_fallback.nil?
        (_names.to_unsafe + _n).value = "use-fallback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_fallback)
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
      @@g_type ||= LibGtk.gtk_image_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Image.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def file=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "file", unsafe_value, Pointer(Void).null)
      value
    end

    def file : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "file", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#file` property to nil.
    def file=(value : Nil) : Nil
      LibGObject.g_object_set(self, "file", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#file`, but can return nil.
    def file? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "file", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gicon=(value : Gio::Icon?) : Gio::Icon?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "gicon", unsafe_value, Pointer(Void).null)
      value
    end

    def gicon : Gio::Icon?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "gicon", pointerof(value), Pointer(Void).null)
      Gio::AbstractIcon.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def icon_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "icon-name", unsafe_value, Pointer(Void).null)
      value
    end

    def icon_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#icon_name` property to nil.
    def icon_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "icon-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#icon_name`, but can return nil.
    def icon_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def icon_size=(value : Gtk::IconSize) : Gtk::IconSize
      unsafe_value = value

      LibGObject.g_object_set(self, "icon-size", unsafe_value, Pointer(Void).null)
      value
    end

    def icon_size : Gtk::IconSize
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "icon-size", pointerof(value), Pointer(Void).null)
      Gtk::IconSize.new(value)
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

    def pixel_size=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixel-size", unsafe_value, Pointer(Void).null)
      value
    end

    def pixel_size : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixel-size", pointerof(value), Pointer(Void).null)
      value
    end

    def resource=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "resource", unsafe_value, Pointer(Void).null)
      value
    end

    def resource : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#resource` property to nil.
    def resource=(value : Nil) : Nil
      LibGObject.g_object_set(self, "resource", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#resource`, but can return nil.
    def resource? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def storage_type : Gtk::ImageType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "storage-type", pointerof(value), Pointer(Void).null)
      Gtk::ImageType.new(value)
    end

    def use_fallback=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-fallback", unsafe_value, Pointer(Void).null)
      value
    end

    def use_fallback? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-fallback", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # gtk_image_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_image_new

      # Return value handling
      Gtk::Image.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_file(filename : ::String) : self
      # gtk_image_new_from_file: (Constructor)
      # @filename:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_image_new_from_file(filename)

      # Return value handling
      Gtk::Image.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_gicon(icon : Gio::Icon) : self
      # gtk_image_new_from_gicon: (Constructor)
      # @icon:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_image_new_from_gicon(icon)

      # Return value handling
      Gtk::Image.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_icon_name(icon_name : ::String?) : self
      # gtk_image_new_from_icon_name: (Constructor)
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_image_new_from_icon_name(icon_name)

      # Return value handling
      Gtk::Image.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_paintable(paintable : Gdk::Paintable?) : self
      # gtk_image_new_from_paintable: (Constructor)
      # @paintable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_image_new_from_paintable(paintable)

      # Return value handling
      Gtk::Image.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_from_pixbuf(pixbuf : GdkPixbuf::Pixbuf?) : self
      # gtk_image_new_from_pixbuf: (Constructor)
      # @pixbuf: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      pixbuf = if pixbuf.nil?
                 Pointer(Void).null
               else
                 pixbuf.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_image_new_from_pixbuf(pixbuf)

      # Return value handling
      Gtk::Image.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_resource(resource_path : ::String) : self
      # gtk_image_new_from_resource: (Constructor)
      # @resource_path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_image_new_from_resource(resource_path)

      # Return value handling
      Gtk::Image.new(_retval, GICrystal::Transfer::Full)
    end

    def clear : Nil
      # gtk_image_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_image_clear(to_unsafe)

      # Return value handling
    end

    def gicon : Gio::Icon?
      # gtk_image_get_gicon: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_image_get_gicon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def icon_name : ::String?
      # gtk_image_get_icon_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_image_get_icon_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def icon_size : Gtk::IconSize
      # gtk_image_get_icon_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_image_get_icon_size(to_unsafe)

      # Return value handling
      Gtk::IconSize.new(_retval)
    end

    def paintable : Gdk::Paintable?
      # gtk_image_get_paintable: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_image_get_paintable(to_unsafe)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def pixel_size : Int32
      # gtk_image_get_pixel_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_image_get_pixel_size(to_unsafe)

      # Return value handling
      _retval
    end

    def storage_type : Gtk::ImageType
      # gtk_image_get_storage_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_image_get_storage_type(to_unsafe)

      # Return value handling
      Gtk::ImageType.new(_retval)
    end

    def from_file=(filename : ::String?) : Nil
      # gtk_image_set_from_file: (Method | Setter)
      # @filename: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filename = if filename.nil?
                   Pointer(LibC::Char).null
                 else
                   filename.to_unsafe
                 end

      # C call
      LibGtk.gtk_image_set_from_file(to_unsafe, filename)

      # Return value handling
    end

    def from_gicon=(icon : Gio::Icon) : Nil
      # gtk_image_set_from_gicon: (Method | Setter)
      # @icon:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_image_set_from_gicon(to_unsafe, icon)

      # Return value handling
    end

    def from_icon_name=(icon_name : ::String?) : Nil
      # gtk_image_set_from_icon_name: (Method | Setter)
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      LibGtk.gtk_image_set_from_icon_name(to_unsafe, icon_name)

      # Return value handling
    end

    def from_paintable=(paintable : Gdk::Paintable?) : Nil
      # gtk_image_set_from_paintable: (Method | Setter)
      # @paintable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      LibGtk.gtk_image_set_from_paintable(to_unsafe, paintable)

      # Return value handling
    end

    @[Deprecated]
    def from_pixbuf=(pixbuf : GdkPixbuf::Pixbuf?) : Nil
      # gtk_image_set_from_pixbuf: (Method)
      # @pixbuf: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      pixbuf = if pixbuf.nil?
                 Pointer(Void).null
               else
                 pixbuf.to_unsafe
               end

      # C call
      LibGtk.gtk_image_set_from_pixbuf(to_unsafe, pixbuf)

      # Return value handling
    end

    def from_resource=(resource_path : ::String?) : Nil
      # gtk_image_set_from_resource: (Method | Setter)
      # @resource_path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      resource_path = if resource_path.nil?
                        Pointer(LibC::Char).null
                      else
                        resource_path.to_unsafe
                      end

      # C call
      LibGtk.gtk_image_set_from_resource(to_unsafe, resource_path)

      # Return value handling
    end

    def icon_size=(icon_size : Gtk::IconSize) : Nil
      # gtk_image_set_icon_size: (Method | Setter)
      # @icon_size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_image_set_icon_size(to_unsafe, icon_size)

      # Return value handling
    end

    def pixel_size=(pixel_size : Int32) : Nil
      # gtk_image_set_pixel_size: (Method | Setter)
      # @pixel_size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_image_set_pixel_size(to_unsafe, pixel_size)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
