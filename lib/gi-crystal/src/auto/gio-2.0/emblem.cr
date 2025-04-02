require "../g_object-2.0/object"
require "./icon"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Emblem < GObject::Object
    include Icon

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::EmblemClass), class_init,
        sizeof(LibGio::Emblem), instance_init, 0)
    end

    GICrystal.declare_new_method(Emblem, g_object_get_qdata)

    # Initialize a new `Emblem`.
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

    def initialize(*, icon : GObject::Object? = nil, origin : Gio::EmblemOrigin? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !icon.nil?
        (_names.to_unsafe + _n).value = "icon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon)
        _n += 1
      end
      if !origin.nil?
        (_names.to_unsafe + _n).value = "origin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, origin)
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
      @@g_type ||= LibGio.g_emblem_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Emblem.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def icon=(value : GObject::Object?) : GObject::Object?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "icon", unsafe_value, Pointer(Void).null)
      value
    end

    def icon : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "icon", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def origin=(value : Gio::EmblemOrigin) : Gio::EmblemOrigin
      unsafe_value = value

      LibGObject.g_object_set(self, "origin", unsafe_value, Pointer(Void).null)
      value
    end

    def origin : Gio::EmblemOrigin
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "origin", pointerof(value), Pointer(Void).null)
      Gio::EmblemOrigin.new(value)
    end

    def self.new(icon : Gio::Icon) : self
      # g_emblem_new: (Constructor)
      # @icon:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_emblem_new(icon)

      # Return value handling
      Gio::Emblem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_origin(icon : Gio::Icon, origin : Gio::EmblemOrigin) : self
      # g_emblem_new_with_origin: (Constructor)
      # @icon:
      # @origin:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_emblem_new_with_origin(icon, origin)

      # Return value handling
      Gio::Emblem.new(_retval, GICrystal::Transfer::Full)
    end

    def icon : Gio::Icon
      # g_emblem_get_icon: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_emblem_get_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None)
    end

    def origin : Gio::EmblemOrigin
      # g_emblem_get_origin: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_emblem_get_origin(to_unsafe)

      # Return value handling
      Gio::EmblemOrigin.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
