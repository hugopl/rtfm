require "../g_object-2.0/object"
require "../gio-2.0/list_model"

require "./section_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class SliceListModel < GObject::Object
    include Gio::ListModel
    include SectionModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SliceListModelClass), class_init,
        sizeof(LibGtk::SliceListModel), instance_init, 0)
    end

    GICrystal.declare_new_method(SliceListModel, g_object_get_qdata)

    # Initialize a new `SliceListModel`.
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

    def initialize(*, item_type : UInt64? = nil, model : Gio::ListModel? = nil, n_items : UInt32? = nil, offset : UInt32? = nil, size : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

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
      if !offset.nil?
        (_names.to_unsafe + _n).value = "offset".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, offset)
        _n += 1
      end
      if !size.nil?
        (_names.to_unsafe + _n).value = "size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, size)
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
      @@g_type ||= LibGtk.gtk_slice_list_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::SliceListModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def offset=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "offset", unsafe_value, Pointer(Void).null)
      value
    end

    def offset : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "offset", pointerof(value), Pointer(Void).null)
      value
    end

    def size=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "size", unsafe_value, Pointer(Void).null)
      value
    end

    def size : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "size", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(model : Gio::ListModel?, offset : UInt32, size : UInt32) : self
      # gtk_slice_list_model_new: (Constructor)
      # @model: (transfer full) (nullable)
      # @offset:
      # @size:
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
      _retval = LibGtk.gtk_slice_list_model_new(model, offset, size)

      # Return value handling
      Gtk::SliceListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def model : Gio::ListModel?
      # gtk_slice_list_model_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_slice_list_model_get_model(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def offset : UInt32
      # gtk_slice_list_model_get_offset: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_slice_list_model_get_offset(to_unsafe)

      # Return value handling
      _retval
    end

    def size : UInt32
      # gtk_slice_list_model_get_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_slice_list_model_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def model=(model : Gio::ListModel?) : Nil
      # gtk_slice_list_model_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_slice_list_model_set_model(to_unsafe, model)

      # Return value handling
    end

    def offset=(offset : UInt32) : Nil
      # gtk_slice_list_model_set_offset: (Method | Setter)
      # @offset:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_slice_list_model_set_offset(to_unsafe, offset)

      # Return value handling
    end

    def size=(size : UInt32) : Nil
      # gtk_slice_list_model_set_size: (Method | Setter)
      # @size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_slice_list_model_set_size(to_unsafe, size)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
