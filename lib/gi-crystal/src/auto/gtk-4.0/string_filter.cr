require "./filter"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class StringFilter < Filter
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::StringFilterClass), class_init,
        sizeof(LibGtk::StringFilter), instance_init, 0)
    end

    GICrystal.declare_new_method(StringFilter, g_object_get_qdata)

    # Initialize a new `StringFilter`.
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

    def initialize(*, expression : Gtk::Expression? = nil, ignore_case : Bool? = nil, match_mode : Gtk::StringFilterMatchMode? = nil, search : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

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
      if !match_mode.nil?
        (_names.to_unsafe + _n).value = "match-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, match_mode)
        _n += 1
      end
      if !search.nil?
        (_names.to_unsafe + _n).value = "search".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, search)
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
      @@g_type ||= LibGtk.gtk_string_filter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::StringFilter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def match_mode=(value : Gtk::StringFilterMatchMode) : Gtk::StringFilterMatchMode
      unsafe_value = value

      LibGObject.g_object_set(self, "match-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def match_mode : Gtk::StringFilterMatchMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "match-mode", pointerof(value), Pointer(Void).null)
      Gtk::StringFilterMatchMode.new(value)
    end

    def search=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "search", unsafe_value, Pointer(Void).null)
      value
    end

    def search : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "search", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#search` property to nil.
    def search=(value : Nil) : Nil
      LibGObject.g_object_set(self, "search", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#search`, but can return nil.
    def search? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "search", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(expression : Gtk::Expression?) : self
      # gtk_string_filter_new: (Constructor)
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
      _retval = LibGtk.gtk_string_filter_new(expression)

      # Return value handling
      Gtk::StringFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def expression : Gtk::Expression?
      # gtk_string_filter_get_expression: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_string_filter_get_expression(to_unsafe)

      # Return value handling
      Gtk::Expression.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def ignore_case : Bool
      # gtk_string_filter_get_ignore_case: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_string_filter_get_ignore_case(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def match_mode : Gtk::StringFilterMatchMode
      # gtk_string_filter_get_match_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_string_filter_get_match_mode(to_unsafe)

      # Return value handling
      Gtk::StringFilterMatchMode.new(_retval)
    end

    def search : ::String?
      # gtk_string_filter_get_search: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_string_filter_get_search(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def expression=(expression : Gtk::Expression?) : Nil
      # gtk_string_filter_set_expression: (Method | Setter)
      # @expression: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      expression = if expression.nil?
                     Pointer(Void).null
                   else
                     expression.to_unsafe
                   end

      # C call
      LibGtk.gtk_string_filter_set_expression(to_unsafe, expression)

      # Return value handling
    end

    def ignore_case=(ignore_case : Bool) : Nil
      # gtk_string_filter_set_ignore_case: (Method | Setter)
      # @ignore_case:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_string_filter_set_ignore_case(to_unsafe, ignore_case)

      # Return value handling
    end

    def match_mode=(mode : Gtk::StringFilterMatchMode) : Nil
      # gtk_string_filter_set_match_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_string_filter_set_match_mode(to_unsafe, mode)

      # Return value handling
    end

    def search=(search : ::String?) : Nil
      # gtk_string_filter_set_search: (Method | Setter)
      # @search: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      search = if search.nil?
                 Pointer(LibC::Char).null
               else
                 search.to_unsafe
               end

      # C call
      LibGtk.gtk_string_filter_set_search(to_unsafe, search)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
