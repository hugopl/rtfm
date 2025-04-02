require "../g_object-2.0/object"
require "./icon"

module Gio
  @[GICrystal::GeneratedWrapper]
  class EmblemedIcon < GObject::Object
    include Icon

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::EmblemedIconClass), class_init,
        sizeof(LibGio::EmblemedIcon), instance_init, 0)
    end

    GICrystal.declare_new_method(EmblemedIcon, g_object_get_qdata)

    # Initialize a new `EmblemedIcon`.
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

    def initialize(*, gicon : Gio::Icon? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !gicon.nil?
        (_names.to_unsafe + _n).value = "gicon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gicon)
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
      @@g_type ||= LibGio.g_emblemed_icon_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::EmblemedIcon.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def gicon=(value : Gio::Icon?) : Gio::Icon?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "gicon", unsafe_value, Pointer(Void).null)
      value
    end

    def gicon : Gio::Icon?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "gicon", pointerof(value), Pointer(Void).null)
      Gio::AbstractIcon.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(icon : Gio::Icon, emblem : Gio::Emblem?) : self
      # g_emblemed_icon_new: (Constructor)
      # @icon:
      # @emblem: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      emblem = if emblem.nil?
                 Pointer(Void).null
               else
                 emblem.to_unsafe
               end

      # C call
      _retval = LibGio.g_emblemed_icon_new(icon, emblem)

      # Return value handling
      Gio::EmblemedIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def add_emblem(emblem : Gio::Emblem) : Nil
      # g_emblemed_icon_add_emblem: (Method)
      # @emblem:
      # Returns: (transfer none)

      # C call
      LibGio.g_emblemed_icon_add_emblem(to_unsafe, emblem)

      # Return value handling
    end

    def clear_emblems : Nil
      # g_emblemed_icon_clear_emblems: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_emblemed_icon_clear_emblems(to_unsafe)

      # Return value handling
    end

    def emblems : GLib::List
      # g_emblemed_icon_get_emblems: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_emblemed_icon_get_emblems(to_unsafe)

      # Return value handling
      GLib::List(Gio::Emblem).new(_retval, GICrystal::Transfer::None)
    end

    def icon : Gio::Icon
      # g_emblemed_icon_get_icon: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_emblemed_icon_get_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
