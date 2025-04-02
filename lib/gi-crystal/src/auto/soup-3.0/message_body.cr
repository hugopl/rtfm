module Soup
  class MessageBody
    @data : LibSoup::MessageBody

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibSoup::MessageBody)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(length : Int64? = nil)
      _instance = allocate
      _instance.length = length unless length.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibSoup::MessageBody)).zero?
    end

    def data!
      self.data.not_nil!
    end

    def data : ::Bytes?
      value = to_unsafe.as(Pointer(LibSoup::MessageBody)).value.data
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_array(value, length, GICrystal::Transfer::None)
    end

    def length : Int64
      value = to_unsafe.as(Pointer(LibSoup::MessageBody)).value.length
      value
    end

    def length=(value : Int64)
      _var = (to_unsafe + 8).as(Pointer(Int64)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_message_body_get_type
    end

    def append_bytes(buffer : GLib::Bytes) : Nil
      # soup_message_body_append_bytes: (Method)
      # @buffer:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_body_append_bytes(to_unsafe, buffer)

      # Return value handling
    end

    def append(data : ::Bytes) : Nil
      # soup_message_body_append_take: (Method)
      # @data: (transfer full) (array length=length element-type UInt8)
      # @length:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      length = data.size
      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      LibSoup.soup_message_body_append_take(to_unsafe, data, length)

      # Return value handling
    end

    def append(*data : UInt8)
      append(data)
    end

    def complete : Nil
      # soup_message_body_complete: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_body_complete(to_unsafe)

      # Return value handling
    end

    def flatten : GLib::Bytes
      # soup_message_body_flatten: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_message_body_flatten(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def accumulate : Bool
      # soup_message_body_get_accumulate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_body_get_accumulate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def chunk(offset : Int64) : GLib::Bytes?
      # soup_message_body_get_chunk: (Method)
      # @offset:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_message_body_get_chunk(to_unsafe, offset)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def got_chunk(chunk : GLib::Bytes) : Nil
      # soup_message_body_got_chunk: (Method)
      # @chunk:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_body_got_chunk(to_unsafe, chunk)

      # Return value handling
    end

    def ref : Soup::MessageBody
      # soup_message_body_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_message_body_ref(to_unsafe)

      # Return value handling
      Soup::MessageBody.new(_retval, GICrystal::Transfer::Full)
    end

    def accumulate=(accumulate : Bool) : Nil
      # soup_message_body_set_accumulate: (Method)
      # @accumulate:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_body_set_accumulate(to_unsafe, accumulate)

      # Return value handling
    end

    def truncate : Nil
      # soup_message_body_truncate: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_body_truncate(to_unsafe)

      # Return value handling
    end

    def unref : Nil
      # soup_message_body_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_body_unref(to_unsafe)

      # Return value handling
    end

    def wrote_chunk(chunk : GLib::Bytes) : Nil
      # soup_message_body_wrote_chunk: (Method)
      # @chunk:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_body_wrote_chunk(to_unsafe, chunk)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
