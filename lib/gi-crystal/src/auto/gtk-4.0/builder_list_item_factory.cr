require "./list_item_factory"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class BuilderListItemFactory < ListItemFactory
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::BuilderListItemFactoryClass), class_init,
        sizeof(LibGtk::BuilderListItemFactory), instance_init, 0)
    end

    GICrystal.declare_new_method(BuilderListItemFactory, g_object_get_qdata)

    # Initialize a new `BuilderListItemFactory`.
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

    def initialize(*, bytes : GLib::Bytes? = nil, resource : ::String? = nil, scope : Gtk::BuilderScope? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !bytes.nil?
        (_names.to_unsafe + _n).value = "bytes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bytes)
        _n += 1
      end
      if !resource.nil?
        (_names.to_unsafe + _n).value = "resource".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resource)
        _n += 1
      end
      if !scope.nil?
        (_names.to_unsafe + _n).value = "scope".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scope)
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
      @@g_type ||= LibGtk.gtk_builder_list_item_factory_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::BuilderListItemFactory.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def bytes=(value : GLib::Bytes?) : GLib::Bytes?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "bytes", unsafe_value, Pointer(Void).null)
      value
    end

    def bytes : GLib::Bytes?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "bytes", pointerof(value), Pointer(Void).null)
      GLib::Bytes.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def resource=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "resource", unsafe_value, Pointer(Void).null)
      value
    end

    def resource : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#resource` property to nil.
    def resource=(value : Nil) : Nil
      LibGObject.g_object_set(self, "resource", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#resource`, but can return nil.
    def resource? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def self.new_from_bytes(scope : Gtk::BuilderScope?, bytes : GLib::Bytes) : self
      # gtk_builder_list_item_factory_new_from_bytes: (Constructor)
      # @scope: (nullable)
      # @bytes:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      scope = if scope.nil?
                Pointer(Void).null
              else
                scope.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_builder_list_item_factory_new_from_bytes(scope, bytes)

      # Return value handling
      Gtk::BuilderListItemFactory.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_resource(scope : Gtk::BuilderScope?, resource_path : ::String) : self
      # gtk_builder_list_item_factory_new_from_resource: (Constructor)
      # @scope: (nullable)
      # @resource_path:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      scope = if scope.nil?
                Pointer(Void).null
              else
                scope.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_builder_list_item_factory_new_from_resource(scope, resource_path)

      # Return value handling
      Gtk::BuilderListItemFactory.new(_retval, GICrystal::Transfer::Full)
    end

    def bytes : GLib::Bytes
      # gtk_builder_list_item_factory_get_bytes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_builder_list_item_factory_get_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::None)
    end

    def resource : ::String?
      # gtk_builder_list_item_factory_get_resource: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_builder_list_item_factory_get_resource(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def scope : Gtk::BuilderScope?
      # gtk_builder_list_item_factory_get_scope: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_builder_list_item_factory_get_scope(to_unsafe)

      # Return value handling
      Gtk::AbstractBuilderScope.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
