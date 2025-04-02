require "../g_object-2.0/object"
require "./buildable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class SizeGroup < GObject::Object
    include Buildable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SizeGroup, g_object_get_qdata)

    # Initialize a new `SizeGroup`.
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

    def initialize(*, mode : Gtk::SizeGroupMode? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !mode.nil?
        (_names.to_unsafe + _n).value = "mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mode)
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
      @@g_type ||= LibGtk.gtk_size_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::SizeGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def mode=(value : Gtk::SizeGroupMode) : Gtk::SizeGroupMode
      unsafe_value = value

      LibGObject.g_object_set(self, "mode", unsafe_value, Pointer(Void).null)
      value
    end

    def mode : Gtk::SizeGroupMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "mode", pointerof(value), Pointer(Void).null)
      Gtk::SizeGroupMode.new(value)
    end

    def self.new(mode : Gtk::SizeGroupMode) : self
      # gtk_size_group_new: (Constructor)
      # @mode:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_size_group_new(mode)

      # Return value handling
      Gtk::SizeGroup.new(_retval, GICrystal::Transfer::Full)
    end

    def add_widget(widget : Gtk::Widget) : Nil
      # gtk_size_group_add_widget: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_size_group_add_widget(to_unsafe, widget)

      # Return value handling
    end

    def mode : Gtk::SizeGroupMode
      # gtk_size_group_get_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_size_group_get_mode(to_unsafe)

      # Return value handling
      Gtk::SizeGroupMode.new(_retval)
    end

    def widgets : GLib::SList
      # gtk_size_group_get_widgets: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_size_group_get_widgets(to_unsafe)

      # Return value handling
      GLib::SList(Gtk::Widget).new(_retval, GICrystal::Transfer::None)
    end

    def remove_widget(widget : Gtk::Widget) : Nil
      # gtk_size_group_remove_widget: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_size_group_remove_widget(to_unsafe, widget)

      # Return value handling
    end

    def mode=(mode : Gtk::SizeGroupMode) : Nil
      # gtk_size_group_set_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_size_group_set_mode(to_unsafe, mode)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
