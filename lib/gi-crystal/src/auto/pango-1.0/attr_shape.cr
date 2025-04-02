module Pango
  class AttrShape
    @data : LibPango::AttrShape

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrShape)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil, ink_rect : Pango::Rectangle? = nil, logical_rect : Pango::Rectangle? = nil, copy_func : Pango::AttrDataCopyFunc? = nil, destroy_func : GLib::DestroyNotify? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance.ink_rect = ink_rect unless ink_rect.nil?
      _instance.logical_rect = logical_rect unless logical_rect.nil?
      _instance.copy_func = copy_func unless copy_func.nil?
      _instance.destroy_func = destroy_func unless destroy_func.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrShape)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrShape)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrShape))
      value
    end

    def ink_rect : Pango::Rectangle
      value = to_unsafe.as(Pointer(LibPango::AttrShape)).value.ink_rect
      Pango::Rectangle.new(value, GICrystal::Transfer::None)
    end

    def ink_rect=(value : Pango::Rectangle)
      _var = (to_unsafe + 16).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrShape))
      value
    end

    def logical_rect : Pango::Rectangle
      value = to_unsafe.as(Pointer(LibPango::AttrShape)).value.logical_rect
      Pango::Rectangle.new(value, GICrystal::Transfer::None)
    end

    def logical_rect=(value : Pango::Rectangle)
      _var = (to_unsafe + 32).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrShape))
      value
    end

    def data!
      self.data.not_nil!
    end

    def data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibPango::AttrShape)).value.data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def copy_func : Pango::AttrDataCopyFunc
      value = to_unsafe.as(Pointer(LibPango::AttrShape)).value.copy_func
      Pango::AttrDataCopyFunc.new(value, GICrystal::Transfer::None)
    end

    def copy_func=(value : Pango::AttrDataCopyFunc)
      _var = (to_unsafe + 56).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrShape))
      value
    end

    def destroy_func : GLib::DestroyNotify
      value = to_unsafe.as(Pointer(LibPango::AttrShape)).value.destroy_func
      GLib::DestroyNotify.new(value, GICrystal::Transfer::None)
    end

    def destroy_func=(value : GLib::DestroyNotify)
      _var = (to_unsafe + 64).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrShape))
      value
    end

    def self.new(ink_rect : Pango::Rectangle, logical_rect : Pango::Rectangle) : Pango::Attribute
      # pango_attr_shape_new: (None)
      # @ink_rect:
      # @logical_rect:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_shape_new(ink_rect, logical_rect)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_data(ink_rect : Pango::Rectangle, logical_rect : Pango::Rectangle, data : Pointer(Void)?, copy_func : Pango::AttrDataCopyFunc?, destroy_func : GLib::DestroyNotify?) : Pango::Attribute
      # pango_attr_shape_new_with_data: (None)
      # @ink_rect:
      # @logical_rect:
      # @data: (nullable)
      # @copy_func: (nullable)
      # @destroy_func: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      _retval = LibPango.pango_attr_shape_new_with_data(ink_rect, logical_rect, data, copy_func, destroy_func)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
