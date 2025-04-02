require "../gio-2.0/filter_input_stream"
require "../gio-2.0/pollable_input_stream"

module Soup
  @[GICrystal::GeneratedWrapper]
  class MultipartInputStream < Gio::FilterInputStream
    include Gio::PollableInputStream

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(MultipartInputStream, g_object_get_qdata)

    # Initialize a new `MultipartInputStream`.
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

    def initialize(*, base_stream : Gio::InputStream? = nil, close_base_stream : Bool? = nil, message : Soup::Message? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !base_stream.nil?
        (_names.to_unsafe + _n).value = "base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_stream)
        _n += 1
      end
      if !close_base_stream.nil?
        (_names.to_unsafe + _n).value = "close-base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, close_base_stream)
        _n += 1
      end
      if !message.nil?
        (_names.to_unsafe + _n).value = "message".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, message)
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
      @@g_type ||= LibSoup.soup_multipart_input_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::MultipartInputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def message=(value : Soup::Message?) : Soup::Message?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "message", unsafe_value, Pointer(Void).null)
      value
    end

    def message : Soup::Message?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "message", pointerof(value), Pointer(Void).null)
      Soup::Message.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(msg : Soup::Message, base_stream : Gio::InputStream) : self
      # soup_multipart_input_stream_new: (Constructor)
      # @msg:
      # @base_stream:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_multipart_input_stream_new(msg, base_stream)

      # Return value handling
      Soup::MultipartInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def headers : Soup::MessageHeaders?
      # soup_multipart_input_stream_get_headers: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_multipart_input_stream_get_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def next_part(cancellable : Gio::Cancellable?) : Gio::InputStream?
      # soup_multipart_input_stream_next_part: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibSoup.soup_multipart_input_stream_next_part(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def next_part_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # soup_multipart_input_stream_next_part_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibSoup.soup_multipart_input_stream_next_part_async(to_unsafe, io_priority, cancellable, callback, data)

      # Return value handling
    end

    def next_part_finish(result : Gio::AsyncResult) : Gio::InputStream?
      # soup_multipart_input_stream_next_part_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_multipart_input_stream_next_part_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
