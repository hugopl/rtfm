require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class IconTheme < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(IconTheme, g_object_get_qdata)

    # Initialize a new `IconTheme`.
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

    def initialize(*, display : Gdk::Display? = nil, icon_names : Enumerable(::String)? = nil, resource_path : Enumerable(::String)? = nil, search_path : Enumerable(::String)? = nil, theme_name : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !icon_names.nil?
        (_names.to_unsafe + _n).value = "icon-names".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_names)
        _n += 1
      end
      if !resource_path.nil?
        (_names.to_unsafe + _n).value = "resource-path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resource_path)
        _n += 1
      end
      if !search_path.nil?
        (_names.to_unsafe + _n).value = "search-path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, search_path)
        _n += 1
      end
      if !theme_name.nil?
        (_names.to_unsafe + _n).value = "theme-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, theme_name)
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
      @@g_type ||= LibGtk.gtk_icon_theme_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::IconTheme.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def icon_names : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "icon-names", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def resource_path=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "resource-path", unsafe_value, Pointer(Void).null)
      value
    end

    def resource_path : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "resource-path", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def search_path=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "search-path", unsafe_value, Pointer(Void).null)
      value
    end

    def search_path : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "search-path", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def theme_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "theme-name", unsafe_value, Pointer(Void).null)
      value
    end

    def theme_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#theme_name` property to nil.
    def theme_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "theme-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#theme_name`, but can return nil.
    def theme_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # gtk_icon_theme_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_icon_theme_new

      # Return value handling
      Gtk::IconTheme.new(_retval, GICrystal::Transfer::Full)
    end

    def self.for_display(display : Gdk::Display) : Gtk::IconTheme
      # gtk_icon_theme_get_for_display: (None)
      # @display:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_theme_get_for_display(display)

      # Return value handling
      Gtk::IconTheme.new(_retval, GICrystal::Transfer::None)
    end

    def add_resource_path(path : ::String) : Nil
      # gtk_icon_theme_add_resource_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_theme_add_resource_path(to_unsafe, path)

      # Return value handling
    end

    def add_search_path(path : ::String) : Nil
      # gtk_icon_theme_add_search_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_theme_add_search_path(to_unsafe, path)

      # Return value handling
    end

    def display : Gdk::Display?
      # gtk_icon_theme_get_display: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_icon_theme_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def icon_names : Enumerable(::String)
      # gtk_icon_theme_get_icon_names: (Method | Getter)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_icon_theme_get_icon_names(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def icon_sizes(icon_name : ::String) : Enumerable(Int32)
      # gtk_icon_theme_get_icon_sizes: (Method)
      # @icon_name:
      # Returns: (transfer full) (array zero-terminated=1 element-type Int32)

      # C call
      _retval = LibGtk.gtk_icon_theme_get_icon_sizes(to_unsafe, icon_name)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def resource_path : Enumerable(::String)?
      # gtk_icon_theme_get_resource_path: (Method | Getter)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_icon_theme_get_resource_path(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def search_path : Enumerable(::String)?
      # gtk_icon_theme_get_search_path: (Method | Getter)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Filename)

      # C call
      _retval = LibGtk.gtk_icon_theme_get_search_path(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def theme_name : ::String
      # gtk_icon_theme_get_theme_name: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_icon_theme_get_theme_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def has_gicon(gicon : Gio::Icon) : Bool
      # gtk_icon_theme_has_gicon: (Method)
      # @gicon:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_theme_has_gicon(to_unsafe, gicon)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_icon(icon_name : ::String) : Bool
      # gtk_icon_theme_has_icon: (Method)
      # @icon_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_theme_has_icon(to_unsafe, icon_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def lookup_by_gicon(icon : Gio::Icon, size : Int32, scale : Int32, direction : Gtk::TextDirection, flags : Gtk::IconLookupFlags) : Gtk::IconPaintable
      # gtk_icon_theme_lookup_by_gicon: (Method)
      # @icon:
      # @size:
      # @scale:
      # @direction:
      # @flags:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_icon_theme_lookup_by_gicon(to_unsafe, icon, size, scale, direction, flags)

      # Return value handling
      Gtk::IconPaintable.new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_icon(icon_name : ::String, fallbacks : Enumerable(::String)?, size : Int32, scale : Int32, direction : Gtk::TextDirection, flags : Gtk::IconLookupFlags) : Gtk::IconPaintable
      # gtk_icon_theme_lookup_icon: (Method)
      # @icon_name:
      # @fallbacks: (nullable) (array zero-terminated=1 element-type Utf8)
      # @size:
      # @scale:
      # @direction:
      # @flags:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      fallbacks = if fallbacks.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    fallbacks.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end

      # C call
      _retval = LibGtk.gtk_icon_theme_lookup_icon(to_unsafe, icon_name, fallbacks, size, scale, direction, flags)

      # Return value handling
      Gtk::IconPaintable.new(_retval, GICrystal::Transfer::Full)
    end

    def resource_path=(path : Enumerable(::String)?) : Nil
      # gtk_icon_theme_set_resource_path: (Method | Setter)
      # @path: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(Pointer(LibC::Char)).null
             else
               path.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
             end

      # C call
      LibGtk.gtk_icon_theme_set_resource_path(to_unsafe, path)

      # Return value handling
    end

    def search_path=(path : Enumerable(::String)?) : Nil
      # gtk_icon_theme_set_search_path: (Method | Setter)
      # @path: (nullable) (array zero-terminated=1 element-type Filename)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(Pointer(LibC::Char)).null
             else
               path.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
             end

      # C call
      LibGtk.gtk_icon_theme_set_search_path(to_unsafe, path)

      # Return value handling
    end

    def theme_name=(theme_name : ::String?) : Nil
      # gtk_icon_theme_set_theme_name: (Method | Setter)
      # @theme_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      theme_name = if theme_name.nil?
                     Pointer(LibC::Char).null
                   else
                     theme_name.to_unsafe
                   end

      # C call
      LibGtk.gtk_icon_theme_set_theme_name(to_unsafe, theme_name)

      # Return value handling
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::IconTheme, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconTheme.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconTheme, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
