require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Builder < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::BuilderClass), class_init,
        sizeof(LibGtk::Builder), instance_init, 0)
    end

    GICrystal.declare_new_method(Builder, g_object_get_qdata)

    # Initialize a new `Builder`.
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

    def initialize(*, current_object : GObject::Object? = nil, scope : Gtk::BuilderScope? = nil, translation_domain : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !current_object.nil?
        (_names.to_unsafe + _n).value = "current-object".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, current_object)
        _n += 1
      end
      if !scope.nil?
        (_names.to_unsafe + _n).value = "scope".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scope)
        _n += 1
      end
      if !translation_domain.nil?
        (_names.to_unsafe + _n).value = "translation-domain".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, translation_domain)
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
      @@g_type ||= LibGtk.gtk_builder_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Builder.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def current_object=(value : GObject::Object?) : GObject::Object?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "current-object", unsafe_value, Pointer(Void).null)
      value
    end

    def current_object : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "current-object", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def scope=(value : Gtk::BuilderScope?) : Gtk::BuilderScope?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "scope", unsafe_value, Pointer(Void).null)
      value
    end

    def scope : Gtk::BuilderScope?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "scope", pointerof(value), Pointer(Void).null)
      Gtk::AbstractBuilderScope.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def translation_domain=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "translation-domain", unsafe_value, Pointer(Void).null)
      value
    end

    def translation_domain : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "translation-domain", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#translation_domain` property to nil.
    def translation_domain=(value : Nil) : Nil
      LibGObject.g_object_set(self, "translation-domain", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#translation_domain`, but can return nil.
    def translation_domain? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "translation-domain", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # gtk_builder_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_builder_new

      # Return value handling
      Gtk::Builder.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_file(filename : ::String) : self
      # gtk_builder_new_from_file: (Constructor)
      # @filename:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_builder_new_from_file(filename)

      # Return value handling
      Gtk::Builder.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_resource(resource_path : ::String) : self
      # gtk_builder_new_from_resource: (Constructor)
      # @resource_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_builder_new_from_resource(resource_path)

      # Return value handling
      Gtk::Builder.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_string(string : ::String, length : Int64) : self
      # gtk_builder_new_from_string: (Constructor)
      # @string:
      # @length:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_builder_new_from_string(string, length)

      # Return value handling
      Gtk::Builder.new(_retval, GICrystal::Transfer::Full)
    end

    def add_from_file(filename : ::String) : Bool
      # gtk_builder_add_from_file: (Method | Throws)
      # @filename:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_builder_add_from_file(to_unsafe, filename, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_from_resource(resource_path : ::String) : Bool
      # gtk_builder_add_from_resource: (Method | Throws)
      # @resource_path:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_builder_add_from_resource(to_unsafe, resource_path, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_from_string(buffer : ::String, length : Int64) : Bool
      # gtk_builder_add_from_string: (Method | Throws)
      # @buffer:
      # @length:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_builder_add_from_string(to_unsafe, buffer, length, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_objects_from_file(filename : ::String, object_ids : Enumerable(::String)) : Bool
      # gtk_builder_add_objects_from_file: (Method | Throws)
      # @filename:
      # @object_ids: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayArgPlan
      object_ids = object_ids.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGtk.gtk_builder_add_objects_from_file(to_unsafe, filename, object_ids, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_objects_from_resource(resource_path : ::String, object_ids : Enumerable(::String)) : Bool
      # gtk_builder_add_objects_from_resource: (Method | Throws)
      # @resource_path:
      # @object_ids: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayArgPlan
      object_ids = object_ids.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGtk.gtk_builder_add_objects_from_resource(to_unsafe, resource_path, object_ids, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_objects_from_string(buffer : ::String, length : Int64, object_ids : Enumerable(::String)) : Bool
      # gtk_builder_add_objects_from_string: (Method | Throws)
      # @buffer:
      # @length:
      # @object_ids: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayArgPlan
      object_ids = object_ids.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGtk.gtk_builder_add_objects_from_string(to_unsafe, buffer, length, object_ids, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def create_closure(function_name : ::String, flags : Gtk::BuilderClosureFlags, object : GObject::Object?) : GObject::Closure?
      # gtk_builder_create_closure: (Method | Throws)
      # @function_name:
      # @flags:
      # @object: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      object = if object.nil?
                 Pointer(Void).null
               else
                 object.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_builder_create_closure(to_unsafe, function_name, flags, object, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GObject::Closure.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def expose_object(name : ::String, object : GObject::Object) : Nil
      # gtk_builder_expose_object: (Method)
      # @name:
      # @object:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_builder_expose_object(to_unsafe, name, object)

      # Return value handling
    end

    def extend_with_template(object : GObject::Object, template_type : UInt64, buffer : ::String, length : Int64) : Bool
      # gtk_builder_extend_with_template: (Method | Throws)
      # @object:
      # @template_type:
      # @buffer:
      # @length:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_builder_extend_with_template(to_unsafe, object, template_type, buffer, length, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def current_object : GObject::Object?
      # gtk_builder_get_current_object: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_builder_get_current_object(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def object(name : ::String) : GObject::Object?
      # gtk_builder_get_object: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_builder_get_object(to_unsafe, name)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def objects : GLib::SList
      # gtk_builder_get_objects: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_builder_get_objects(to_unsafe)

      # Return value handling
      GLib::SList(GObject::Object).new(_retval, GICrystal::Transfer::Container)
    end

    def scope : Gtk::BuilderScope
      # gtk_builder_get_scope: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_builder_get_scope(to_unsafe)

      # Return value handling
      Gtk::AbstractBuilderScope.new(_retval, GICrystal::Transfer::None)
    end

    def translation_domain : ::String?
      # gtk_builder_get_translation_domain: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_builder_get_translation_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def type_from_name(type_name : ::String) : UInt64
      # gtk_builder_get_type_from_name: (Method)
      # @type_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_builder_get_type_from_name(to_unsafe, type_name)

      # Return value handling
      _retval
    end

    def current_object=(current_object : GObject::Object?) : Nil
      # gtk_builder_set_current_object: (Method | Setter)
      # @current_object: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      current_object = if current_object.nil?
                         Pointer(Void).null
                       else
                         current_object.to_unsafe
                       end

      # C call
      LibGtk.gtk_builder_set_current_object(to_unsafe, current_object)

      # Return value handling
    end

    def scope=(scope : Gtk::BuilderScope?) : Nil
      # gtk_builder_set_scope: (Method | Setter)
      # @scope: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      scope = if scope.nil?
                Pointer(Void).null
              else
                scope.to_unsafe
              end

      # C call
      LibGtk.gtk_builder_set_scope(to_unsafe, scope)

      # Return value handling
    end

    def translation_domain=(domain : ::String?) : Nil
      # gtk_builder_set_translation_domain: (Method | Setter)
      # @domain: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      domain = if domain.nil?
                 Pointer(LibC::Char).null
               else
                 domain.to_unsafe
               end

      # C call
      LibGtk.gtk_builder_set_translation_domain(to_unsafe, domain)

      # Return value handling
    end

    def value_from_string(pspec : GObject::ParamSpec, string : ::String) : GObject::Value
      # gtk_builder_value_from_string: (Method | Throws)
      # @pspec:
      # @string:
      # @value: (out) (caller-allocates)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::CallerAllocatesPlan
      value = GObject::Value.new
      # C call
      _retval = LibGtk.gtk_builder_value_from_string(to_unsafe, pspec, string, value, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      value
    end

    def value_from_string_type(type : UInt64, string : ::String) : GObject::Value
      # gtk_builder_value_from_string_type: (Method | Throws)
      # @type:
      # @string:
      # @value: (out) (caller-allocates)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::CallerAllocatesPlan
      value = GObject::Value.new
      # C call
      _retval = LibGtk.gtk_builder_value_from_string_type(to_unsafe, type, string, value, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      value
    end

    def_equals_and_hash @pointer
  end
end
