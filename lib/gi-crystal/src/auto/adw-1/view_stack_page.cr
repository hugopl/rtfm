require "../g_object-2.0/object"
require "../gtk-4.0/accessible"

module Adw
  @[GICrystal::GeneratedWrapper]
  class ViewStackPage < GObject::Object
    include Gtk::Accessible

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ViewStackPage, g_object_get_qdata)

    # Initialize a new `ViewStackPage`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, badge_number : UInt32? = nil, child : Gtk::Widget? = nil, icon_name : ::String? = nil, name : ::String? = nil, needs_attention : Bool? = nil, title : ::String? = nil, use_underline : Bool? = nil, visible : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !badge_number.nil?
        (_names.to_unsafe + _n).value = "badge-number".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, badge_number)
        _n += 1
      end
      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
        _n += 1
      end
      if !icon_name.nil?
        (_names.to_unsafe + _n).value = "icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_name)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !needs_attention.nil?
        (_names.to_unsafe + _n).value = "needs-attention".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, needs_attention)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !use_underline.nil?
        (_names.to_unsafe + _n).value = "use-underline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_underline)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
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
      @@g_type ||= LibAdw.adw_view_stack_page_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::ViewStackPage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def badge_number=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "badge-number", unsafe_value, Pointer(Void).null)
      value
    end

    def badge_number : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "badge-number", pointerof(value), Pointer(Void).null)
      value
    end

    def child=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "child", unsafe_value, Pointer(Void).null)
      value
    end

    def child : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "child", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
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

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def needs_attention=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "needs-attention", unsafe_value, Pointer(Void).null)
      value
    end

    def needs_attention? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "needs-attention", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def title=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "title", unsafe_value, Pointer(Void).null)
      value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#title` property to nil.
    def title=(value : Nil) : Nil
      LibGObject.g_object_set(self, "title", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def use_underline=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-underline", unsafe_value, Pointer(Void).null)
      value
    end

    def use_underline? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-underline", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "visible", unsafe_value, Pointer(Void).null)
      value
    end

    def visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def badge_number : UInt32
      # adw_view_stack_page_get_badge_number: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_badge_number(to_unsafe)

      # Return value handling
      _retval
    end

    def child : Gtk::Widget
      # adw_view_stack_page_get_child: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    def icon_name : ::String?
      # adw_view_stack_page_get_icon_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_icon_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def name : ::String?
      # adw_view_stack_page_get_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def needs_attention : Bool
      # adw_view_stack_page_get_needs_attention: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_needs_attention(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def title : ::String?
      # adw_view_stack_page_get_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def use_underline : Bool
      # adw_view_stack_page_get_use_underline: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_use_underline(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def visible : Bool
      # adw_view_stack_page_get_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_page_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def badge_number=(badge_number : UInt32) : Nil
      # adw_view_stack_page_set_badge_number: (Method | Setter)
      # @badge_number:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_page_set_badge_number(to_unsafe, badge_number)

      # Return value handling
    end

    def icon_name=(icon_name : ::String?) : Nil
      # adw_view_stack_page_set_icon_name: (Method | Setter)
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      LibAdw.adw_view_stack_page_set_icon_name(to_unsafe, icon_name)

      # Return value handling
    end

    def name=(name : ::String?) : Nil
      # adw_view_stack_page_set_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibAdw.adw_view_stack_page_set_name(to_unsafe, name)

      # Return value handling
    end

    def needs_attention=(needs_attention : Bool) : Nil
      # adw_view_stack_page_set_needs_attention: (Method | Setter)
      # @needs_attention:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_page_set_needs_attention(to_unsafe, needs_attention)

      # Return value handling
    end

    def title=(title : ::String?) : Nil
      # adw_view_stack_page_set_title: (Method | Setter)
      # @title: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end

      # C call
      LibAdw.adw_view_stack_page_set_title(to_unsafe, title)

      # Return value handling
    end

    def use_underline=(use_underline : Bool) : Nil
      # adw_view_stack_page_set_use_underline: (Method | Setter)
      # @use_underline:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_page_set_use_underline(to_unsafe, use_underline)

      # Return value handling
    end

    def visible=(visible : Bool) : Nil
      # adw_view_stack_page_set_visible: (Method | Setter)
      # @visible:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_page_set_visible(to_unsafe, visible)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
