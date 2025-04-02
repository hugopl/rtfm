require "../g_object-2.0/object"
require "./permission_request"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class UserMediaPermissionRequest < GObject::Object
    include PermissionRequest

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(UserMediaPermissionRequest, g_object_get_qdata)

    # Initialize a new `UserMediaPermissionRequest`.
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

    def initialize(*, is_for_audio_device : Bool? = nil, is_for_video_device : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !is_for_audio_device.nil?
        (_names.to_unsafe + _n).value = "is-for-audio-device".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_for_audio_device)
        _n += 1
      end
      if !is_for_video_device.nil?
        (_names.to_unsafe + _n).value = "is-for-video-device".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_for_video_device)
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
      @@g_type ||= LibWebKit.webkit_user_media_permission_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::UserMediaPermissionRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def is_for_audio_device? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-for-audio-device", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_for_video_device? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-for-video-device", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def_equals_and_hash @pointer
  end
end
