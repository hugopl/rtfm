require "./sorter"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class StringSorter < Sorter
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::StringSorterClass), class_init,
        sizeof(LibGtk::StringSorter), instance_init, 0)
    end

    GICrystal.declare_new_method(StringSorter, g_object_get_qdata)

    # Initialize a new `StringSorter`.
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

    def initialize(*, collation : Gtk::Collation? = nil, expression : Gtk::Expression? = nil, ignore_case : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !collation.nil?
        (_names.to_unsafe + _n).value = "collation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, collation)
        _n += 1
      end
      if !expression.nil?
        (_names.to_unsafe + _n).value = "expression".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, expression)
        _n += 1
      end
      if !ignore_case.nil?
        (_names.to_unsafe + _n).value = "ignore-case".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ignore_case)
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
      @@g_type ||= LibGtk.gtk_string_sorter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::StringSorter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def collation=(value : Gtk::Collation) : Gtk::Collation
      unsafe_value = value

      LibGObject.g_object_set(self, "collation", unsafe_value, Pointer(Void).null)
      value
    end

    def collation : Gtk::Collation
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "collation", pointerof(value), Pointer(Void).null)
      Gtk::Collation.new(value)
    end

    def expression=(value : Gtk::Expression?) : Gtk::Expression?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "expression", unsafe_value, Pointer(Void).null)
      value
    end

    def expression : Gtk::Expression?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "expression", pointerof(value), Pointer(Void).null)
      Gtk::Expression.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def ignore_case=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "ignore-case", unsafe_value, Pointer(Void).null)
      value
    end

    def ignore_case? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "ignore-case", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(expression : Gtk::Expression?) : self
      # gtk_string_sorter_new: (Constructor)
      # @expression: (transfer full) (nullable)
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(expression)
      # Generator::NullableArrayPlan
      expression = if expression.nil?
                     Pointer(Void).null
                   else
                     expression.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_string_sorter_new(expression)

      # Return value handling
      Gtk::StringSorter.new(_retval, GICrystal::Transfer::Full)
    end

    def collation : Gtk::Collation
      # gtk_string_sorter_get_collation: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_string_sorter_get_collation(to_unsafe)

      # Return value handling
      Gtk::Collation.new(_retval)
    end

    def expression : Gtk::Expression?
      # gtk_string_sorter_get_expression: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_string_sorter_get_expression(to_unsafe)

      # Return value handling
      Gtk::Expression.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def ignore_case : Bool
      # gtk_string_sorter_get_ignore_case: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_string_sorter_get_ignore_case(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def collation=(collation : Gtk::Collation) : Nil
      # gtk_string_sorter_set_collation: (Method | Setter)
      # @collation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_string_sorter_set_collation(to_unsafe, collation)

      # Return value handling
    end

    def expression=(expression : Gtk::Expression?) : Nil
      # gtk_string_sorter_set_expression: (Method | Setter)
      # @expression: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      expression = if expression.nil?
                     Pointer(Void).null
                   else
                     expression.to_unsafe
                   end

      # C call
      LibGtk.gtk_string_sorter_set_expression(to_unsafe, expression)

      # Return value handling
    end

    def ignore_case=(ignore_case : Bool) : Nil
      # gtk_string_sorter_set_ignore_case: (Method | Setter)
      # @ignore_case:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_string_sorter_set_ignore_case(to_unsafe, ignore_case)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
