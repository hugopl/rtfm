module Gdk
  class ContentFormats
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ContentFormats.g_type, pointer)
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
      LibGObject.g_boxed_free(ContentFormats.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_content_formats_get_type
    end

    def self.new(mime_types : Enumerable(::String)?) : self
      # gdk_content_formats_new: (Constructor)
      # @mime_types: (nullable) (array length=n_mime_types element-type Utf8)
      # @n_mime_types:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_mime_types = mime_types.try(&.size) || 0
      # Generator::NullableArrayPlan
      mime_types = if mime_types.nil?
                     Pointer(Pointer(LibC::Char)).null
                   else
                     mime_types.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                   end

      # C call
      _retval = LibGdk.gdk_content_formats_new(mime_types, n_mime_types)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(*mime_types : ::String)
      self.new(mime_types)
    end

    def self.new_for_gtype(type : UInt64) : self
      # gdk_content_formats_new_for_gtype: (Constructor)
      # @type:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_new_for_gtype(type)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def contain_gtype(type : UInt64) : Bool
      # gdk_content_formats_contain_gtype: (Method)
      # @type:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_formats_contain_gtype(to_unsafe, type)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def contain_mime_type(mime_type : ::String) : Bool
      # gdk_content_formats_contain_mime_type: (Method)
      # @mime_type:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_formats_contain_mime_type(to_unsafe, mime_type)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def gtypes : Enumerable(UInt64)?
      # gdk_content_formats_get_gtypes: (Method)
      # @n_gtypes: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable) (array length=n_gtypes zero-terminated=1 element-type Gtype)

      # Generator::OutArgUsedInReturnPlan
      n_gtypes = 0_u64
      # C call
      _retval = LibGdk.gdk_content_formats_get_gtypes(to_unsafe, pointerof(n_gtypes))

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def mime_types : Enumerable(::String)?
      # gdk_content_formats_get_mime_types: (Method)
      # @n_mime_types: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable) (array length=n_mime_types zero-terminated=1 element-type Utf8)

      # Generator::OutArgUsedInReturnPlan
      n_mime_types = 0_u64
      # C call
      _retval = LibGdk.gdk_content_formats_get_mime_types(to_unsafe, pointerof(n_mime_types))

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def is_empty : Bool
      # gdk_content_formats_is_empty: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_formats_is_empty(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def match(second : Gdk::ContentFormats) : Bool
      # gdk_content_formats_match: (Method)
      # @second:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_formats_match(to_unsafe, second)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def match_gtype(second : Gdk::ContentFormats) : UInt64
      # gdk_content_formats_match_gtype: (Method)
      # @second:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_formats_match_gtype(to_unsafe, second)

      # Return value handling
      _retval
    end

    def match_mime_type(second : Gdk::ContentFormats) : ::String?
      # gdk_content_formats_match_mime_type: (Method)
      # @second:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_content_formats_match_mime_type(to_unsafe, second)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def print(string : GLib::String) : Nil
      # gdk_content_formats_print: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_formats_print(to_unsafe, string)

      # Return value handling
    end

    def ref : Gdk::ContentFormats
      # gdk_content_formats_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_ref(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def to_string : ::String
      # gdk_content_formats_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def union(second : Gdk::ContentFormats) : Gdk::ContentFormats
      # gdk_content_formats_union: (Method)
      # @second:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_union(to_unsafe, second)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def union_deserialize_gtypes : Gdk::ContentFormats
      # gdk_content_formats_union_deserialize_gtypes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_union_deserialize_gtypes(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def union_deserialize_mime_types : Gdk::ContentFormats
      # gdk_content_formats_union_deserialize_mime_types: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_union_deserialize_mime_types(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def union_serialize_gtypes : Gdk::ContentFormats
      # gdk_content_formats_union_serialize_gtypes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_union_serialize_gtypes(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def union_serialize_mime_types : Gdk::ContentFormats
      # gdk_content_formats_union_serialize_mime_types: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_union_serialize_mime_types(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gdk_content_formats_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_formats_unref(to_unsafe)

      # Return value handling
    end

    def self.parse(string : ::String) : Gdk::ContentFormats?
      # gdk_content_formats_parse: (None)
      # @string:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdk.gdk_content_formats_parse(string)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
