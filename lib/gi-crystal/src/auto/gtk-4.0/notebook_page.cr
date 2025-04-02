require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class NotebookPage < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(NotebookPage, g_object_get_qdata)

    # Initialize a new `NotebookPage`.
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

    def initialize(*, child : Gtk::Widget? = nil, detachable : Bool? = nil, menu : Gtk::Widget? = nil, menu_label : ::String? = nil, position : Int32? = nil, reorderable : Bool? = nil, tab : Gtk::Widget? = nil, tab_expand : Bool? = nil, tab_fill : Bool? = nil, tab_label : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
        _n += 1
      end
      if !detachable.nil?
        (_names.to_unsafe + _n).value = "detachable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, detachable)
        _n += 1
      end
      if !menu.nil?
        (_names.to_unsafe + _n).value = "menu".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menu)
        _n += 1
      end
      if !menu_label.nil?
        (_names.to_unsafe + _n).value = "menu-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menu_label)
        _n += 1
      end
      if !position.nil?
        (_names.to_unsafe + _n).value = "position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, position)
        _n += 1
      end
      if !reorderable.nil?
        (_names.to_unsafe + _n).value = "reorderable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reorderable)
        _n += 1
      end
      if !tab.nil?
        (_names.to_unsafe + _n).value = "tab".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tab)
        _n += 1
      end
      if !tab_expand.nil?
        (_names.to_unsafe + _n).value = "tab-expand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tab_expand)
        _n += 1
      end
      if !tab_fill.nil?
        (_names.to_unsafe + _n).value = "tab-fill".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tab_fill)
        _n += 1
      end
      if !tab_label.nil?
        (_names.to_unsafe + _n).value = "tab-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tab_label)
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
      @@g_type ||= LibGtk.gtk_notebook_page_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::NotebookPage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def detachable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "detachable", unsafe_value, Pointer(Void).null)
      value
    end

    def detachable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "detachable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def menu=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "menu", unsafe_value, Pointer(Void).null)
      value
    end

    def menu : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "menu", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def menu_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "menu-label", unsafe_value, Pointer(Void).null)
      value
    end

    def menu_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "menu-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#menu_label` property to nil.
    def menu_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "menu-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#menu_label`, but can return nil.
    def menu_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "menu-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def position=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "position", unsafe_value, Pointer(Void).null)
      value
    end

    def position : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "position", pointerof(value), Pointer(Void).null)
      value
    end

    def reorderable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reorderable", unsafe_value, Pointer(Void).null)
      value
    end

    def reorderable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reorderable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tab=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tab", unsafe_value, Pointer(Void).null)
      value
    end

    def tab : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tab", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def tab_expand=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "tab-expand", unsafe_value, Pointer(Void).null)
      value
    end

    def tab_expand? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "tab-expand", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tab_fill=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "tab-fill", unsafe_value, Pointer(Void).null)
      value
    end

    def tab_fill? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "tab-fill", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tab_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tab-label", unsafe_value, Pointer(Void).null)
      value
    end

    def tab_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tab-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tab_label` property to nil.
    def tab_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tab-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tab_label`, but can return nil.
    def tab_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tab-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def child : Gtk::Widget
      # gtk_notebook_page_get_child: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_page_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
