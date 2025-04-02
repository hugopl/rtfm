require "../g_object-2.0/object"
require "../gio-2.0/list_model"

require "../gtk-4.0/selection_model"

module Adw
  @[GICrystal::GeneratedWrapper]
  class ViewStackPages < GObject::Object
    include Gio::ListModel
    include Gtk::SelectionModel

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ViewStackPages, g_object_get_qdata)

    # Initialize a new `ViewStackPages`.
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

    def initialize(*, selected_page : Adw::ViewStackPage? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !selected_page.nil?
        (_names.to_unsafe + _n).value = "selected-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected_page)
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
      @@g_type ||= LibAdw.adw_view_stack_pages_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::ViewStackPages.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def selected_page=(value : Adw::ViewStackPage?) : Adw::ViewStackPage?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "selected-page", unsafe_value, Pointer(Void).null)
      value
    end

    def selected_page : Adw::ViewStackPage?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "selected-page", pointerof(value), Pointer(Void).null)
      Adw::ViewStackPage.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def selected_page : Adw::ViewStackPage?
      # adw_view_stack_pages_get_selected_page: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_view_stack_pages_get_selected_page(to_unsafe)

      # Return value handling
      Adw::ViewStackPage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def selected_page=(page : Adw::ViewStackPage) : Nil
      # adw_view_stack_pages_set_selected_page: (Method | Setter)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_pages_set_selected_page(to_unsafe, page)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
