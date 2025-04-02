module Gtk
  class TextIter
    @data : LibGtk::TextIter

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::TextIter)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(dummy3 : Int32? = nil, dummy4 : Int32? = nil, dummy5 : Int32? = nil, dummy6 : Int32? = nil, dummy7 : Int32? = nil, dummy8 : Int32? = nil, dummy11 : Int32? = nil, dummy12 : Int32? = nil, dummy13 : Int32? = nil)
      _instance = allocate
      _instance.dummy3 = dummy3 unless dummy3.nil?
      _instance.dummy4 = dummy4 unless dummy4.nil?
      _instance.dummy5 = dummy5 unless dummy5.nil?
      _instance.dummy6 = dummy6 unless dummy6.nil?
      _instance.dummy7 = dummy7 unless dummy7.nil?
      _instance.dummy8 = dummy8 unless dummy8.nil?
      _instance.dummy11 = dummy11 unless dummy11.nil?
      _instance.dummy12 = dummy12 unless dummy12.nil?
      _instance.dummy13 = dummy13 unless dummy13.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::TextIter)).zero?
    end

    def dummy1!
      self.dummy1.not_nil!
    end

    def dummy1 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy1
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def dummy2!
      self.dummy2.not_nil!
    end

    def dummy2 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy2
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def dummy3 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy3
      value
    end

    def dummy3=(value : Int32)
      _var = (to_unsafe + 16).as(Pointer(Int32)).value = value
      value
    end

    def dummy4 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy4
      value
    end

    def dummy4=(value : Int32)
      _var = (to_unsafe + 20).as(Pointer(Int32)).value = value
      value
    end

    def dummy5 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy5
      value
    end

    def dummy5=(value : Int32)
      _var = (to_unsafe + 24).as(Pointer(Int32)).value = value
      value
    end

    def dummy6 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy6
      value
    end

    def dummy6=(value : Int32)
      _var = (to_unsafe + 28).as(Pointer(Int32)).value = value
      value
    end

    def dummy7 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy7
      value
    end

    def dummy7=(value : Int32)
      _var = (to_unsafe + 32).as(Pointer(Int32)).value = value
      value
    end

    def dummy8 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy8
      value
    end

    def dummy8=(value : Int32)
      _var = (to_unsafe + 36).as(Pointer(Int32)).value = value
      value
    end

    def dummy9!
      self.dummy9.not_nil!
    end

    def dummy9 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy9
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def dummy10!
      self.dummy10.not_nil!
    end

    def dummy10 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy10
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def dummy11 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy11
      value
    end

    def dummy11=(value : Int32)
      _var = (to_unsafe + 56).as(Pointer(Int32)).value = value
      value
    end

    def dummy12 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy12
      value
    end

    def dummy12=(value : Int32)
      _var = (to_unsafe + 60).as(Pointer(Int32)).value = value
      value
    end

    def dummy13 : Int32
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy13
      value
    end

    def dummy13=(value : Int32)
      _var = (to_unsafe + 64).as(Pointer(Int32)).value = value
      value
    end

    def dummy14!
      self.dummy14.not_nil!
    end

    def dummy14 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TextIter)).value.dummy14
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_text_iter_get_type
    end

    def assign(other : Gtk::TextIter) : Nil
      # gtk_text_iter_assign: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_assign(to_unsafe, other)

      # Return value handling
    end

    def backward_char : Bool
      # gtk_text_iter_backward_char: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_char(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_chars(count : Int32) : Bool
      # gtk_text_iter_backward_chars: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_chars(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_cursor_position : Bool
      # gtk_text_iter_backward_cursor_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_cursor_position(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_cursor_positions(count : Int32) : Bool
      # gtk_text_iter_backward_cursor_positions: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_cursor_positions(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_find_char(pred : Gtk::TextCharPredicate, user_data : Pointer(Void)?, limit : Gtk::TextIter?) : Bool
      # gtk_text_iter_backward_find_char: (Method)
      # @pred:
      # @user_data: (nullable)
      # @limit: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::NullableArrayPlan
      limit = if limit.nil?
                Pointer(Void).null
              else
                limit.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_text_iter_backward_find_char(to_unsafe, pred, user_data, limit)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_line : Bool
      # gtk_text_iter_backward_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_lines(count : Int32) : Bool
      # gtk_text_iter_backward_lines: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_lines(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_search(str : ::String, flags : Gtk::TextSearchFlags, limit : Gtk::TextIter?) : Gtk::TextIter
      # gtk_text_iter_backward_search: (Method)
      # @str:
      # @flags:
      # @match_start: (out) (caller-allocates) (optional)
      # @match_end: (out) (caller-allocates) (optional)
      # @limit: (nullable)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      match_start = Pointer(Void).null # Generator::CallerAllocatesPlan
      match_start = Gtk::TextIter.new  # Generator::OutArgUsedInReturnPlan
      match_end = Pointer(Void).null   # Generator::CallerAllocatesPlan
      match_end = Gtk::TextIter.new    # Generator::NullableArrayPlan
      limit = if limit.nil?
                Pointer(Void).null
              else
                limit.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_text_iter_backward_search(to_unsafe, str, flags, match_start, match_end, limit)

      # Return value handling
      match_start
    end

    def backward_sentence_start : Bool
      # gtk_text_iter_backward_sentence_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_sentence_start(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_sentence_starts(count : Int32) : Bool
      # gtk_text_iter_backward_sentence_starts: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_sentence_starts(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_to_tag_toggle(tag : Gtk::TextTag?) : Bool
      # gtk_text_iter_backward_to_tag_toggle: (Method)
      # @tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tag = if tag.nil?
              Pointer(Void).null
            else
              tag.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_text_iter_backward_to_tag_toggle(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_visible_cursor_position : Bool
      # gtk_text_iter_backward_visible_cursor_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_visible_cursor_position(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_visible_cursor_positions(count : Int32) : Bool
      # gtk_text_iter_backward_visible_cursor_positions: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_visible_cursor_positions(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_visible_line : Bool
      # gtk_text_iter_backward_visible_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_visible_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_visible_lines(count : Int32) : Bool
      # gtk_text_iter_backward_visible_lines: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_visible_lines(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_visible_word_start : Bool
      # gtk_text_iter_backward_visible_word_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_visible_word_start(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_visible_word_starts(count : Int32) : Bool
      # gtk_text_iter_backward_visible_word_starts: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_visible_word_starts(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_word_start : Bool
      # gtk_text_iter_backward_word_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_word_start(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_word_starts(count : Int32) : Bool
      # gtk_text_iter_backward_word_starts: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_backward_word_starts(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_insert(default_editability : Bool) : Bool
      # gtk_text_iter_can_insert: (Method)
      # @default_editability:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_can_insert(to_unsafe, default_editability)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def compare(rhs : Gtk::TextIter) : Int32
      # gtk_text_iter_compare: (Method)
      # @rhs:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_compare(to_unsafe, rhs)

      # Return value handling
      _retval
    end

    def copy : Gtk::TextIter
      # gtk_text_iter_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_iter_copy(to_unsafe)

      # Return value handling
      Gtk::TextIter.new(_retval, GICrystal::Transfer::Full)
    end

    def editable(default_setting : Bool) : Bool
      # gtk_text_iter_editable: (Method)
      # @default_setting:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_editable(to_unsafe, default_setting)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ends_line : Bool
      # gtk_text_iter_ends_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_ends_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ends_sentence : Bool
      # gtk_text_iter_ends_sentence: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_ends_sentence(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ends_tag(tag : Gtk::TextTag?) : Bool
      # gtk_text_iter_ends_tag: (Method)
      # @tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tag = if tag.nil?
              Pointer(Void).null
            else
              tag.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_text_iter_ends_tag(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ends_word : Bool
      # gtk_text_iter_ends_word: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_ends_word(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal(rhs : Gtk::TextIter) : Bool
      # gtk_text_iter_equal: (Method)
      # @rhs:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_equal(to_unsafe, rhs)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_char : Bool
      # gtk_text_iter_forward_char: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_char(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_chars(count : Int32) : Bool
      # gtk_text_iter_forward_chars: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_chars(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_cursor_position : Bool
      # gtk_text_iter_forward_cursor_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_cursor_position(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_cursor_positions(count : Int32) : Bool
      # gtk_text_iter_forward_cursor_positions: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_cursor_positions(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_find_char(pred : Gtk::TextCharPredicate, user_data : Pointer(Void)?, limit : Gtk::TextIter?) : Bool
      # gtk_text_iter_forward_find_char: (Method)
      # @pred:
      # @user_data: (nullable)
      # @limit: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::NullableArrayPlan
      limit = if limit.nil?
                Pointer(Void).null
              else
                limit.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_text_iter_forward_find_char(to_unsafe, pred, user_data, limit)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_line : Bool
      # gtk_text_iter_forward_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_lines(count : Int32) : Bool
      # gtk_text_iter_forward_lines: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_lines(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_search(str : ::String, flags : Gtk::TextSearchFlags, limit : Gtk::TextIter?) : Gtk::TextIter
      # gtk_text_iter_forward_search: (Method)
      # @str:
      # @flags:
      # @match_start: (out) (caller-allocates) (optional)
      # @match_end: (out) (caller-allocates) (optional)
      # @limit: (nullable)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      match_start = Pointer(Void).null # Generator::CallerAllocatesPlan
      match_start = Gtk::TextIter.new  # Generator::OutArgUsedInReturnPlan
      match_end = Pointer(Void).null   # Generator::CallerAllocatesPlan
      match_end = Gtk::TextIter.new    # Generator::NullableArrayPlan
      limit = if limit.nil?
                Pointer(Void).null
              else
                limit.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_text_iter_forward_search(to_unsafe, str, flags, match_start, match_end, limit)

      # Return value handling
      match_start
    end

    def forward_sentence_end : Bool
      # gtk_text_iter_forward_sentence_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_sentence_end(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_sentence_ends(count : Int32) : Bool
      # gtk_text_iter_forward_sentence_ends: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_sentence_ends(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_to_end : Nil
      # gtk_text_iter_forward_to_end: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_forward_to_end(to_unsafe)

      # Return value handling
    end

    def forward_to_line_end : Bool
      # gtk_text_iter_forward_to_line_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_to_line_end(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_to_tag_toggle(tag : Gtk::TextTag?) : Bool
      # gtk_text_iter_forward_to_tag_toggle: (Method)
      # @tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tag = if tag.nil?
              Pointer(Void).null
            else
              tag.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_text_iter_forward_to_tag_toggle(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_visible_cursor_position : Bool
      # gtk_text_iter_forward_visible_cursor_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_visible_cursor_position(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_visible_cursor_positions(count : Int32) : Bool
      # gtk_text_iter_forward_visible_cursor_positions: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_visible_cursor_positions(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_visible_line : Bool
      # gtk_text_iter_forward_visible_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_visible_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_visible_lines(count : Int32) : Bool
      # gtk_text_iter_forward_visible_lines: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_visible_lines(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_visible_word_end : Bool
      # gtk_text_iter_forward_visible_word_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_visible_word_end(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_visible_word_ends(count : Int32) : Bool
      # gtk_text_iter_forward_visible_word_ends: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_visible_word_ends(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_word_end : Bool
      # gtk_text_iter_forward_word_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_word_end(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_word_ends(count : Int32) : Bool
      # gtk_text_iter_forward_word_ends: (Method)
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_forward_word_ends(to_unsafe, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # gtk_text_iter_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_free(to_unsafe)

      # Return value handling
    end

    def buffer : Gtk::TextBuffer
      # gtk_text_iter_get_buffer: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_buffer(to_unsafe)

      # Return value handling
      Gtk::TextBuffer.new(_retval, GICrystal::Transfer::None)
    end

    def bytes_in_line : Int32
      # gtk_text_iter_get_bytes_in_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_bytes_in_line(to_unsafe)

      # Return value handling
      _retval
    end

    def char : Char
      # gtk_text_iter_get_char: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_char(to_unsafe)

      # Return value handling
      _retval.chr
    end

    def chars_in_line : Int32
      # gtk_text_iter_get_chars_in_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_chars_in_line(to_unsafe)

      # Return value handling
      _retval
    end

    def child_anchor : Gtk::TextChildAnchor?
      # gtk_text_iter_get_child_anchor: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_text_iter_get_child_anchor(to_unsafe)

      # Return value handling
      Gtk::TextChildAnchor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def language : Pango::Language
      # gtk_text_iter_get_language: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_iter_get_language(to_unsafe)

      # Return value handling
      Pango::Language.new(_retval, GICrystal::Transfer::Full)
    end

    def line : Int32
      # gtk_text_iter_get_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_line(to_unsafe)

      # Return value handling
      _retval
    end

    def line_index : Int32
      # gtk_text_iter_get_line_index: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_line_index(to_unsafe)

      # Return value handling
      _retval
    end

    def line_offset : Int32
      # gtk_text_iter_get_line_offset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_line_offset(to_unsafe)

      # Return value handling
      _retval
    end

    def marks : GLib::SList
      # gtk_text_iter_get_marks: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_text_iter_get_marks(to_unsafe)

      # Return value handling
      GLib::SList(Gtk::TextMark).new(_retval, GICrystal::Transfer::Container)
    end

    def offset : Int32
      # gtk_text_iter_get_offset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_offset(to_unsafe)

      # Return value handling
      _retval
    end

    def paintable : Gdk::Paintable?
      # gtk_text_iter_get_paintable: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_text_iter_get_paintable(to_unsafe)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def slice(end _end : Gtk::TextIter) : ::String
      # gtk_text_iter_get_slice: (Method)
      # @end:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_iter_get_slice(to_unsafe, _end)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def tags : GLib::SList
      # gtk_text_iter_get_tags: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_text_iter_get_tags(to_unsafe)

      # Return value handling
      GLib::SList(Gtk::TextTag).new(_retval, GICrystal::Transfer::Container)
    end

    def text(end _end : Gtk::TextIter) : ::String
      # gtk_text_iter_get_text: (Method)
      # @end:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_iter_get_text(to_unsafe, _end)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def toggled_tags(toggled_on : Bool) : GLib::SList
      # gtk_text_iter_get_toggled_tags: (Method)
      # @toggled_on:
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_text_iter_get_toggled_tags(to_unsafe, toggled_on)

      # Return value handling
      GLib::SList(Gtk::TextTag).new(_retval, GICrystal::Transfer::Container)
    end

    def visible_line_index : Int32
      # gtk_text_iter_get_visible_line_index: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_visible_line_index(to_unsafe)

      # Return value handling
      _retval
    end

    def visible_line_offset : Int32
      # gtk_text_iter_get_visible_line_offset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_get_visible_line_offset(to_unsafe)

      # Return value handling
      _retval
    end

    def visible_slice(end _end : Gtk::TextIter) : ::String
      # gtk_text_iter_get_visible_slice: (Method)
      # @end:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_iter_get_visible_slice(to_unsafe, _end)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def visible_text(end _end : Gtk::TextIter) : ::String
      # gtk_text_iter_get_visible_text: (Method)
      # @end:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_iter_get_visible_text(to_unsafe, _end)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def has_tag(tag : Gtk::TextTag) : Bool
      # gtk_text_iter_has_tag: (Method)
      # @tag:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_has_tag(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def in_range(start : Gtk::TextIter, end _end : Gtk::TextIter) : Bool
      # gtk_text_iter_in_range: (Method)
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_in_range(to_unsafe, start, _end)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def inside_sentence : Bool
      # gtk_text_iter_inside_sentence: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_inside_sentence(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def inside_word : Bool
      # gtk_text_iter_inside_word: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_inside_word(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_cursor_position : Bool
      # gtk_text_iter_is_cursor_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_is_cursor_position(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_end : Bool
      # gtk_text_iter_is_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_is_end(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_start : Bool
      # gtk_text_iter_is_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_is_start(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def order(second : Gtk::TextIter) : Nil
      # gtk_text_iter_order: (Method)
      # @second:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_order(to_unsafe, second)

      # Return value handling
    end

    def line=(line_number : Int32) : Nil
      # gtk_text_iter_set_line: (Method)
      # @line_number:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_set_line(to_unsafe, line_number)

      # Return value handling
    end

    def line_index=(byte_on_line : Int32) : Nil
      # gtk_text_iter_set_line_index: (Method)
      # @byte_on_line:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_set_line_index(to_unsafe, byte_on_line)

      # Return value handling
    end

    def line_offset=(char_on_line : Int32) : Nil
      # gtk_text_iter_set_line_offset: (Method)
      # @char_on_line:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_set_line_offset(to_unsafe, char_on_line)

      # Return value handling
    end

    def offset=(char_offset : Int32) : Nil
      # gtk_text_iter_set_offset: (Method)
      # @char_offset:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_set_offset(to_unsafe, char_offset)

      # Return value handling
    end

    def visible_line_index=(byte_on_line : Int32) : Nil
      # gtk_text_iter_set_visible_line_index: (Method)
      # @byte_on_line:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_set_visible_line_index(to_unsafe, byte_on_line)

      # Return value handling
    end

    def visible_line_offset=(char_on_line : Int32) : Nil
      # gtk_text_iter_set_visible_line_offset: (Method)
      # @char_on_line:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_iter_set_visible_line_offset(to_unsafe, char_on_line)

      # Return value handling
    end

    def starts_line : Bool
      # gtk_text_iter_starts_line: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_starts_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def starts_sentence : Bool
      # gtk_text_iter_starts_sentence: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_starts_sentence(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def starts_tag(tag : Gtk::TextTag?) : Bool
      # gtk_text_iter_starts_tag: (Method)
      # @tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tag = if tag.nil?
              Pointer(Void).null
            else
              tag.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_text_iter_starts_tag(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def starts_word : Bool
      # gtk_text_iter_starts_word: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_iter_starts_word(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def toggles_tag(tag : Gtk::TextTag?) : Bool
      # gtk_text_iter_toggles_tag: (Method)
      # @tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tag = if tag.nil?
              Pointer(Void).null
            else
              tag.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_text_iter_toggles_tag(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
