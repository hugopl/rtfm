require "../g_object-2.0/object"
require "../gdk-4.0/paintable"

require "../gtk-4.0/symbolic_paintable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class SpinnerPaintable < GObject::Object
    include Gdk::Paintable
    include Gtk::SymbolicPaintable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SpinnerPaintable, g_object_get_qdata)

    # Initialize a new `SpinnerPaintable`.
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

    def initialize(*, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !widget.nil?
        (_names.to_unsafe + _n).value = "widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, widget)
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
      @@g_type ||= LibAdw.adw_spinner_paintable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::SpinnerPaintable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "widget", unsafe_value, Pointer(Void).null)
      value
    end

    def widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(widget : Gtk::Widget?) : self
      # adw_spinner_paintable_new: (Constructor)
      # @widget: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      _retval = LibAdw.adw_spinner_paintable_new(widget)

      # Return value handling
      Adw::SpinnerPaintable.new(_retval, GICrystal::Transfer::Full)
    end

    def widget : Gtk::Widget?
      # adw_spinner_paintable_get_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_spinner_paintable_get_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def widget=(widget : Gtk::Widget?) : Nil
      # adw_spinner_paintable_set_widget: (Method | Setter)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibAdw.adw_spinner_paintable_set_widget(to_unsafe, widget)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
