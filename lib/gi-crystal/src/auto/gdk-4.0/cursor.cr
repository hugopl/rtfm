require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Cursor < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Cursor, g_object_get_qdata)

    # Initialize a new `Cursor`.
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

    def initialize(*, fallback : Gdk::Cursor? = nil, hotspot_x : Int32? = nil, hotspot_y : Int32? = nil, name : ::String? = nil, texture : Gdk::Texture? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !fallback.nil?
        (_names.to_unsafe + _n).value = "fallback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fallback)
        _n += 1
      end
      if !hotspot_x.nil?
        (_names.to_unsafe + _n).value = "hotspot-x".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hotspot_x)
        _n += 1
      end
      if !hotspot_y.nil?
        (_names.to_unsafe + _n).value = "hotspot-y".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hotspot_y)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !texture.nil?
        (_names.to_unsafe + _n).value = "texture".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, texture)
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
      @@g_type ||= LibGdk.gdk_cursor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Cursor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def fallback=(value : Gdk::Cursor?) : Gdk::Cursor?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "fallback", unsafe_value, Pointer(Void).null)
      value
    end

    def fallback : Gdk::Cursor?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "fallback", pointerof(value), Pointer(Void).null)
      Gdk::Cursor.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def hotspot_x=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "hotspot-x", unsafe_value, Pointer(Void).null)
      value
    end

    def hotspot_x : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "hotspot-x", pointerof(value), Pointer(Void).null)
      value
    end

    def hotspot_y=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "hotspot-y", unsafe_value, Pointer(Void).null)
      value
    end

    def hotspot_y : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "hotspot-y", pointerof(value), Pointer(Void).null)
      value
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def texture=(value : Gdk::Texture?) : Gdk::Texture?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "texture", unsafe_value, Pointer(Void).null)
      value
    end

    def texture : Gdk::Texture?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "texture", pointerof(value), Pointer(Void).null)
      Gdk::Texture.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new_from_callback(callback : Gdk::CursorGetTextureCallback, data : Pointer(Void)?, destroy : GLib::DestroyNotify, fallback : Gdk::Cursor?) : self?
      # gdk_cursor_new_from_callback: (Constructor)
      # @callback:
      # @data: (nullable)
      # @destroy:
      # @fallback: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end
      # Generator::NullableArrayPlan
      fallback = if fallback.nil?
                   Pointer(Void).null
                 else
                   fallback.to_unsafe
                 end

      # C call
      _retval = LibGdk.gdk_cursor_new_from_callback(callback, data, destroy, fallback)

      # Return value handling
      Gdk::Cursor.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_name(name : ::String, fallback : Gdk::Cursor?) : self?
      # gdk_cursor_new_from_name: (Constructor)
      # @name:
      # @fallback: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      fallback = if fallback.nil?
                   Pointer(Void).null
                 else
                   fallback.to_unsafe
                 end

      # C call
      _retval = LibGdk.gdk_cursor_new_from_name(name, fallback)

      # Return value handling
      Gdk::Cursor.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_texture(texture : Gdk::Texture, hotspot_x : Int32, hotspot_y : Int32, fallback : Gdk::Cursor?) : self
      # gdk_cursor_new_from_texture: (Constructor)
      # @texture:
      # @hotspot_x:
      # @hotspot_y:
      # @fallback: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      fallback = if fallback.nil?
                   Pointer(Void).null
                 else
                   fallback.to_unsafe
                 end

      # C call
      _retval = LibGdk.gdk_cursor_new_from_texture(texture, hotspot_x, hotspot_y, fallback)

      # Return value handling
      Gdk::Cursor.new(_retval, GICrystal::Transfer::Full)
    end

    def fallback : Gdk::Cursor?
      # gdk_cursor_get_fallback: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_cursor_get_fallback(to_unsafe)

      # Return value handling
      Gdk::Cursor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def hotspot_x : Int32
      # gdk_cursor_get_hotspot_x: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_cursor_get_hotspot_x(to_unsafe)

      # Return value handling
      _retval
    end

    def hotspot_y : Int32
      # gdk_cursor_get_hotspot_y: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_cursor_get_hotspot_y(to_unsafe)

      # Return value handling
      _retval
    end

    def name : ::String?
      # gdk_cursor_get_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_cursor_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def texture : Gdk::Texture?
      # gdk_cursor_get_texture: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_cursor_get_texture(to_unsafe)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
