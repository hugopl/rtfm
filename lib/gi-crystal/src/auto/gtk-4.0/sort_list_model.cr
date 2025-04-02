require "../g_object-2.0/object"
require "../gio-2.0/list_model"

require "./section_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class SortListModel < GObject::Object
    include Gio::ListModel
    include SectionModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SortListModelClass), class_init,
        sizeof(LibGtk::SortListModel), instance_init, 0)
    end

    GICrystal.declare_new_method(SortListModel, g_object_get_qdata)

    # Initialize a new `SortListModel`.
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

    def initialize(*, incremental : Bool? = nil, item_type : UInt64? = nil, model : Gio::ListModel? = nil, n_items : UInt32? = nil, pending : UInt32? = nil, section_sorter : Gtk::Sorter? = nil, sorter : Gtk::Sorter? = nil)
      _names = uninitialized Pointer(LibC::Char)[7]
      _values = StaticArray(LibGObject::Value, 7).new(LibGObject::Value.new)
      _n = 0

      if !incremental.nil?
        (_names.to_unsafe + _n).value = "incremental".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, incremental)
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
      if !pending.nil?
        (_names.to_unsafe + _n).value = "pending".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pending)
        _n += 1
      end
      if !section_sorter.nil?
        (_names.to_unsafe + _n).value = "section-sorter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, section_sorter)
        _n += 1
      end
      if !sorter.nil?
        (_names.to_unsafe + _n).value = "sorter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sorter)
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
      @@g_type ||= LibGtk.gtk_sort_list_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::SortListModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def incremental=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "incremental", unsafe_value, Pointer(Void).null)
      value
    end

    def incremental? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "incremental", pointerof(value), Pointer(Void).null)
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

    def pending : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "pending", pointerof(value), Pointer(Void).null)
      value
    end

    def section_sorter=(value : Gtk::Sorter?) : Gtk::Sorter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "section-sorter", unsafe_value, Pointer(Void).null)
      value
    end

    def section_sorter : Gtk::Sorter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "section-sorter", pointerof(value), Pointer(Void).null)
      Gtk::Sorter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def sorter=(value : Gtk::Sorter?) : Gtk::Sorter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "sorter", unsafe_value, Pointer(Void).null)
      value
    end

    def sorter : Gtk::Sorter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sorter", pointerof(value), Pointer(Void).null)
      Gtk::Sorter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(model : Gio::ListModel?, sorter : Gtk::Sorter?) : self
      # gtk_sort_list_model_new: (Constructor)
      # @model: (transfer full) (nullable)
      # @sorter: (transfer full) (nullable)
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(model)
      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end
      # Generator::TransferFullArgPlan
      GICrystal.ref(sorter)
      # Generator::NullableArrayPlan
      sorter = if sorter.nil?
                 Pointer(Void).null
               else
                 sorter.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_sort_list_model_new(model, sorter)

      # Return value handling
      Gtk::SortListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def incremental : Bool
      # gtk_sort_list_model_get_incremental: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_sort_list_model_get_incremental(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def model : Gio::ListModel?
      # gtk_sort_list_model_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_sort_list_model_get_model(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def pending : UInt32
      # gtk_sort_list_model_get_pending: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_sort_list_model_get_pending(to_unsafe)

      # Return value handling
      _retval
    end

    def section_sorter : Gtk::Sorter?
      # gtk_sort_list_model_get_section_sorter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_sort_list_model_get_section_sorter(to_unsafe)

      # Return value handling
      Gtk::Sorter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def sorter : Gtk::Sorter?
      # gtk_sort_list_model_get_sorter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_sort_list_model_get_sorter(to_unsafe)

      # Return value handling
      Gtk::Sorter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def incremental=(incremental : Bool) : Nil
      # gtk_sort_list_model_set_incremental: (Method | Setter)
      # @incremental:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_sort_list_model_set_incremental(to_unsafe, incremental)

      # Return value handling
    end

    def model=(model : Gio::ListModel?) : Nil
      # gtk_sort_list_model_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_sort_list_model_set_model(to_unsafe, model)

      # Return value handling
    end

    def section_sorter=(sorter : Gtk::Sorter?) : Nil
      # gtk_sort_list_model_set_section_sorter: (Method | Setter)
      # @sorter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sorter = if sorter.nil?
                 Pointer(Void).null
               else
                 sorter.to_unsafe
               end

      # C call
      LibGtk.gtk_sort_list_model_set_section_sorter(to_unsafe, sorter)

      # Return value handling
    end

    def sorter=(sorter : Gtk::Sorter?) : Nil
      # gtk_sort_list_model_set_sorter: (Method | Setter)
      # @sorter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sorter = if sorter.nil?
                 Pointer(Void).null
               else
                 sorter.to_unsafe
               end

      # C call
      LibGtk.gtk_sort_list_model_set_sorter(to_unsafe, sorter)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
