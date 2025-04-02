require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WindowProperties < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WindowProperties, g_object_get_qdata)

    # Initialize a new `WindowProperties`.
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

    def initialize(*, fullscreen : Bool? = nil, geometry : Gdk::Rectangle? = nil, locationbar_visible : Bool? = nil, menubar_visible : Bool? = nil, resizable : Bool? = nil, scrollbars_visible : Bool? = nil, statusbar_visible : Bool? = nil, toolbar_visible : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !fullscreen.nil?
        (_names.to_unsafe + _n).value = "fullscreen".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fullscreen)
        _n += 1
      end
      if !geometry.nil?
        (_names.to_unsafe + _n).value = "geometry".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, geometry)
        _n += 1
      end
      if !locationbar_visible.nil?
        (_names.to_unsafe + _n).value = "locationbar-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, locationbar_visible)
        _n += 1
      end
      if !menubar_visible.nil?
        (_names.to_unsafe + _n).value = "menubar-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menubar_visible)
        _n += 1
      end
      if !resizable.nil?
        (_names.to_unsafe + _n).value = "resizable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resizable)
        _n += 1
      end
      if !scrollbars_visible.nil?
        (_names.to_unsafe + _n).value = "scrollbars-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scrollbars_visible)
        _n += 1
      end
      if !statusbar_visible.nil?
        (_names.to_unsafe + _n).value = "statusbar-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, statusbar_visible)
        _n += 1
      end
      if !toolbar_visible.nil?
        (_names.to_unsafe + _n).value = "toolbar-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, toolbar_visible)
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
      @@g_type ||= LibWebKit.webkit_window_properties_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WindowProperties.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def fullscreen=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "fullscreen", unsafe_value, Pointer(Void).null)
      value
    end

    def fullscreen? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "fullscreen", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def geometry=(value : Gdk::Rectangle?) : Gdk::Rectangle?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "geometry", unsafe_value, Pointer(Void).null)
      value
    end

    def geometry : Gdk::Rectangle?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "geometry", pointerof(value), Pointer(Void).null)
      Gdk::Rectangle.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def locationbar_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "locationbar-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def locationbar_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "locationbar-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def menubar_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "menubar-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def menubar_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "menubar-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def resizable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "resizable", unsafe_value, Pointer(Void).null)
      value
    end

    def resizable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "resizable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def scrollbars_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "scrollbars-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def scrollbars_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "scrollbars-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def statusbar_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "statusbar-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def statusbar_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "statusbar-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def toolbar_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "toolbar-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def toolbar_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "toolbar-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def fullscreen : Bool
      # webkit_window_properties_get_fullscreen: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_window_properties_get_fullscreen(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def geometry : Gdk::Rectangle
      # webkit_window_properties_get_geometry: (Method | Getter)
      # @geometry: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      geometry = Gdk::Rectangle.new
      # C call
      LibWebKit.webkit_window_properties_get_geometry(to_unsafe, geometry)

      # Return value handling
      geometry
    end

    def locationbar_visible : Bool
      # webkit_window_properties_get_locationbar_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_window_properties_get_locationbar_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def menubar_visible : Bool
      # webkit_window_properties_get_menubar_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_window_properties_get_menubar_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def resizable : Bool
      # webkit_window_properties_get_resizable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_window_properties_get_resizable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def scrollbars_visible : Bool
      # webkit_window_properties_get_scrollbars_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_window_properties_get_scrollbars_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def statusbar_visible : Bool
      # webkit_window_properties_get_statusbar_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_window_properties_get_statusbar_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def toolbar_visible : Bool
      # webkit_window_properties_get_toolbar_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_window_properties_get_toolbar_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
