require "../g_object-2.0/object"
require "../gio-2.0/list_model"

require "./section_model"

require "./selection_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class SingleSelection < GObject::Object
    include Gio::ListModel
    include SectionModel
    include SelectionModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SingleSelectionClass), class_init,
        sizeof(LibGtk::SingleSelection), instance_init, 0)
    end

    GICrystal.declare_new_method(SingleSelection, g_object_get_qdata)

    # Initialize a new `SingleSelection`.
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

    def initialize(*, autoselect : Bool? = nil, can_unselect : Bool? = nil, item_type : UInt64? = nil, model : Gio::ListModel? = nil, n_items : UInt32? = nil, selected : UInt32? = nil, selected_item : GObject::Object? = nil)
      _names = uninitialized Pointer(LibC::Char)[7]
      _values = StaticArray(LibGObject::Value, 7).new(LibGObject::Value.new)
      _n = 0

      if !autoselect.nil?
        (_names.to_unsafe + _n).value = "autoselect".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, autoselect)
        _n += 1
      end
      if !can_unselect.nil?
        (_names.to_unsafe + _n).value = "can-unselect".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_unselect)
        _n += 1
      end
      if !item_type.nil?
        (_names.to_unsafe + _n).value = "item-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_type)
        _n += 1
      end
      if !model.nil?
        (_names.to_unsafe + _n).value = "model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, model)
        _n += 1
      end
      if !n_items.nil?
        (_names.to_unsafe + _n).value = "n-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_items)
        _n += 1
      end
      if !selected.nil?
        (_names.to_unsafe + _n).value = "selected".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected)
        _n += 1
      end
      if !selected_item.nil?
        (_names.to_unsafe + _n).value = "selected-item".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected_item)
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
      @@g_type ||= LibGtk.gtk_single_selection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::SingleSelection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def autoselect=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "autoselect", unsafe_value, Pointer(Void).null)
      value
    end

    def autoselect? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "autoselect", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def can_unselect=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-unselect", unsafe_value, Pointer(Void).null)
      value
    end

    def can_unselect? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-unselect", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def item_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "item-type", pointerof(value), Pointer(Void).null)
      value
    end

    def model=(value : Gio::ListModel?) : Gio::ListModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "model", unsafe_value, Pointer(Void).null)
      value
    end

    def model : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def selected=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "selected", unsafe_value, Pointer(Void).null)
      value
    end

    def selected : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "selected", pointerof(value), Pointer(Void).null)
      value
    end

    def selected_item : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "selected-item", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(model : Gio::ListModel?) : self
      # gtk_single_selection_new: (Constructor)
      # @model: (transfer full) (nullable)
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(model)
      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_single_selection_new(model)

      # Return value handling
      Gtk::SingleSelection.new(_retval, GICrystal::Transfer::Full)
    end

    def autoselect : Bool
      # gtk_single_selection_get_autoselect: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_single_selection_get_autoselect(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_unselect : Bool
      # gtk_single_selection_get_can_unselect: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_single_selection_get_can_unselect(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def model : Gio::ListModel?
      # gtk_single_selection_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_single_selection_get_model(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def selected : UInt32
      # gtk_single_selection_get_selected: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_single_selection_get_selected(to_unsafe)

      # Return value handling
      _retval
    end

    def selected_item : GObject::Object?
      # gtk_single_selection_get_selected_item: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_single_selection_get_selected_item(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def autoselect=(autoselect : Bool) : Nil
      # gtk_single_selection_set_autoselect: (Method | Setter)
      # @autoselect:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_single_selection_set_autoselect(to_unsafe, autoselect)

      # Return value handling
    end

    def can_unselect=(can_unselect : Bool) : Nil
      # gtk_single_selection_set_can_unselect: (Method | Setter)
      # @can_unselect:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_single_selection_set_can_unselect(to_unsafe, can_unselect)

      # Return value handling
    end

    def model=(model : Gio::ListModel?) : Nil
      # gtk_single_selection_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_single_selection_set_model(to_unsafe, model)

      # Return value handling
    end

    def selected=(position : UInt32) : Nil
      # gtk_single_selection_set_selected: (Method | Setter)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_single_selection_set_selected(to_unsafe, position)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
