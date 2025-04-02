require "../g_object-2.0/object"
require "../gio-2.0/list_model"

require "./buildable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class StringList < GObject::Object
    include Gio::ListModel
    include Buildable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::StringListClass), class_init,
        sizeof(LibGtk::StringList), instance_init, 0)
    end

    GICrystal.declare_new_method(StringList, g_object_get_qdata)

    # Initialize a new `StringList`.
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

    def initialize(*, item_type : UInt64? = nil, n_items : UInt32? = nil, strings : Enumerable(::String)? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !item_type.nil?
        (_names.to_unsafe + _n).value = "item-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_type)
        _n += 1
      end
      if !n_items.nil?
        (_names.to_unsafe + _n).value = "n-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_items)
        _n += 1
      end
      if !strings.nil?
        (_names.to_unsafe + _n).value = "strings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, strings)
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
      @@g_type ||= LibGtk.gtk_string_list_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::StringList.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def item_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "item-type", pointerof(value), Pointer(Void).null)
      value
    end

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def strings=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "strings", unsafe_value, Pointer(Void).null)
      value
    end

    def self.new(strings : Enumerable(::String)?) : self
      # gtk_string_list_new: (Constructor)
      # @strings: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      strings = if strings.nil?
                  Pointer(Pointer(LibC::Char)).null
                else
                  strings.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                end

      # C call
      _retval = LibGtk.gtk_string_list_new(strings)

      # Return value handling
      Gtk::StringList.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(*strings : ::String)
      self.new(strings)
    end

    def append(string : ::String) : Nil
      # gtk_string_list_append: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_string_list_append(to_unsafe, string)

      # Return value handling
    end

    def find(string : ::String) : UInt32
      # gtk_string_list_find: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_string_list_find(to_unsafe, string)

      # Return value handling
      _retval
    end

    def string(position : UInt32) : ::String?
      # gtk_string_list_get_string: (Method)
      # @position:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_string_list_get_string(to_unsafe, position)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def remove(position : UInt32) : Nil
      # gtk_string_list_remove: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_string_list_remove(to_unsafe, position)

      # Return value handling
    end

    def splice(position : UInt32, n_removals : UInt32, additions : Enumerable(::String)?) : Nil
      # gtk_string_list_splice: (Method)
      # @position:
      # @n_removals:
      # @additions: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      additions = if additions.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    additions.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end

      # C call
      LibGtk.gtk_string_list_splice(to_unsafe, position, n_removals, additions)

      # Return value handling
    end

    def take(string : ::String) : Nil
      # gtk_string_list_take: (Method)
      # @string: (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_string_list_take(to_unsafe, string)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
