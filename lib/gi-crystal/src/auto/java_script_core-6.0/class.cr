require "../g_object-2.0/object"

module JavaScriptCore
  @[GICrystal::GeneratedWrapper]
  class Class < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Class, g_object_get_qdata)

    # Initialize a new `Class`.
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

    def initialize(*, context : JavaScriptCore::Context? = nil, name : ::String? = nil, parent : JavaScriptCore::Class? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !context.nil?
        (_names.to_unsafe + _n).value = "context".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, context)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
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
      @@g_type ||= LibJavaScriptCore.jsc_class_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->JavaScriptCore::Class.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def context=(value : JavaScriptCore::Context?) : JavaScriptCore::Context?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "context", unsafe_value, Pointer(Void).null)
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

    def parent=(value : JavaScriptCore::Class?) : JavaScriptCore::Class?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "parent", unsafe_value, Pointer(Void).null)
      value
    end

    def parent : JavaScriptCore::Class?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parent", pointerof(value), Pointer(Void).null)
      JavaScriptCore::Class.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def add_constructor_variadic(name : ::String?, callback : GObject::Callback, user_data : Pointer(Void)?, destroy_notify : GLib::DestroyNotify?, return_type : UInt64) : JavaScriptCore::Value
      # jsc_class_add_constructor_variadic: (Method)
      # @name: (nullable)
      # @callback:
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # @return_type:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibJavaScriptCore.jsc_class_add_constructor_variadic(to_unsafe, name, callback, user_data, destroy_notify, return_type)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def add_constructor(name : ::String?, callback : GObject::Callback, user_data : Pointer(Void)?, destroy_notify : GLib::DestroyNotify?, return_type : UInt64, parameter_types : Enumerable(UInt64)?) : JavaScriptCore::Value
      # jsc_class_add_constructorv: (Method)
      # @name: (nullable)
      # @callback:
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # @return_type:
      # @n_parameters:
      # @parameter_types: (nullable) (array length=n_parameters element-type Gtype)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::ArrayLengthArgPlan
      n_parameters = parameter_types.try(&.size) || 0
      # Generator::NullableArrayPlan
      parameter_types = if parameter_types.nil?
                          Pointer(UInt64).null
                        else
                          parameter_types.to_a.to_unsafe.as(Pointer(UInt64))
                        end

      # C call
      _retval = LibJavaScriptCore.jsc_class_add_constructorv(to_unsafe, name, callback, user_data, destroy_notify, return_type, n_parameters, parameter_types)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def add_method_variadic(name : ::String, callback : GObject::Callback, user_data : Pointer(Void)?, destroy_notify : GLib::DestroyNotify?, return_type : UInt64) : Nil
      # jsc_class_add_method_variadic: (Method)
      # @name:
      # @callback:
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # @return_type:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibJavaScriptCore.jsc_class_add_method_variadic(to_unsafe, name, callback, user_data, destroy_notify, return_type)

      # Return value handling
    end

    def add_method(name : ::String, callback : GObject::Callback, user_data : Pointer(Void)?, destroy_notify : GLib::DestroyNotify?, return_type : UInt64, parameter_types : Enumerable(UInt64)?) : Nil
      # jsc_class_add_methodv: (Method)
      # @name:
      # @callback:
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # @return_type:
      # @n_parameters:
      # @parameter_types: (nullable) (array length=n_parameters element-type Gtype)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::ArrayLengthArgPlan
      n_parameters = parameter_types.try(&.size) || 0
      # Generator::NullableArrayPlan
      parameter_types = if parameter_types.nil?
                          Pointer(UInt64).null
                        else
                          parameter_types.to_a.to_unsafe.as(Pointer(UInt64))
                        end

      # C call
      LibJavaScriptCore.jsc_class_add_methodv(to_unsafe, name, callback, user_data, destroy_notify, return_type, n_parameters, parameter_types)

      # Return value handling
    end

    def add_property(name : ::String, property_type : UInt64, getter : GObject::Callback?, setter : GObject::Callback?) : Nil
      # jsc_class_add_property: (Method)
      # @name:
      # @property_type:
      # @getter: (nullable)
      # @setter: (nullable)
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if setter
        _box = ::Box.box(setter)
        setter = -> {
          ::Box(Proc(Nil)).unbox(Pointer(Void).null).call
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy_notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        setter = user_data = destroy_notify = Pointer(Void).null
      end

      # C call
      LibJavaScriptCore.jsc_class_add_property(to_unsafe, name, property_type, getter, setter, user_data, destroy_notify)

      # Return value handling
    end

    def name : ::String
      # jsc_class_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_class_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def parent : JavaScriptCore::Class
      # jsc_class_get_parent: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_class_get_parent(to_unsafe)

      # Return value handling
      JavaScriptCore::Class.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
