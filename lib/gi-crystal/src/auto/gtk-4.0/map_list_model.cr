require "../g_object-2.0/object"
require "../gio-2.0/list_model"

require "./section_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class MapListModel < GObject::Object
    include Gio::ListModel
    include SectionModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::MapListModelClass), class_init,
        sizeof(LibGtk::MapListModel), instance_init, 0)
    end

    GICrystal.declare_new_method(MapListModel, g_object_get_qdata)

    # Initialize a new `MapListModel`.
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

    def initialize(*, has_map : Bool? = nil, item_type : UInt64? = nil, model : Gio::ListModel? = nil, n_items : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !has_map.nil?
        (_names.to_unsafe + _n).value = "has-map".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_map)
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
      @@g_type ||= LibGtk.gtk_map_list_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::MapListModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def has_map? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-map", pointerof(value), Pointer(Void).null)
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

    def self.new(model : Gio::ListModel?, map_func : Gtk::MapListModelMapFunc?) : self
      # gtk_map_list_model_new: (Constructor)
      # @model: (transfer full) (nullable)
      # @map_func: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(model)
      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end
      # Generator::CallbackArgPlan
      if map_func
        _box = ::Box.box(map_func)
        map_func = ->(lib_item : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::TransferFullArgPlan
          # Generator::BuiltInTypeArgPlan
          item = GObject::Object.new(lib_item, GICrystal::Transfer::Full)
          ::Box(Proc(GObject::Object, GObject::Object)).unbox(lib_user_data).call(item)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        map_func = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_map_list_model_new(model, map_func, user_data, user_destroy)

      # Return value handling
      Gtk::MapListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def model : Gio::ListModel?
      # gtk_map_list_model_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_map_list_model_get_model(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def has_map : Bool
      # gtk_map_list_model_has_map: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_map_list_model_has_map(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def map_func=(map_func : Gtk::MapListModelMapFunc?) : Nil
      # gtk_map_list_model_set_map_func: (Method)
      # @map_func: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if map_func
        _box = ::Box.box(map_func)
        map_func = ->(lib_item : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::TransferFullArgPlan
          # Generator::BuiltInTypeArgPlan
          item = GObject::Object.new(lib_item, GICrystal::Transfer::Full)
          ::Box(Proc(GObject::Object, GObject::Object)).unbox(lib_user_data).call(item)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        map_func = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_map_list_model_set_map_func(to_unsafe, map_func, user_data, user_destroy)

      # Return value handling
    end

    def model=(model : Gio::ListModel?) : Nil
      # gtk_map_list_model_set_model: (Method)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_map_list_model_set_model(to_unsafe, model)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
