require "../g_object-2.0/object"
require "../gio-2.0/async_result"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class ContentSerializer < GObject::Object
    include Gio::AsyncResult

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ContentSerializer, g_object_get_qdata)

    # Initialize a new `ContentSerializer`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_content_serializer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::ContentSerializer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def cancellable : Gio::Cancellable?
      # gdk_content_serializer_get_cancellable: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_cancellable(to_unsafe)

      # Return value handling
      Gio::Cancellable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def gtype : UInt64
      # gdk_content_serializer_get_gtype: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_gtype(to_unsafe)

      # Return value handling
      _retval
    end

    def mime_type : ::String
      # gdk_content_serializer_get_mime_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_mime_type(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def output_stream : Gio::OutputStream
      # gdk_content_serializer_get_output_stream: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_output_stream(to_unsafe)

      # Return value handling
      Gio::OutputStream.new(_retval, GICrystal::Transfer::None)
    end

    def priority : Int32
      # gdk_content_serializer_get_priority: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def task_data : Pointer(Void)?
      # gdk_content_serializer_get_task_data: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_task_data(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def user_data : Pointer(Void)?
      # gdk_content_serializer_get_user_data: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_user_data(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def value : GObject::Value
      # gdk_content_serializer_get_value: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_serializer_get_value(to_unsafe)

      # Return value handling
      GObject::Value.new(_retval, GICrystal::Transfer::None)
    end

    def return_error(error : GLib::Error) : Nil
      # gdk_content_serializer_return_error: (Method)
      # @error: (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_serializer_return_error(to_unsafe, error)

      # Return value handling
    end

    def return_success : Nil
      # gdk_content_serializer_return_success: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_serializer_return_success(to_unsafe)

      # Return value handling
    end

    def set_task_data(data : Pointer(Void)?, notify : GLib::DestroyNotify) : Nil
      # gdk_content_serializer_set_task_data: (Method)
      # @data: (nullable)
      # @notify:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGdk.gdk_content_serializer_set_task_data(to_unsafe, data, notify)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
