module Pango
  struct LogAttr
    @data : LibPango::LogAttr

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::LogAttr)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(is_line_break : UInt32? = nil, is_mandatory_break : UInt32? = nil, is_char_break : UInt32? = nil, is_white : UInt32? = nil, is_cursor_position : UInt32? = nil, is_word_start : UInt32? = nil, is_word_end : UInt32? = nil, is_sentence_boundary : UInt32? = nil, is_sentence_start : UInt32? = nil, is_sentence_end : UInt32? = nil, backspace_deletes_character : UInt32? = nil, is_expandable_space : UInt32? = nil, is_word_boundary : UInt32? = nil, break_inserts_hyphen : UInt32? = nil, break_removes_preceding : UInt32? = nil, reserved : UInt32? = nil)
      @data = LibPango::LogAttr.new
      @data.is_line_break = is_line_break unless is_line_break.nil?
      @data.is_mandatory_break = is_mandatory_break unless is_mandatory_break.nil?
      @data.is_char_break = is_char_break unless is_char_break.nil?
      @data.is_white = is_white unless is_white.nil?
      @data.is_cursor_position = is_cursor_position unless is_cursor_position.nil?
      @data.is_word_start = is_word_start unless is_word_start.nil?
      @data.is_word_end = is_word_end unless is_word_end.nil?
      @data.is_sentence_boundary = is_sentence_boundary unless is_sentence_boundary.nil?
      @data.is_sentence_start = is_sentence_start unless is_sentence_start.nil?
      @data.is_sentence_end = is_sentence_end unless is_sentence_end.nil?
      @data.backspace_deletes_character = backspace_deletes_character unless backspace_deletes_character.nil?
      @data.is_expandable_space = is_expandable_space unless is_expandable_space.nil?
      @data.is_word_boundary = is_word_boundary unless is_word_boundary.nil?
      @data.break_inserts_hyphen = break_inserts_hyphen unless break_inserts_hyphen.nil?
      @data.break_removes_preceding = break_removes_preceding unless break_removes_preceding.nil?
      @data.reserved = reserved unless reserved.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::LogAttr)).zero?
    end

    delegate :is_line_break, to: @data
    delegate :is_line_break=, to: @data
    delegate :is_mandatory_break, to: @data
    delegate :is_mandatory_break=, to: @data
    delegate :is_char_break, to: @data
    delegate :is_char_break=, to: @data
    delegate :is_white, to: @data
    delegate :is_white=, to: @data
    delegate :is_cursor_position, to: @data
    delegate :is_cursor_position=, to: @data
    delegate :is_word_start, to: @data
    delegate :is_word_start=, to: @data
    delegate :is_word_end, to: @data
    delegate :is_word_end=, to: @data
    delegate :is_sentence_boundary, to: @data
    delegate :is_sentence_boundary=, to: @data
    delegate :is_sentence_start, to: @data
    delegate :is_sentence_start=, to: @data
    delegate :is_sentence_end, to: @data
    delegate :is_sentence_end=, to: @data
    delegate :backspace_deletes_character, to: @data
    delegate :backspace_deletes_character=, to: @data
    delegate :is_expandable_space, to: @data
    delegate :is_expandable_space=, to: @data
    delegate :is_word_boundary, to: @data
    delegate :is_word_boundary=, to: @data
    delegate :break_inserts_hyphen, to: @data
    delegate :break_inserts_hyphen=, to: @data
    delegate :break_removes_preceding, to: @data
    delegate :break_removes_preceding=, to: @data
    delegate :reserved, to: @data
    delegate :reserved=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
