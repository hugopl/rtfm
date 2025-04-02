require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeSelection < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TreeSelection, g_object_get_qdata)

    # Initialize a new `TreeSelection`.
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

    def initialize(*, mode : Gtk::SelectionMode? = nil)
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
      @@g_type ||= LibGtk.gtk_tree_selection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeSelection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def mode=(value : Gtk::SelectionMode) : Gtk::SelectionMode
      unsafe_value = value

      LibGObject.g_object_set(self, "mode", unsafe_value, Pointer(Void).null)
      value
    end

    def mode : Gtk::SelectionMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "mode", pointerof(value), Pointer(Void).null)
      Gtk::SelectionMode.new(value)
    end

    @[Deprecated]
    def count_selected_rows : Int32
      # gtk_tree_selection_count_selected_rows: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_selection_count_selected_rows(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def mode : Gtk::SelectionMode
      # gtk_tree_selection_get_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_selection_get_mode(to_unsafe)

      # Return value handling
      Gtk::SelectionMode.new(_retval)
    end

    @[Deprecated]
    def selected : Gtk::TreeIter
      # gtk_tree_selection_get_selected: (Method)
      # @model: (out) (optional)
      # @iter: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      model = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      iter = Pointer(Void).null           # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_selection_get_selected(to_unsafe, model, iter)

      # Return value handling
      iter
    end

    @[Deprecated]
    def selected_rows : GLib::List
      # gtk_tree_selection_get_selected_rows: (Method)
      # @model: (out) (optional)
      # Returns: (transfer full)

      # Generator::OutArgUsedInReturnPlan
      model = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGtk.gtk_tree_selection_get_selected_rows(to_unsafe, model)

      # Return value handling
      GLib::List(Gtk::TreePath).new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def tree_view : Gtk::TreeView
      # gtk_tree_selection_get_tree_view: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_selection_get_tree_view(to_unsafe)

      # Return value handling
      Gtk::TreeView.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def iter_is_selected(iter : Gtk::TreeIter) : Bool
      # gtk_tree_selection_iter_is_selected: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_selection_iter_is_selected(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def path_is_selected(path : Gtk::TreePath) : Bool
      # gtk_tree_selection_path_is_selected: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_selection_path_is_selected(to_unsafe, path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def select_all : Nil
      # gtk_tree_selection_select_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_select_all(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def select_iter(iter : Gtk::TreeIter) : Nil
      # gtk_tree_selection_select_iter: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_select_iter(to_unsafe, iter)

      # Return value handling
    end

    @[Deprecated]
    def select_path(path : Gtk::TreePath) : Nil
      # gtk_tree_selection_select_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_select_path(to_unsafe, path)

      # Return value handling
    end

    @[Deprecated]
    def select_range(start_path : Gtk::TreePath, end_path : Gtk::TreePath) : Nil
      # gtk_tree_selection_select_range: (Method)
      # @start_path:
      # @end_path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_select_range(to_unsafe, start_path, end_path)

      # Return value handling
    end

    @[Deprecated]
    def selected_foreach(func : Gtk::TreeSelectionForeachFunc, data : Pointer(Void)?) : Nil
      # gtk_tree_selection_selected_foreach: (Method)
      # @func:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGtk.gtk_tree_selection_selected_foreach(to_unsafe, func, data)

      # Return value handling
    end

    @[Deprecated]
    def mode=(type : Gtk::SelectionMode) : Nil
      # gtk_tree_selection_set_mode: (Method | Setter)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_set_mode(to_unsafe, type)

      # Return value handling
    end

    @[Deprecated]
    def select_function=(func : Gtk::TreeSelectionFunc?) : Nil
      # gtk_tree_selection_set_select_function: (Method)
      # @func: (nullable)
      # @data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_selection : Pointer(Void), lib_model : Pointer(Void), lib_path : Pointer(Void), lib_path_currently_selected : LibC::Int, lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          selection = Gtk::TreeSelection.new(lib_selection, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path_currently_selected = GICrystal.to_bool(lib_path_currently_selected)
          ::Box(Proc(Gtk::TreeSelection, Gtk::TreeModel, Gtk::TreePath, Bool, Bool)).unbox(lib_data).call(selection, model, path, path_currently_selected)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_selection_set_select_function(to_unsafe, func, data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def unselect_all : Nil
      # gtk_tree_selection_unselect_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_unselect_all(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def unselect_iter(iter : Gtk::TreeIter) : Nil
      # gtk_tree_selection_unselect_iter: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_unselect_iter(to_unsafe, iter)

      # Return value handling
    end

    @[Deprecated]
    def unselect_path(path : Gtk::TreePath) : Nil
      # gtk_tree_selection_unselect_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_unselect_path(to_unsafe, path)

      # Return value handling
    end

    @[Deprecated]
    def unselect_range(start_path : Gtk::TreePath, end_path : Gtk::TreePath) : Nil
      # gtk_tree_selection_unselect_range: (Method)
      # @start_path:
      # @end_path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_selection_unselect_range(to_unsafe, start_path, end_path)

      # Return value handling
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeSelection, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeSelection.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeSelection, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
