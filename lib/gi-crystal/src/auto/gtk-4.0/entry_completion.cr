require "../g_object-2.0/object"
require "./buildable"

require "./cell_layout"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class EntryCompletion < GObject::Object
    include Buildable
    include CellLayout

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(EntryCompletion, g_object_get_qdata)

    # Initialize a new `EntryCompletion`.
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

    def initialize(*, cell_area : Gtk::CellArea? = nil, inline_completion : Bool? = nil, inline_selection : Bool? = nil, minimum_key_length : Int32? = nil, model : Gtk::TreeModel? = nil, popup_completion : Bool? = nil, popup_set_width : Bool? = nil, popup_single_match : Bool? = nil, text_column : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !cell_area.nil?
        (_names.to_unsafe + _n).value = "cell-area".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cell_area)
        _n += 1
      end
      if !inline_completion.nil?
        (_names.to_unsafe + _n).value = "inline-completion".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, inline_completion)
        _n += 1
      end
      if !inline_selection.nil?
        (_names.to_unsafe + _n).value = "inline-selection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, inline_selection)
        _n += 1
      end
      if !minimum_key_length.nil?
        (_names.to_unsafe + _n).value = "minimum-key-length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, minimum_key_length)
        _n += 1
      end
      if !model.nil?
        (_names.to_unsafe + _n).value = "model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, model)
        _n += 1
      end
      if !popup_completion.nil?
        (_names.to_unsafe + _n).value = "popup-completion".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, popup_completion)
        _n += 1
      end
      if !popup_set_width.nil?
        (_names.to_unsafe + _n).value = "popup-set-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, popup_set_width)
        _n += 1
      end
      if !popup_single_match.nil?
        (_names.to_unsafe + _n).value = "popup-single-match".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, popup_single_match)
        _n += 1
      end
      if !text_column.nil?
        (_names.to_unsafe + _n).value = "text-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_column)
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
      @@g_type ||= LibGtk.gtk_entry_completion_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::EntryCompletion.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def cell_area=(value : Gtk::CellArea?) : Gtk::CellArea?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "cell-area", unsafe_value, Pointer(Void).null)
      value
    end

    def cell_area : Gtk::CellArea?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "cell-area", pointerof(value), Pointer(Void).null)
      Gtk::CellArea.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def inline_completion=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "inline-completion", unsafe_value, Pointer(Void).null)
      value
    end

    def inline_completion? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "inline-completion", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def inline_selection=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "inline-selection", unsafe_value, Pointer(Void).null)
      value
    end

    def inline_selection? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "inline-selection", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def minimum_key_length=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "minimum-key-length", unsafe_value, Pointer(Void).null)
      value
    end

    def minimum_key_length : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "minimum-key-length", pointerof(value), Pointer(Void).null)
      value
    end

    def model=(value : Gtk::TreeModel?) : Gtk::TreeModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "model", unsafe_value, Pointer(Void).null)
      value
    end

    def model : Gtk::TreeModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      Gtk::AbstractTreeModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def popup_completion=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "popup-completion", unsafe_value, Pointer(Void).null)
      value
    end

    def popup_completion? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "popup-completion", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def popup_set_width=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "popup-set-width", unsafe_value, Pointer(Void).null)
      value
    end

    def popup_set_width? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "popup-set-width", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def popup_single_match=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "popup-single-match", unsafe_value, Pointer(Void).null)
      value
    end

    def popup_single_match? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "popup-single-match", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def text_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "text-column", unsafe_value, Pointer(Void).null)
      value
    end

    def text_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "text-column", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def self.new : self
      # gtk_entry_completion_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_entry_completion_new

      # Return value handling
      Gtk::EntryCompletion.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_area(area : Gtk::CellArea) : self
      # gtk_entry_completion_new_with_area: (Constructor)
      # @area:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_entry_completion_new_with_area(area)

      # Return value handling
      Gtk::EntryCompletion.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def complete : Nil
      # gtk_entry_completion_complete: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_complete(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def compute_prefix(key : ::String) : ::String?
      # gtk_entry_completion_compute_prefix: (Method)
      # @key:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_completion_compute_prefix(to_unsafe, key)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    @[Deprecated]
    def completion_prefix : ::String?
      # gtk_entry_completion_get_completion_prefix: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_completion_prefix(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def entry : Gtk::Widget
      # gtk_entry_completion_get_entry: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_entry(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def inline_completion : Bool
      # gtk_entry_completion_get_inline_completion: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_inline_completion(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def inline_selection : Bool
      # gtk_entry_completion_get_inline_selection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_inline_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def minimum_key_length : Int32
      # gtk_entry_completion_get_minimum_key_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_minimum_key_length(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def model : Gtk::TreeModel?
      # gtk_entry_completion_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def popup_completion : Bool
      # gtk_entry_completion_get_popup_completion: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_popup_completion(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def popup_set_width : Bool
      # gtk_entry_completion_get_popup_set_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_popup_set_width(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def popup_single_match : Bool
      # gtk_entry_completion_get_popup_single_match: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_popup_single_match(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def text_column : Int32
      # gtk_entry_completion_get_text_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_completion_get_text_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def insert_prefix : Nil
      # gtk_entry_completion_insert_prefix: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_insert_prefix(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def inline_completion=(inline_completion : Bool) : Nil
      # gtk_entry_completion_set_inline_completion: (Method | Setter)
      # @inline_completion:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_set_inline_completion(to_unsafe, inline_completion)

      # Return value handling
    end

    @[Deprecated]
    def inline_selection=(inline_selection : Bool) : Nil
      # gtk_entry_completion_set_inline_selection: (Method | Setter)
      # @inline_selection:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_set_inline_selection(to_unsafe, inline_selection)

      # Return value handling
    end

    @[Deprecated]
    def match_func=(func : Gtk::EntryCompletionMatchFunc) : Nil
      # gtk_entry_completion_set_match_func: (Method)
      # @func:
      # @func_data: (nullable)
      # @func_notify:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_completion : Pointer(Void), lib_key : Pointer(LibC::Char), lib_iter : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          completion = Gtk::EntryCompletion.new(lib_completion, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          key = ::String.new(lib_key)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::EntryCompletion, ::String, Gtk::TreeIter, Bool)).unbox(lib_user_data).call(completion, key, iter)
        }.pointer
        func_data = GICrystal::ClosureDataManager.register(_box)
        func_notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = func_data = func_notify = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_entry_completion_set_match_func(to_unsafe, func, func_data, func_notify)

      # Return value handling
    end

    @[Deprecated]
    def minimum_key_length=(length : Int32) : Nil
      # gtk_entry_completion_set_minimum_key_length: (Method | Setter)
      # @length:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_set_minimum_key_length(to_unsafe, length)

      # Return value handling
    end

    @[Deprecated]
    def model=(model : Gtk::TreeModel?) : Nil
      # gtk_entry_completion_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_entry_completion_set_model(to_unsafe, model)

      # Return value handling
    end

    @[Deprecated]
    def popup_completion=(popup_completion : Bool) : Nil
      # gtk_entry_completion_set_popup_completion: (Method | Setter)
      # @popup_completion:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_set_popup_completion(to_unsafe, popup_completion)

      # Return value handling
    end

    @[Deprecated]
    def popup_set_width=(popup_set_width : Bool) : Nil
      # gtk_entry_completion_set_popup_set_width: (Method | Setter)
      # @popup_set_width:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_set_popup_set_width(to_unsafe, popup_set_width)

      # Return value handling
    end

    @[Deprecated]
    def popup_single_match=(popup_single_match : Bool) : Nil
      # gtk_entry_completion_set_popup_single_match: (Method | Setter)
      # @popup_single_match:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_set_popup_single_match(to_unsafe, popup_single_match)

      # Return value handling
    end

    @[Deprecated]
    def text_column=(column : Int32) : Nil
      # gtk_entry_completion_set_text_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_completion_set_text_column(to_unsafe, column)

      # Return value handling
    end

    struct CursorOnMatchSignal < GObject::Signal
      def name : String
        @detail ? "cursor-on-match::#{@detail}" : "cursor-on-match"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreeModel, Gtk::TreeIter, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_model : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)).unbox(_lib_box).call(model, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EntryCompletion, Gtk::TreeModel, Gtk::TreeIter, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_model : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::EntryCompletion.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::EntryCompletion, Gtk::TreeModel, Gtk::TreeIter, Bool)).unbox(_lib_box).call(_sender, model, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(model : Gtk::TreeModel, iter : Gtk::TreeIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "cursor-on-match", model, iter)
      end
    end

    def cursor_on_match_signal
      CursorOnMatchSignal.new(self)
    end

    struct InsertPrefixSignal < GObject::Signal
      def name : String
        @detail ? "insert-prefix::#{@detail}" : "insert-prefix"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_prefix : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          prefix = ::String.new(lib_prefix)
          ::Box(Proc(::String, Bool)).unbox(_lib_box).call(prefix)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EntryCompletion, ::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_prefix : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::EntryCompletion.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          prefix = ::String.new(lib_prefix)
          ::Box(Proc(Gtk::EntryCompletion, ::String, Bool)).unbox(_lib_box).call(_sender, prefix)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(prefix : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "insert-prefix", prefix)
      end
    end

    def insert_prefix_signal
      InsertPrefixSignal.new(self)
    end

    struct MatchSelectedSignal < GObject::Signal
      def name : String
        @detail ? "match-selected::#{@detail}" : "match-selected"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreeModel, Gtk::TreeIter, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_model : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)).unbox(_lib_box).call(model, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EntryCompletion, Gtk::TreeModel, Gtk::TreeIter, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_model : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::EntryCompletion.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::EntryCompletion, Gtk::TreeModel, Gtk::TreeIter, Bool)).unbox(_lib_box).call(_sender, model, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(model : Gtk::TreeModel, iter : Gtk::TreeIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "match-selected", model, iter)
      end
    end

    def match_selected_signal
      MatchSelectedSignal.new(self)
    end

    struct NoMatchesSignal < GObject::Signal
      def name : String
        @detail ? "no-matches::#{@detail}" : "no-matches"
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

      def connect(handler : Proc(Gtk::EntryCompletion, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::EntryCompletion.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::EntryCompletion, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "no-matches")
      end
    end

    def no_matches_signal
      NoMatchesSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
