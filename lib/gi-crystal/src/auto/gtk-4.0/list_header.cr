require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ListHeader < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ListHeaderClass), class_init,
        sizeof(LibGtk::ListHeader), instance_init, 0)
    end

    GICrystal.declare_new_method(ListHeader, g_object_get_qdata)

    # Initialize a new `ListHeader`.
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

    def initialize(*, child : Gtk::Widget? = nil, end _end : UInt32? = nil, item : GObject::Object? = nil, n_items : UInt32? = nil, start : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
        _n += 1
      end
      if !_end.nil?
        (_names.to_unsafe + _n).value = "end".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, _end)
        _n += 1
      end
      if !item.nil?
        (_names.to_unsafe + _n).value = "item".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item)
        _n += 1
      end
      if !n_items.nil?
        (_names.to_unsafe + _n).value = "n-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_items)
        _n += 1
      end
      if !start.nil?
        (_names.to_unsafe + _n).value = "start".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, start)
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
      @@g_type ||= LibGtk.gtk_list_header_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ListHeader.new(Void*, GICrystal::Transfer)
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

    def end : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "end", pointerof(value), Pointer(Void).null)
      value
    end

    def item : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "item", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def start : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "start", pointerof(value), Pointer(Void).null)
      value
    end

    def child : Gtk::Widget?
      # gtk_list_header_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_list_header_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def end : UInt32
      # gtk_list_header_get_end: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_header_get_end(to_unsafe)

      # Return value handling
      _retval
    end

    def item : GObject::Object?
      # gtk_list_header_get_item: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_list_header_get_item(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def n_items : UInt32
      # gtk_list_header_get_n_items: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_header_get_n_items(to_unsafe)

      # Return value handling
      _retval
    end

    def start : UInt32
      # gtk_list_header_get_start: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_header_get_start(to_unsafe)

      # Return value handling
      _retval
    end

    def child=(child : Gtk::Widget?) : Nil
      # gtk_list_header_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibGtk.gtk_list_header_set_child(to_unsafe, child)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
