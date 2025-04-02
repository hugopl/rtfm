module Soup
  class MessageHeaders
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(MessageHeaders.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(MessageHeaders.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_message_headers_get_type
    end

    def self.new(type : Soup::MessageHeadersType) : self
      # soup_message_headers_new: (Constructor)
      # @type:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_message_headers_new(type)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::Full)
    end

    def append(name : ::String, value : ::String) : Nil
      # soup_message_headers_append: (Method)
      # @name:
      # @value:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_append(to_unsafe, name, value)

      # Return value handling
    end

    def clean_connection_headers : Nil
      # soup_message_headers_clean_connection_headers: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_clean_connection_headers(to_unsafe)

      # Return value handling
    end

    def clear : Nil
      # soup_message_headers_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_clear(to_unsafe)

      # Return value handling
    end

    def foreach(func : Soup::MessageHeadersForeachFunc, user_data : Pointer(Void)?) : Nil
      # soup_message_headers_foreach: (Method)
      # @func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibSoup.soup_message_headers_foreach(to_unsafe, func, user_data)

      # Return value handling
    end

    def free_ranges(ranges : Soup::Range) : Nil
      # soup_message_headers_free_ranges: (Method)
      # @ranges:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_free_ranges(to_unsafe, ranges)

      # Return value handling
    end

    def content_disposition(disposition : ::String, params : Pointer(Void)) : Bool
      # soup_message_headers_get_content_disposition: (Method)
      # @disposition: (out) (transfer full)
      # @params: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_get_content_disposition(to_unsafe, disposition, params)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def content_length : Int64
      # soup_message_headers_get_content_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_get_content_length(to_unsafe)

      # Return value handling
      _retval
    end

    def content_range(start : Int64, end _end : Int64) : Bool
      # soup_message_headers_get_content_range: (Method)
      # @start: (out) (transfer full)
      # @end: (out) (transfer full)
      # @total_length: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      total_length = Pointer(Int64).null
      # C call
      _retval = LibSoup.soup_message_headers_get_content_range(to_unsafe, start, _end, total_length)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def content_type : ::String?
      # soup_message_headers_get_content_type: (Method)
      # @params: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable)

      # Generator::OutArgUsedInReturnPlan
      params = Pointer(Pointer(Void)).null
      # C call
      _retval = LibSoup.soup_message_headers_get_content_type(to_unsafe, params)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def encoding : Soup::Encoding
      # soup_message_headers_get_encoding: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_get_encoding(to_unsafe)

      # Return value handling
      Soup::Encoding.new(_retval)
    end

    def expectations : Soup::Expectation
      # soup_message_headers_get_expectations: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_get_expectations(to_unsafe)

      # Return value handling
      Soup::Expectation.new(_retval)
    end

    def headers_type : Soup::MessageHeadersType
      # soup_message_headers_get_headers_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_get_headers_type(to_unsafe)

      # Return value handling
      Soup::MessageHeadersType.new(_retval)
    end

    def list(name : ::String) : ::String?
      # soup_message_headers_get_list: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_message_headers_get_list(to_unsafe, name)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def one(name : ::String) : ::String?
      # soup_message_headers_get_one: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_message_headers_get_one(to_unsafe, name)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def ranges(total_length : Int64, ranges : Enumerable(Soup::Range)) : Bool
      # soup_message_headers_get_ranges: (Method)
      # @total_length:
      # @ranges: (out) (transfer full) (array length=length element-type Interface)
      # @length: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      length = ranges.size
      # Generator::ArrayArgPlan
      ranges = ranges.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibSoup::Range))

      # C call
      _retval = LibSoup.soup_message_headers_get_ranges(to_unsafe, total_length, ranges, length)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def header_contains(name : ::String, token : ::String) : Bool
      # soup_message_headers_header_contains: (Method)
      # @name:
      # @token:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_header_contains(to_unsafe, name, token)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def header_equals(name : ::String, value : ::String) : Bool
      # soup_message_headers_header_equals: (Method)
      # @name:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_header_equals(to_unsafe, name, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Soup::MessageHeaders
      # soup_message_headers_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_message_headers_ref(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::Full)
    end

    def remove(name : ::String) : Nil
      # soup_message_headers_remove: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_remove(to_unsafe, name)

      # Return value handling
    end

    def replace(name : ::String, value : ::String) : Nil
      # soup_message_headers_replace: (Method)
      # @name:
      # @value:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_replace(to_unsafe, name, value)

      # Return value handling
    end

    def set_content_disposition(disposition : ::String, params : Pointer(Void)?) : Nil
      # soup_message_headers_set_content_disposition: (Method)
      # @disposition:
      # @params: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      params = if params.nil?
                 Pointer(Void).null
               else
                 params.to_unsafe
               end

      # C call
      LibSoup.soup_message_headers_set_content_disposition(to_unsafe, disposition, params)

      # Return value handling
    end

    def content_length=(content_length : Int64) : Nil
      # soup_message_headers_set_content_length: (Method)
      # @content_length:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_set_content_length(to_unsafe, content_length)

      # Return value handling
    end

    def set_content_range(start : Int64, end _end : Int64, total_length : Int64) : Nil
      # soup_message_headers_set_content_range: (Method)
      # @start:
      # @end:
      # @total_length:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_set_content_range(to_unsafe, start, _end, total_length)

      # Return value handling
    end

    def set_content_type(content_type : ::String, params : Pointer(Void)?) : Nil
      # soup_message_headers_set_content_type: (Method)
      # @content_type:
      # @params: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      params = if params.nil?
                 Pointer(Void).null
               else
                 params.to_unsafe
               end

      # C call
      LibSoup.soup_message_headers_set_content_type(to_unsafe, content_type, params)

      # Return value handling
    end

    def encoding=(encoding : Soup::Encoding) : Nil
      # soup_message_headers_set_encoding: (Method)
      # @encoding:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_set_encoding(to_unsafe, encoding)

      # Return value handling
    end

    def expectations=(expectations : Soup::Expectation) : Nil
      # soup_message_headers_set_expectations: (Method)
      # @expectations:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_set_expectations(to_unsafe, expectations)

      # Return value handling
    end

    def set_range(start : Int64, end _end : Int64) : Nil
      # soup_message_headers_set_range: (Method)
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_set_range(to_unsafe, start, _end)

      # Return value handling
    end

    def set_ranges(ranges : Soup::Range, length : Int32) : Nil
      # soup_message_headers_set_ranges: (Method)
      # @ranges:
      # @length:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_set_ranges(to_unsafe, ranges, length)

      # Return value handling
    end

    def unref : Nil
      # soup_message_headers_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_headers_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
