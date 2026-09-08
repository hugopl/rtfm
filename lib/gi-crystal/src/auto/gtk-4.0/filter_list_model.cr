require "../g_object-2.0/object"
require "../gio-2.0/list_model"

require "./section_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FilterListModel < GObject::Object
    include Gio::ListModel
    include SectionModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FilterListModelClass), class_init,
        sizeof(LibGtk::FilterListModel), instance_init, 0)
    end

    GICrystal.declare_new_method(FilterListModel, g_object_get_qdata)

    # Initialize a new `FilterListModel`.
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

    def initialize(*, filter : Gtk::Filter? = nil, incremental : Bool? = nil, item_type : UInt64? = nil, model : Gio::ListModel? = nil, n_items : UInt32? = nil, pending : UInt32? = nil, watch_items : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[7]
      _values = StaticArray(LibGObject::Value, 7).new(LibGObject::Value.new)
      _n = 0

      if !filter.nil?
        (_names.to_unsafe + _n).value = "filter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filter)
        _n += 1
      end
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
      if !watch_items.nil?
        (_names.to_unsafe + _n).value = "watch-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, watch_items)
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
      @@g_type ||= LibGtk.gtk_filter_list_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FilterListModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def filter=(value : Gtk::Filter?) : Gtk::Filter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "filter", unsafe_value, Pointer(Void).null)
      value
    end

    def filter : Gtk::Filter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filter", pointerof(value), Pointer(Void).null)
      Gtk::Filter.new(value, GICrystal::Transfer::None) unless value.null?
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

    def watch_items=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "watch-items", unsafe_value, Pointer(Void).null)
      value
    end

    def watch_items? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "watch-items", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(model : Gio::ListModel?, filter : Gtk::Filter?) : self
      # gtk_filter_list_model_new: (Constructor)
      # @model: (transfer full) (nullable)
      # @filter: (transfer full) (nullable)
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
      GICrystal.ref(filter)
      # Generator::NullableArrayPlan
      filter = if filter.nil?
                 Pointer(Void).null
               else
                 filter.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_filter_list_model_new(model, filter)

      # Return value handling
      Gtk::FilterListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def filter : Gtk::Filter?
      # gtk_filter_list_model_get_filter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_filter_list_model_get_filter(to_unsafe)

      # Return value handling
      Gtk::Filter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def incremental : Bool
      # gtk_filter_list_model_get_incremental: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_filter_list_model_get_incremental(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def model : Gio::ListModel?
      # gtk_filter_list_model_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_filter_list_model_get_model(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def pending : UInt32
      # gtk_filter_list_model_get_pending: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_filter_list_model_get_pending(to_unsafe)

      # Return value handling
      _retval
    end

    def watch_items : Bool
      # gtk_filter_list_model_get_watch_items: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_filter_list_model_get_watch_items(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def filter=(filter : Gtk::Filter?) : Nil
      # gtk_filter_list_model_set_filter: (Method | Setter)
      # @filter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filter = if filter.nil?
                 Pointer(Void).null
               else
                 filter.to_unsafe
               end

      # C call
      LibGtk.gtk_filter_list_model_set_filter(to_unsafe, filter)

      # Return value handling
    end

    def incremental=(incremental : Bool) : Nil
      # gtk_filter_list_model_set_incremental: (Method | Setter)
      # @incremental:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_filter_list_model_set_incremental(to_unsafe, incremental)

      # Return value handling
    end

    def model=(model : Gio::ListModel?) : Nil
      # gtk_filter_list_model_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_filter_list_model_set_model(to_unsafe, model)

      # Return value handling
    end

    def watch_items=(watch_items : Bool) : Nil
      # gtk_filter_list_model_set_watch_items: (Method | Setter)
      # @watch_items:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_filter_list_model_set_watch_items(to_unsafe, watch_items)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
