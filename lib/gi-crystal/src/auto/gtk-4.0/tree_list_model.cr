require "../g_object-2.0/object"
require "../gio-2.0/list_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeListModel < GObject::Object
    include Gio::ListModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TreeListModelClass), class_init,
        sizeof(LibGtk::TreeListModel), instance_init, 0)
    end

    GICrystal.declare_new_method(TreeListModel, g_object_get_qdata)

    # Initialize a new `TreeListModel`.
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

    def initialize(*, autoexpand : Bool? = nil, item_type : UInt64? = nil, model : Gio::ListModel? = nil, n_items : UInt32? = nil, passthrough : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !autoexpand.nil?
        (_names.to_unsafe + _n).value = "autoexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, autoexpand)
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
      if !passthrough.nil?
        (_names.to_unsafe + _n).value = "passthrough".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, passthrough)
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
      @@g_type ||= LibGtk.gtk_tree_list_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeListModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def autoexpand=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "autoexpand", unsafe_value, Pointer(Void).null)
      value
    end

    def autoexpand? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "autoexpand", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def item_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "item-type", pointerof(value), Pointer(Void).null)
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

    def passthrough=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "passthrough", unsafe_value, Pointer(Void).null)
      value
    end

    def passthrough? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "passthrough", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(root : Gio::ListModel, passthrough : Bool, autoexpand : Bool, create_func : Gtk::TreeListModelCreateModelFunc) : self
      # gtk_tree_list_model_new: (Constructor)
      # @root: (transfer full)
      # @passthrough:
      # @autoexpand:
      # @create_func:
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(root)
      # Generator::CallbackArgPlan
      if create_func
        _box = ::Box.box(create_func)
        create_func = ->(lib_item : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          item = GObject::Object.new(lib_item, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Gio::ListModel)).unbox(lib_user_data).call(item)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        create_func = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_tree_list_model_new(root, passthrough, autoexpand, create_func, user_data, user_destroy)

      # Return value handling
      Gtk::TreeListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def autoexpand : Bool
      # gtk_tree_list_model_get_autoexpand: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_list_model_get_autoexpand(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child_row(position : UInt32) : Gtk::TreeListRow?
      # gtk_tree_list_model_get_child_row: (Method)
      # @position:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_list_model_get_child_row(to_unsafe, position)

      # Return value handling
      Gtk::TreeListRow.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def model : Gio::ListModel
      # gtk_tree_list_model_get_model: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_list_model_get_model(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None)
    end

    def passthrough : Bool
      # gtk_tree_list_model_get_passthrough: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_list_model_get_passthrough(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def row(position : UInt32) : Gtk::TreeListRow?
      # gtk_tree_list_model_get_row: (Method)
      # @position:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_list_model_get_row(to_unsafe, position)

      # Return value handling
      Gtk::TreeListRow.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def autoexpand=(autoexpand : Bool) : Nil
      # gtk_tree_list_model_set_autoexpand: (Method | Setter)
      # @autoexpand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_list_model_set_autoexpand(to_unsafe, autoexpand)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
