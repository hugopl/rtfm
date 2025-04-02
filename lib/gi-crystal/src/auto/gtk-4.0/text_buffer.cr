require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TextBuffer < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TextBufferClass), class_init,
        sizeof(LibGtk::TextBuffer), instance_init, 0)
    end

    GICrystal.declare_new_method(TextBuffer, g_object_get_qdata)

    # Initialize a new `TextBuffer`.
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

    def initialize(*, can_redo : Bool? = nil, can_undo : Bool? = nil, cursor_position : Int32? = nil, enable_undo : Bool? = nil, has_selection : Bool? = nil, tag_table : Gtk::TextTagTable? = nil, text : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[7]
      _values = StaticArray(LibGObject::Value, 7).new(LibGObject::Value.new)
      _n = 0

      if !can_redo.nil?
        (_names.to_unsafe + _n).value = "can-redo".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_redo)
        _n += 1
      end
      if !can_undo.nil?
        (_names.to_unsafe + _n).value = "can-undo".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_undo)
        _n += 1
      end
      if !cursor_position.nil?
        (_names.to_unsafe + _n).value = "cursor-position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor_position)
        _n += 1
      end
      if !enable_undo.nil?
        (_names.to_unsafe + _n).value = "enable-undo".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_undo)
        _n += 1
      end
      if !has_selection.nil?
        (_names.to_unsafe + _n).value = "has-selection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_selection)
        _n += 1
      end
      if !tag_table.nil?
        (_names.to_unsafe + _n).value = "tag-table".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tag_table)
        _n += 1
      end
      if !text.nil?
        (_names.to_unsafe + _n).value = "text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text)
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
      @@g_type ||= LibGtk.gtk_text_buffer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TextBuffer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def can_redo? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-redo", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def can_undo? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-undo", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def cursor_position : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "cursor-position", pointerof(value), Pointer(Void).null)
      value
    end

    def enable_undo=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-undo", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_undo? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-undo", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_selection? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-selection", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tag_table=(value : Gtk::TextTagTable?) : Gtk::TextTagTable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tag-table", unsafe_value, Pointer(Void).null)
      value
    end

    def tag_table : Gtk::TextTagTable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tag-table", pointerof(value), Pointer(Void).null)
      Gtk::TextTagTable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "text", unsafe_value, Pointer(Void).null)
      value
    end

    def text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#text` property to nil.
    def text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#text`, but can return nil.
    def text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(table : Gtk::TextTagTable?) : self
      # gtk_text_buffer_new: (Constructor)
      # @table: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      table = if table.nil?
                Pointer(Void).null
              else
                table.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_text_buffer_new(table)

      # Return value handling
      Gtk::TextBuffer.new(_retval, GICrystal::Transfer::Full)
    end

    def add_commit_notify(flags : Gtk::TextBufferNotifyFlags, commit_notify : Gtk::TextBufferCommitNotify) : UInt32
      # gtk_text_buffer_add_commit_notify: (Method)
      # @flags:
      # @commit_notify:
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if commit_notify
        _box = ::Box.box(commit_notify)
        commit_notify = ->(lib_buffer : Pointer(Void), lib_flags : UInt32, lib_position : UInt32, lib_length : UInt32, lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          buffer = Gtk::TextBuffer.new(lib_buffer, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          flags = Gtk::TextBufferNotifyFlags.new(lib_flags)
          # NoStrategy
          position = lib_position
          # NoStrategy
          length = lib_length
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextBufferNotifyFlags, UInt32, UInt32, Nil)).unbox(lib_user_data).call(buffer, flags, position, length)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        commit_notify = user_data = destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_text_buffer_add_commit_notify(to_unsafe, flags, commit_notify, user_data, destroy)

      # Return value handling
      _retval
    end

    def add_mark(mark : Gtk::TextMark, where : Gtk::TextIter) : Nil
      # gtk_text_buffer_add_mark: (Method)
      # @mark:
      # @where:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_add_mark(to_unsafe, mark, where)

      # Return value handling
    end

    def add_selection_clipboard(clipboard : Gdk::Clipboard) : Nil
      # gtk_text_buffer_add_selection_clipboard: (Method)
      # @clipboard:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_add_selection_clipboard(to_unsafe, clipboard)

      # Return value handling
    end

    def apply_tag(tag : Gtk::TextTag, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
      # gtk_text_buffer_apply_tag: (Method)
      # @tag:
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_apply_tag(to_unsafe, tag, start, _end)

      # Return value handling
    end

    def apply_tag_by_name(name : ::String, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
      # gtk_text_buffer_apply_tag_by_name: (Method)
      # @name:
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_apply_tag_by_name(to_unsafe, name, start, _end)

      # Return value handling
    end

    def backspace(iter : Gtk::TextIter, interactive : Bool, default_editable : Bool) : Bool
      # gtk_text_buffer_backspace: (Method)
      # @iter:
      # @interactive:
      # @default_editable:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_backspace(to_unsafe, iter, interactive, default_editable)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def begin_irreversible_action : Nil
      # gtk_text_buffer_begin_irreversible_action: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_begin_irreversible_action(to_unsafe)

      # Return value handling
    end

    def begin_user_action : Nil
      # gtk_text_buffer_begin_user_action: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_begin_user_action(to_unsafe)

      # Return value handling
    end

    def copy_clipboard(clipboard : Gdk::Clipboard) : Nil
      # gtk_text_buffer_copy_clipboard: (Method)
      # @clipboard:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_copy_clipboard(to_unsafe, clipboard)

      # Return value handling
    end

    def create_child_anchor(iter : Gtk::TextIter) : Gtk::TextChildAnchor
      # gtk_text_buffer_create_child_anchor: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_create_child_anchor(to_unsafe, iter)

      # Return value handling
      Gtk::TextChildAnchor.new(_retval, GICrystal::Transfer::None)
    end

    def create_mark(mark_name : ::String?, where : Gtk::TextIter, left_gravity : Bool) : Gtk::TextMark
      # gtk_text_buffer_create_mark: (Method)
      # @mark_name: (nullable)
      # @where:
      # @left_gravity:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mark_name = if mark_name.nil?
                    Pointer(LibC::Char).null
                  else
                    mark_name.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_text_buffer_create_mark(to_unsafe, mark_name, where, left_gravity)

      # Return value handling
      Gtk::TextMark.new(_retval, GICrystal::Transfer::None)
    end

    def cut_clipboard(clipboard : Gdk::Clipboard, default_editable : Bool) : Nil
      # gtk_text_buffer_cut_clipboard: (Method)
      # @clipboard:
      # @default_editable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_cut_clipboard(to_unsafe, clipboard, default_editable)

      # Return value handling
    end

    def delete(start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
      # gtk_text_buffer_delete: (Method)
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_delete(to_unsafe, start, _end)

      # Return value handling
    end

    def delete_interactive(start_iter : Gtk::TextIter, end_iter : Gtk::TextIter, default_editable : Bool) : Bool
      # gtk_text_buffer_delete_interactive: (Method)
      # @start_iter:
      # @end_iter:
      # @default_editable:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_delete_interactive(to_unsafe, start_iter, end_iter, default_editable)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def delete_mark(mark : Gtk::TextMark) : Nil
      # gtk_text_buffer_delete_mark: (Method)
      # @mark:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_delete_mark(to_unsafe, mark)

      # Return value handling
    end

    def delete_mark_by_name(name : ::String) : Nil
      # gtk_text_buffer_delete_mark_by_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_delete_mark_by_name(to_unsafe, name)

      # Return value handling
    end

    def delete_selection(interactive : Bool, default_editable : Bool) : Bool
      # gtk_text_buffer_delete_selection: (Method)
      # @interactive:
      # @default_editable:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_delete_selection(to_unsafe, interactive, default_editable)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def end_irreversible_action : Nil
      # gtk_text_buffer_end_irreversible_action: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_end_irreversible_action(to_unsafe)

      # Return value handling
    end

    def end_user_action : Nil
      # gtk_text_buffer_end_user_action: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_end_user_action(to_unsafe)

      # Return value handling
    end

    def bounds : Gtk::TextIter
      # gtk_text_buffer_get_bounds: (Method)
      # @start: (out) (caller-allocates)
      # @end: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      start = Gtk::TextIter.new # Generator::CallerAllocatesPlan
      _end = Gtk::TextIter.new
      # C call
      LibGtk.gtk_text_buffer_get_bounds(to_unsafe, start, _end)

      # Return value handling
      start
    end

    def can_redo : Bool
      # gtk_text_buffer_get_can_redo: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_can_redo(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_undo : Bool
      # gtk_text_buffer_get_can_undo: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_can_undo(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def char_count : Int32
      # gtk_text_buffer_get_char_count: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_char_count(to_unsafe)

      # Return value handling
      _retval
    end

    def enable_undo : Bool
      # gtk_text_buffer_get_enable_undo: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_enable_undo(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def end_iter : Gtk::TextIter
      # gtk_text_buffer_get_end_iter: (Method)
      # @iter: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      LibGtk.gtk_text_buffer_get_end_iter(to_unsafe, iter)

      # Return value handling
      iter
    end

    def has_selection : Bool
      # gtk_text_buffer_get_has_selection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_has_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def insert : Gtk::TextMark
      # gtk_text_buffer_get_insert: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_insert(to_unsafe)

      # Return value handling
      Gtk::TextMark.new(_retval, GICrystal::Transfer::None)
    end

    def iter_at_child_anchor(anchor : Gtk::TextChildAnchor) : Gtk::TextIter
      # gtk_text_buffer_get_iter_at_child_anchor: (Method)
      # @iter: (out) (caller-allocates)
      # @anchor:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      LibGtk.gtk_text_buffer_get_iter_at_child_anchor(to_unsafe, iter, anchor)

      # Return value handling
      iter
    end

    def iter_at_line(line_number : Int32) : Gtk::TextIter
      # gtk_text_buffer_get_iter_at_line: (Method)
      # @iter: (out) (caller-allocates)
      # @line_number:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      _retval = LibGtk.gtk_text_buffer_get_iter_at_line(to_unsafe, iter, line_number)

      # Return value handling
      iter
    end

    def iter_at_line_index(line_number : Int32, byte_index : Int32) : Gtk::TextIter
      # gtk_text_buffer_get_iter_at_line_index: (Method)
      # @iter: (out) (caller-allocates)
      # @line_number:
      # @byte_index:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      _retval = LibGtk.gtk_text_buffer_get_iter_at_line_index(to_unsafe, iter, line_number, byte_index)

      # Return value handling
      iter
    end

    def iter_at_line_offset(line_number : Int32, char_offset : Int32) : Gtk::TextIter
      # gtk_text_buffer_get_iter_at_line_offset: (Method)
      # @iter: (out) (caller-allocates)
      # @line_number:
      # @char_offset:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      _retval = LibGtk.gtk_text_buffer_get_iter_at_line_offset(to_unsafe, iter, line_number, char_offset)

      # Return value handling
      iter
    end

    def iter_at_mark(mark : Gtk::TextMark) : Gtk::TextIter
      # gtk_text_buffer_get_iter_at_mark: (Method)
      # @iter: (out) (caller-allocates)
      # @mark:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      LibGtk.gtk_text_buffer_get_iter_at_mark(to_unsafe, iter, mark)

      # Return value handling
      iter
    end

    def iter_at_offset(char_offset : Int32) : Gtk::TextIter
      # gtk_text_buffer_get_iter_at_offset: (Method)
      # @iter: (out) (caller-allocates)
      # @char_offset:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      LibGtk.gtk_text_buffer_get_iter_at_offset(to_unsafe, iter, char_offset)

      # Return value handling
      iter
    end

    def line_count : Int32
      # gtk_text_buffer_get_line_count: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_line_count(to_unsafe)

      # Return value handling
      _retval
    end

    def mark(name : ::String) : Gtk::TextMark?
      # gtk_text_buffer_get_mark: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_mark(to_unsafe, name)

      # Return value handling
      Gtk::TextMark.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def max_undo_levels : UInt32
      # gtk_text_buffer_get_max_undo_levels: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_max_undo_levels(to_unsafe)

      # Return value handling
      _retval
    end

    def modified : Bool
      # gtk_text_buffer_get_modified: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_modified(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def selection_bound : Gtk::TextMark
      # gtk_text_buffer_get_selection_bound: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_selection_bound(to_unsafe)

      # Return value handling
      Gtk::TextMark.new(_retval, GICrystal::Transfer::None)
    end

    def selection_bounds : Gtk::TextIter
      # gtk_text_buffer_get_selection_bounds: (Method)
      # @start: (out) (caller-allocates)
      # @end: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      start = Gtk::TextIter.new # Generator::CallerAllocatesPlan
      _end = Gtk::TextIter.new
      # C call
      _retval = LibGtk.gtk_text_buffer_get_selection_bounds(to_unsafe, start, _end)

      # Return value handling
      start
    end

    def selection_content : Gdk::ContentProvider
      # gtk_text_buffer_get_selection_content: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_selection_content(to_unsafe)

      # Return value handling
      Gdk::ContentProvider.new(_retval, GICrystal::Transfer::Full)
    end

    def slice(start : Gtk::TextIter, end _end : Gtk::TextIter, include_hidden_chars : Bool) : ::String
      # gtk_text_buffer_get_slice: (Method)
      # @start:
      # @end:
      # @include_hidden_chars:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_slice(to_unsafe, start, _end, include_hidden_chars)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def start_iter : Gtk::TextIter
      # gtk_text_buffer_get_start_iter: (Method)
      # @iter: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      LibGtk.gtk_text_buffer_get_start_iter(to_unsafe, iter)

      # Return value handling
      iter
    end

    def tag_table : Gtk::TextTagTable
      # gtk_text_buffer_get_tag_table: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_tag_table(to_unsafe)

      # Return value handling
      Gtk::TextTagTable.new(_retval, GICrystal::Transfer::None)
    end

    def text(start : Gtk::TextIter, end _end : Gtk::TextIter, include_hidden_chars : Bool) : ::String
      # gtk_text_buffer_get_text: (Method | Getter)
      # @start:
      # @end:
      # @include_hidden_chars:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_buffer_get_text(to_unsafe, start, _end, include_hidden_chars)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def insert(iter : Gtk::TextIter, text : ::String, len : Int32) : Nil
      # gtk_text_buffer_insert: (Method)
      # @iter:
      # @text:
      # @len:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_insert(to_unsafe, iter, text, len)

      # Return value handling
    end

    def insert_at_cursor(text : ::String, len : Int32) : Nil
      # gtk_text_buffer_insert_at_cursor: (Method)
      # @text:
      # @len:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_insert_at_cursor(to_unsafe, text, len)

      # Return value handling
    end

    def insert_child_anchor(iter : Gtk::TextIter, anchor : Gtk::TextChildAnchor) : Nil
      # gtk_text_buffer_insert_child_anchor: (Method)
      # @iter:
      # @anchor:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_insert_child_anchor(to_unsafe, iter, anchor)

      # Return value handling
    end

    def insert_interactive(iter : Gtk::TextIter, text : ::String, len : Int32, default_editable : Bool) : Bool
      # gtk_text_buffer_insert_interactive: (Method)
      # @iter:
      # @text:
      # @len:
      # @default_editable:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_insert_interactive(to_unsafe, iter, text, len, default_editable)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def insert_interactive_at_cursor(text : ::String, len : Int32, default_editable : Bool) : Bool
      # gtk_text_buffer_insert_interactive_at_cursor: (Method)
      # @text:
      # @len:
      # @default_editable:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_insert_interactive_at_cursor(to_unsafe, text, len, default_editable)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def insert_markup(iter : Gtk::TextIter, markup : ::String, len : Int32) : Nil
      # gtk_text_buffer_insert_markup: (Method)
      # @iter:
      # @markup:
      # @len:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_insert_markup(to_unsafe, iter, markup, len)

      # Return value handling
    end

    def insert_paintable(iter : Gtk::TextIter, paintable : Gdk::Paintable) : Nil
      # gtk_text_buffer_insert_paintable: (Method)
      # @iter:
      # @paintable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_insert_paintable(to_unsafe, iter, paintable)

      # Return value handling
    end

    def insert_range(iter : Gtk::TextIter, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
      # gtk_text_buffer_insert_range: (Method)
      # @iter:
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_insert_range(to_unsafe, iter, start, _end)

      # Return value handling
    end

    def insert_range_interactive(iter : Gtk::TextIter, start : Gtk::TextIter, end _end : Gtk::TextIter, default_editable : Bool) : Bool
      # gtk_text_buffer_insert_range_interactive: (Method)
      # @iter:
      # @start:
      # @end:
      # @default_editable:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_buffer_insert_range_interactive(to_unsafe, iter, start, _end, default_editable)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def move_mark(mark : Gtk::TextMark, where : Gtk::TextIter) : Nil
      # gtk_text_buffer_move_mark: (Method)
      # @mark:
      # @where:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_move_mark(to_unsafe, mark, where)

      # Return value handling
    end

    def move_mark_by_name(name : ::String, where : Gtk::TextIter) : Nil
      # gtk_text_buffer_move_mark_by_name: (Method)
      # @name:
      # @where:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_move_mark_by_name(to_unsafe, name, where)

      # Return value handling
    end

    def paste_clipboard(clipboard : Gdk::Clipboard, override_location : Gtk::TextIter?, default_editable : Bool) : Nil
      # gtk_text_buffer_paste_clipboard: (Method)
      # @clipboard:
      # @override_location: (nullable)
      # @default_editable:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      override_location = if override_location.nil?
                            Pointer(Void).null
                          else
                            override_location.to_unsafe
                          end

      # C call
      LibGtk.gtk_text_buffer_paste_clipboard(to_unsafe, clipboard, override_location, default_editable)

      # Return value handling
    end

    def place_cursor(where : Gtk::TextIter) : Nil
      # gtk_text_buffer_place_cursor: (Method)
      # @where:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_place_cursor(to_unsafe, where)

      # Return value handling
    end

    def redo : Nil
      # gtk_text_buffer_redo: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_redo(to_unsafe)

      # Return value handling
    end

    def remove_all_tags(start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
      # gtk_text_buffer_remove_all_tags: (Method)
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_remove_all_tags(to_unsafe, start, _end)

      # Return value handling
    end

    def remove_commit_notify(commit_notify_handler : UInt32) : Nil
      # gtk_text_buffer_remove_commit_notify: (Method)
      # @commit_notify_handler:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_remove_commit_notify(to_unsafe, commit_notify_handler)

      # Return value handling
    end

    def remove_selection_clipboard(clipboard : Gdk::Clipboard) : Nil
      # gtk_text_buffer_remove_selection_clipboard: (Method)
      # @clipboard:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_remove_selection_clipboard(to_unsafe, clipboard)

      # Return value handling
    end

    def remove_tag(tag : Gtk::TextTag, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
      # gtk_text_buffer_remove_tag: (Method)
      # @tag:
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_remove_tag(to_unsafe, tag, start, _end)

      # Return value handling
    end

    def remove_tag_by_name(name : ::String, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
      # gtk_text_buffer_remove_tag_by_name: (Method)
      # @name:
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_remove_tag_by_name(to_unsafe, name, start, _end)

      # Return value handling
    end

    def select_range(ins : Gtk::TextIter, bound : Gtk::TextIter) : Nil
      # gtk_text_buffer_select_range: (Method)
      # @ins:
      # @bound:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_select_range(to_unsafe, ins, bound)

      # Return value handling
    end

    def enable_undo=(enable_undo : Bool) : Nil
      # gtk_text_buffer_set_enable_undo: (Method | Setter)
      # @enable_undo:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_set_enable_undo(to_unsafe, enable_undo)

      # Return value handling
    end

    def max_undo_levels=(max_undo_levels : UInt32) : Nil
      # gtk_text_buffer_set_max_undo_levels: (Method)
      # @max_undo_levels:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_set_max_undo_levels(to_unsafe, max_undo_levels)

      # Return value handling
    end

    def modified=(setting : Bool) : Nil
      # gtk_text_buffer_set_modified: (Method)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_set_modified(to_unsafe, setting)

      # Return value handling
    end

    def set_text(text : ::String, len : Int32) : Nil
      # gtk_text_buffer_set_text: (Method | Setter)
      # @text:
      # @len:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_set_text(to_unsafe, text, len)

      # Return value handling
    end

    def undo : Nil
      # gtk_text_buffer_undo: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_buffer_undo(to_unsafe)

      # Return value handling
    end

    struct ApplyTagSignal < GObject::Signal
      def name : String
        @detail ? "apply-tag::#{@detail}" : "apply-tag"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil)).unbox(_lib_box).call(tag, start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil)).unbox(_lib_box).call(_sender, tag, start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tag : Gtk::TextTag, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "apply-tag", tag, start, _end)
      end
    end

    def apply_tag_signal
      ApplyTagSignal.new(self)
    end

    struct BeginUserActionSignal < GObject::Signal
      def name : String
        @detail ? "begin-user-action::#{@detail}" : "begin-user-action"
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

      def connect(handler : Proc(Gtk::TextBuffer, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "begin-user-action")
      end
    end

    def begin_user_action_signal
      BeginUserActionSignal.new(self)
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

      def connect(handler : Proc(Gtk::TextBuffer, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Nil)).unbox(_lib_box).call(_sender)
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

    struct DeleteRangeSignal < GObject::Signal
      def name : String
        @detail ? "delete-range::#{@detail}" : "delete-range"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextIter, Gtk::TextIter, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextIter, Gtk::TextIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextIter, Gtk::TextIter, Nil)).unbox(_lib_box).call(start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextIter, Gtk::TextIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextIter, Gtk::TextIter, Nil)).unbox(_lib_box).call(_sender, start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "delete-range", start, _end)
      end
    end

    def delete_range_signal
      DeleteRangeSignal.new(self)
    end

    struct EndUserActionSignal < GObject::Signal
      def name : String
        @detail ? "end-user-action::#{@detail}" : "end-user-action"
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

      def connect(handler : Proc(Gtk::TextBuffer, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "end-user-action")
      end
    end

    def end_user_action_signal
      EndUserActionSignal.new(self)
    end

    struct InsertChildAnchorSignal < GObject::Signal
      def name : String
        @detail ? "insert-child-anchor::#{@detail}" : "insert-child-anchor"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextIter, Gtk::TextChildAnchor, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextIter, Gtk::TextChildAnchor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_anchor : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          anchor = Gtk::TextChildAnchor.new(lib_anchor, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextIter, Gtk::TextChildAnchor, Nil)).unbox(_lib_box).call(location, anchor)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextIter, Gtk::TextChildAnchor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_anchor : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          anchor = Gtk::TextChildAnchor.new(lib_anchor, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextIter, Gtk::TextChildAnchor, Nil)).unbox(_lib_box).call(_sender, location, anchor)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(location : Gtk::TextIter, anchor : Gtk::TextChildAnchor) : Nil
        LibGObject.g_signal_emit_by_name(@source, "insert-child-anchor", location, anchor)
      end
    end

    def insert_child_anchor_signal
      InsertChildAnchorSignal.new(self)
    end

    struct InsertPaintableSignal < GObject::Signal
      def name : String
        @detail ? "insert-paintable::#{@detail}" : "insert-paintable"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextIter, Gdk::Paintable, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextIter, Gdk::Paintable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_paintable : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          paintable = Gdk::AbstractPaintable.new(lib_paintable, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextIter, Gdk::Paintable, Nil)).unbox(_lib_box).call(location, paintable)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextIter, Gdk::Paintable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_paintable : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          paintable = Gdk::AbstractPaintable.new(lib_paintable, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextIter, Gdk::Paintable, Nil)).unbox(_lib_box).call(_sender, location, paintable)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(location : Gtk::TextIter, paintable : Gdk::Paintable) : Nil
        LibGObject.g_signal_emit_by_name(@source, "insert-paintable", location, paintable)
      end
    end

    def insert_paintable_signal
      InsertPaintableSignal.new(self)
    end

    struct InsertTextSignal < GObject::Signal
      def name : String
        @detail ? "insert-text::#{@detail}" : "insert-text"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextIter, ::String, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextIter, ::String, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_text : Pointer(LibC::Char), lib_len : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          text = ::String.new(lib_text)
          # NoStrategy
          len = lib_len
          ::Box(Proc(Gtk::TextIter, ::String, Int32, Nil)).unbox(_lib_box).call(location, text, len)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextIter, ::String, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_text : Pointer(LibC::Char), lib_len : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          text = ::String.new(lib_text)
          # NoStrategy
          len = lib_len
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextIter, ::String, Int32, Nil)).unbox(_lib_box).call(_sender, location, text, len)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(location : Gtk::TextIter, text : ::String, len : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "insert-text", location, text, len)
      end
    end

    def insert_text_signal
      InsertTextSignal.new(self)
    end

    struct MarkDeletedSignal < GObject::Signal
      def name : String
        @detail ? "mark-deleted::#{@detail}" : "mark-deleted"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextMark, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextMark, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mark : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          mark = Gtk::TextMark.new(lib_mark, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextMark, Nil)).unbox(_lib_box).call(mark)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextMark, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mark : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mark = Gtk::TextMark.new(lib_mark, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextMark, Nil)).unbox(_lib_box).call(_sender, mark)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(mark : Gtk::TextMark) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mark-deleted", mark)
      end
    end

    def mark_deleted_signal
      MarkDeletedSignal.new(self)
    end

    struct MarkSetSignal < GObject::Signal
      def name : String
        @detail ? "mark-set::#{@detail}" : "mark-set"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextIter, Gtk::TextMark, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextIter, Gtk::TextMark, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_mark : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mark = Gtk::TextMark.new(lib_mark, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextIter, Gtk::TextMark, Nil)).unbox(_lib_box).call(location, mark)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextIter, Gtk::TextMark, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_location : Pointer(Void), lib_mark : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mark = Gtk::TextMark.new(lib_mark, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextIter, Gtk::TextMark, Nil)).unbox(_lib_box).call(_sender, location, mark)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(location : Gtk::TextIter, mark : Gtk::TextMark) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mark-set", location, mark)
      end
    end

    def mark_set_signal
      MarkSetSignal.new(self)
    end

    struct ModifiedChangedSignal < GObject::Signal
      def name : String
        @detail ? "modified-changed::#{@detail}" : "modified-changed"
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

      def connect(handler : Proc(Gtk::TextBuffer, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "modified-changed")
      end
    end

    def modified_changed_signal
      ModifiedChangedSignal.new(self)
    end

    struct PasteDoneSignal < GObject::Signal
      def name : String
        @detail ? "paste-done::#{@detail}" : "paste-done"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Clipboard, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Clipboard, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_clipboard : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          clipboard = Gdk::Clipboard.new(lib_clipboard, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Clipboard, Nil)).unbox(_lib_box).call(clipboard)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gdk::Clipboard, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_clipboard : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          clipboard = Gdk::Clipboard.new(lib_clipboard, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gdk::Clipboard, Nil)).unbox(_lib_box).call(_sender, clipboard)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(clipboard : Gdk::Clipboard) : Nil
        LibGObject.g_signal_emit_by_name(@source, "paste-done", clipboard)
      end
    end

    def paste_done_signal
      PasteDoneSignal.new(self)
    end

    struct RedoSignal < GObject::Signal
      def name : String
        @detail ? "redo::#{@detail}" : "redo"
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

      def connect(handler : Proc(Gtk::TextBuffer, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "redo")
      end
    end

    def redo_signal
      RedoSignal.new(self)
    end

    struct RemoveTagSignal < GObject::Signal
      def name : String
        @detail ? "remove-tag::#{@detail}" : "remove-tag"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil)).unbox(_lib_box).call(tag, start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextBuffer, Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Gtk::TextTag, Gtk::TextIter, Gtk::TextIter, Nil)).unbox(_lib_box).call(_sender, tag, start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tag : Gtk::TextTag, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "remove-tag", tag, start, _end)
      end
    end

    def remove_tag_signal
      RemoveTagSignal.new(self)
    end

    struct UndoSignal < GObject::Signal
      def name : String
        @detail ? "undo::#{@detail}" : "undo"
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

      def connect(handler : Proc(Gtk::TextBuffer, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextBuffer.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextBuffer, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "undo")
      end
    end

    def undo_signal
      UndoSignal.new(self)
    end

    # apply_tag: (None)
    # @tag:
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_apply_tag_vfunc(impl_method_name)
      private def self._vfunc_apply_tag(%this : Pointer(Void), lib_tag :  Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : Void
        # @tag: 
# @start: 
# @end: 

# Generator::BuiltInTypeArgPlan
tag=Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
start=Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
_end=Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(tag, start, _end)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_apply_tag(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # apply_tag: (None)
    # @tag:
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_unsafe_apply_tag_vfunc(impl_method_name)
      private def self._vfunc_unsafe_apply_tag(%this : Pointer(Void), lib_tag :  Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : Void
# @tag: 
# @start: 
# @end: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_tag, lib_start, lib__end)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_apply_tag = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_apply_tag(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_apply_tag : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # begin_user_action: (None)
    # Returns: (transfer none)
    private macro _register_begin_user_action_vfunc(impl_method_name)
      private def self._vfunc_begin_user_action(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_begin_user_action(Pointer(Void))).pointer
        previous_def
      end
    end

    # begin_user_action: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_begin_user_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_begin_user_action(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_begin_user_action = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_begin_user_action(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_begin_user_action : Proc(Pointer(Void), Void)? = nil
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    # delete_range: (None)
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_delete_range_vfunc(impl_method_name)
      private def self._vfunc_delete_range(%this : Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : Void
        # @start: 
# @end: 

# Generator::BuiltInTypeArgPlan
start=Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
_end=Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start, _end)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_range(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # delete_range: (None)
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_unsafe_delete_range_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_range(%this : Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : Void
# @start: 
# @end: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start, lib__end)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_range = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_range(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_range : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # end_user_action: (None)
    # Returns: (transfer none)
    private macro _register_end_user_action_vfunc(impl_method_name)
      private def self._vfunc_end_user_action(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_end_user_action(Pointer(Void))).pointer
        previous_def
      end
    end

    # end_user_action: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_end_user_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_end_user_action(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_end_user_action = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_end_user_action(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_end_user_action : Proc(Pointer(Void), Void)? = nil
    end

    # insert_child_anchor: (None)
    # @iter:
    # @anchor:
    # Returns: (transfer none)
    private macro _register_insert_child_anchor_vfunc(impl_method_name)
      private def self._vfunc_insert_child_anchor(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_anchor :  Pointer(Void), ) : Void
        # @iter: 
# @anchor: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TextIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
anchor=Gtk::TextChildAnchor.new(lib_anchor, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, anchor)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insert_child_anchor(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # insert_child_anchor: (None)
    # @iter:
    # @anchor:
    # Returns: (transfer none)
    private macro _register_unsafe_insert_child_anchor_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insert_child_anchor(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_anchor :  Pointer(Void), ) : Void
# @iter: 
# @anchor: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_anchor)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insert_child_anchor = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insert_child_anchor(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insert_child_anchor : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # insert_paintable: (None)
    # @iter:
    # @paintable:
    # Returns: (transfer none)
    private macro _register_insert_paintable_vfunc(impl_method_name)
      private def self._vfunc_insert_paintable(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_paintable :  Pointer(Void), ) : Void
        # @iter: 
# @paintable: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TextIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
paintable=Gdk::AbstractPaintable.new(lib_paintable, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, paintable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insert_paintable(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # insert_paintable: (None)
    # @iter:
    # @paintable:
    # Returns: (transfer none)
    private macro _register_unsafe_insert_paintable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insert_paintable(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_paintable :  Pointer(Void), ) : Void
# @iter: 
# @paintable: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_paintable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insert_paintable = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insert_paintable(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insert_paintable : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # insert_text: (None)
    # @pos:
    # @new_text:
    # @new_text_length:
    # Returns: (transfer none)
    private macro _register_insert_text_vfunc(impl_method_name)
      private def self._vfunc_insert_text(%this : Pointer(Void), lib_pos :  Pointer(Void), lib_new_text :  Pointer(LibC::Char), lib_new_text_length :  Int32, ) : Void
        # @pos: 
# @new_text: 
# @new_text_length: 

# Generator::BuiltInTypeArgPlan
pos=Gtk::TextIter.new(lib_pos, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
new_text=::String.new(lib_new_text)
new_text_length=lib_new_text_length


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(pos, new_text, new_text_length)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insert_text(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32)).pointer
        previous_def
      end
    end

    # insert_text: (None)
    # @pos:
    # @new_text:
    # @new_text_length:
    # Returns: (transfer none)
    private macro _register_unsafe_insert_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insert_text(%this : Pointer(Void), lib_pos :  Pointer(Void), lib_new_text :  Pointer(LibC::Char), lib_new_text_length :  Int32, ) : Void
# @pos: 
# @new_text: 
# @new_text_length: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_pos, lib_new_text, lib_new_text_length)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insert_text = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insert_text(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insert_text : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32, Void)? = nil
    end

    # mark_deleted: (None)
    # @mark:
    # Returns: (transfer none)
    private macro _register_mark_deleted_vfunc(impl_method_name)
      private def self._vfunc_mark_deleted(%this : Pointer(Void), lib_mark :  Pointer(Void), ) : Void
        # @mark: 

# Generator::BuiltInTypeArgPlan
mark=Gtk::TextMark.new(lib_mark, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(mark)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mark_deleted(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mark_deleted: (None)
    # @mark:
    # Returns: (transfer none)
    private macro _register_unsafe_mark_deleted_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mark_deleted(%this : Pointer(Void), lib_mark :  Pointer(Void), ) : Void
# @mark: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_mark)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mark_deleted = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mark_deleted(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mark_deleted : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # mark_set: (None)
    # @location:
    # @mark:
    # Returns: (transfer none)
    private macro _register_mark_set_vfunc(impl_method_name)
      private def self._vfunc_mark_set(%this : Pointer(Void), lib_location :  Pointer(Void), lib_mark :  Pointer(Void), ) : Void
        # @location: 
# @mark: 

# Generator::BuiltInTypeArgPlan
location=Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
mark=Gtk::TextMark.new(lib_mark, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(location, mark)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mark_set(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mark_set: (None)
    # @location:
    # @mark:
    # Returns: (transfer none)
    private macro _register_unsafe_mark_set_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mark_set(%this : Pointer(Void), lib_location :  Pointer(Void), lib_mark :  Pointer(Void), ) : Void
# @location: 
# @mark: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_location, lib_mark)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mark_set = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mark_set(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mark_set : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # modified_changed: (None)
    # Returns: (transfer none)
    private macro _register_modified_changed_vfunc(impl_method_name)
      private def self._vfunc_modified_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_modified_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # modified_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_modified_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_modified_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_modified_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_modified_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_modified_changed : Proc(Pointer(Void), Void)? = nil
    end

    # paste_done: (None)
    # @clipboard:
    # Returns: (transfer none)
    private macro _register_paste_done_vfunc(impl_method_name)
      private def self._vfunc_paste_done(%this : Pointer(Void), lib_clipboard :  Pointer(Void), ) : Void
        # @clipboard: 

# Generator::BuiltInTypeArgPlan
clipboard=Gdk::Clipboard.new(lib_clipboard, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(clipboard)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_paste_done(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # paste_done: (None)
    # @clipboard:
    # Returns: (transfer none)
    private macro _register_unsafe_paste_done_vfunc(impl_method_name)
      private def self._vfunc_unsafe_paste_done(%this : Pointer(Void), lib_clipboard :  Pointer(Void), ) : Void
# @clipboard: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_clipboard)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_paste_done = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_paste_done(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_paste_done : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # redo: (None)
    # Returns: (transfer none)
    private macro _register_redo_vfunc(impl_method_name)
      private def self._vfunc_redo(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_redo(Pointer(Void))).pointer
        previous_def
      end
    end

    # redo: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_redo_vfunc(impl_method_name)
      private def self._vfunc_unsafe_redo(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_redo = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_redo(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_redo : Proc(Pointer(Void), Void)? = nil
    end

    # remove_tag: (None)
    # @tag:
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_remove_tag_vfunc(impl_method_name)
      private def self._vfunc_remove_tag(%this : Pointer(Void), lib_tag :  Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : Void
        # @tag: 
# @start: 
# @end: 

# Generator::BuiltInTypeArgPlan
tag=Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
start=Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
_end=Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(tag, start, _end)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_remove_tag(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # remove_tag: (None)
    # @tag:
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_unsafe_remove_tag_vfunc(impl_method_name)
      private def self._vfunc_unsafe_remove_tag(%this : Pointer(Void), lib_tag :  Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : Void
# @tag: 
# @start: 
# @end: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_tag, lib_start, lib__end)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_remove_tag = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_remove_tag(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_remove_tag : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # undo: (None)
    # Returns: (transfer none)
    private macro _register_undo_vfunc(impl_method_name)
      private def self._vfunc_undo(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_undo(Pointer(Void))).pointer
        previous_def
      end
    end

    # undo: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_undo_vfunc(impl_method_name)
      private def self._vfunc_unsafe_undo(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_undo = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_undo(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_undo : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
