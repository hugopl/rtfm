require "../g_object-2.0/object"
require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ConstraintGuide < GObject::Object
    include ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ConstraintGuideClass), class_init,
        sizeof(LibGtk::ConstraintGuide), instance_init, 0)
    end

    GICrystal.declare_new_method(ConstraintGuide, g_object_get_qdata)

    # Initialize a new `ConstraintGuide`.
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

    def initialize(*, max_height : Int32? = nil, max_width : Int32? = nil, min_height : Int32? = nil, min_width : Int32? = nil, name : ::String? = nil, nat_height : Int32? = nil, nat_width : Int32? = nil, strength : Gtk::ConstraintStrength? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !max_height.nil?
        (_names.to_unsafe + _n).value = "max-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_height)
        _n += 1
      end
      if !max_width.nil?
        (_names.to_unsafe + _n).value = "max-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_width)
        _n += 1
      end
      if !min_height.nil?
        (_names.to_unsafe + _n).value = "min-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_height)
        _n += 1
      end
      if !min_width.nil?
        (_names.to_unsafe + _n).value = "min-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_width)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !nat_height.nil?
        (_names.to_unsafe + _n).value = "nat-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, nat_height)
        _n += 1
      end
      if !nat_width.nil?
        (_names.to_unsafe + _n).value = "nat-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, nat_width)
        _n += 1
      end
      if !strength.nil?
        (_names.to_unsafe + _n).value = "strength".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, strength)
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
      @@g_type ||= LibGtk.gtk_constraint_guide_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ConstraintGuide.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def max_height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-height", unsafe_value, Pointer(Void).null)
      value
    end

    def max_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-height", pointerof(value), Pointer(Void).null)
      value
    end

    def max_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-width", unsafe_value, Pointer(Void).null)
      value
    end

    def max_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-width", pointerof(value), Pointer(Void).null)
      value
    end

    def min_height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "min-height", unsafe_value, Pointer(Void).null)
      value
    end

    def min_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "min-height", pointerof(value), Pointer(Void).null)
      value
    end

    def min_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "min-width", unsafe_value, Pointer(Void).null)
      value
    end

    def min_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "min-width", pointerof(value), Pointer(Void).null)
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

    def nat_height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "nat-height", unsafe_value, Pointer(Void).null)
      value
    end

    def nat_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "nat-height", pointerof(value), Pointer(Void).null)
      value
    end

    def nat_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "nat-width", unsafe_value, Pointer(Void).null)
      value
    end

    def nat_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "nat-width", pointerof(value), Pointer(Void).null)
      value
    end

    def strength=(value : Gtk::ConstraintStrength) : Gtk::ConstraintStrength
      unsafe_value = value

      LibGObject.g_object_set(self, "strength", unsafe_value, Pointer(Void).null)
      value
    end

    def strength : Gtk::ConstraintStrength
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "strength", pointerof(value), Pointer(Void).null)
      Gtk::ConstraintStrength.new(value)
    end

    def self.new : self
      # gtk_constraint_guide_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_constraint_guide_new

      # Return value handling
      Gtk::ConstraintGuide.new(_retval, GICrystal::Transfer::Full)
    end

    def max_size : Nil
      # gtk_constraint_guide_get_max_size: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_constraint_guide_get_max_size(to_unsafe, width, height)

      # Return value handling
    end

    def min_size : Nil
      # gtk_constraint_guide_get_min_size: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_constraint_guide_get_min_size(to_unsafe, width, height)

      # Return value handling
    end

    def name : ::String?
      # gtk_constraint_guide_get_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_constraint_guide_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def nat_size : Nil
      # gtk_constraint_guide_get_nat_size: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_constraint_guide_get_nat_size(to_unsafe, width, height)

      # Return value handling
    end

    def strength : Gtk::ConstraintStrength
      # gtk_constraint_guide_get_strength: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_constraint_guide_get_strength(to_unsafe)

      # Return value handling
      Gtk::ConstraintStrength.new(_retval)
    end

    def set_max_size(width : Int32, height : Int32) : Nil
      # gtk_constraint_guide_set_max_size: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_constraint_guide_set_max_size(to_unsafe, width, height)

      # Return value handling
    end

    def set_min_size(width : Int32, height : Int32) : Nil
      # gtk_constraint_guide_set_min_size: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_constraint_guide_set_min_size(to_unsafe, width, height)

      # Return value handling
    end

    def name=(name : ::String?) : Nil
      # gtk_constraint_guide_set_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_constraint_guide_set_name(to_unsafe, name)

      # Return value handling
    end

    def set_nat_size(width : Int32, height : Int32) : Nil
      # gtk_constraint_guide_set_nat_size: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_constraint_guide_set_nat_size(to_unsafe, width, height)

      # Return value handling
    end

    def strength=(strength : Gtk::ConstraintStrength) : Nil
      # gtk_constraint_guide_set_strength: (Method | Setter)
      # @strength:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_constraint_guide_set_strength(to_unsafe, strength)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
