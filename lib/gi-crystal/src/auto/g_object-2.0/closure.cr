module GObject
  class Closure
    @data : LibGObject::Closure

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::Closure)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref_count : UInt32? = nil, meta_marshal_nouse : UInt32? = nil, n_guards : UInt32? = nil, n_fnotifiers : UInt32? = nil, n_inotifiers : UInt32? = nil, in_inotify : UInt32? = nil, floating : UInt32? = nil, derivative_flag : UInt32? = nil, in_marshal : UInt32? = nil, is_invalid : UInt32? = nil, marshal : GObject::Marshal? = nil)
      _instance = allocate
      _instance.ref_count = ref_count unless ref_count.nil?
      _instance.meta_marshal_nouse = meta_marshal_nouse unless meta_marshal_nouse.nil?
      _instance.n_guards = n_guards unless n_guards.nil?
      _instance.n_fnotifiers = n_fnotifiers unless n_fnotifiers.nil?
      _instance.n_inotifiers = n_inotifiers unless n_inotifiers.nil?
      _instance.in_inotify = in_inotify unless in_inotify.nil?
      _instance.floating = floating unless floating.nil?
      _instance.derivative_flag = derivative_flag unless derivative_flag.nil?
      _instance.in_marshal = in_marshal unless in_marshal.nil?
      _instance.is_invalid = is_invalid unless is_invalid.nil?
      _instance.marshal = marshal unless marshal.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::Closure)).zero?
    end

    def ref_count : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.ref_count
      value
    end

    def ref_count=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def meta_marshal_nouse : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.meta_marshal_nouse
      value
    end

    def meta_marshal_nouse=(value : UInt32)
      _var = (to_unsafe + 4).as(Pointer(UInt32)).value = value
      value
    end

    def n_guards : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.n_guards
      value
    end

    def n_guards=(value : UInt32)
      _var = (to_unsafe + 8).as(Pointer(UInt32)).value = value
      value
    end

    def n_fnotifiers : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.n_fnotifiers
      value
    end

    def n_fnotifiers=(value : UInt32)
      _var = (to_unsafe + 12).as(Pointer(UInt32)).value = value
      value
    end

    def n_inotifiers : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.n_inotifiers
      value
    end

    def n_inotifiers=(value : UInt32)
      _var = (to_unsafe + 16).as(Pointer(UInt32)).value = value
      value
    end

    def in_inotify : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.in_inotify
      value
    end

    def in_inotify=(value : UInt32)
      _var = (to_unsafe + 20).as(Pointer(UInt32)).value = value
      value
    end

    def floating : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.floating
      value
    end

    def floating=(value : UInt32)
      _var = (to_unsafe + 24).as(Pointer(UInt32)).value = value
      value
    end

    def derivative_flag : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.derivative_flag
      value
    end

    def derivative_flag=(value : UInt32)
      _var = (to_unsafe + 28).as(Pointer(UInt32)).value = value
      value
    end

    def in_marshal : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.in_marshal
      value
    end

    def in_marshal=(value : UInt32)
      _var = (to_unsafe + 32).as(Pointer(UInt32)).value = value
      value
    end

    def is_invalid : UInt32
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.is_invalid
      value
    end

    def is_invalid=(value : UInt32)
      _var = (to_unsafe + 36).as(Pointer(UInt32)).value = value
      value
    end

    def marshal : GObject::Marshal
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.marshal
      GObject::Marshal.new(value, GICrystal::Transfer::None)
    end

    def marshal=(value : GObject::Marshal)
      _var = (to_unsafe + 40).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::Closure))
      value
    end

    def data!
      self.data.not_nil!
    end

    def data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def notifiers!
      self.notifiers.not_nil!
    end

    def notifiers : GObject::ClosureNotifyData?
      value = to_unsafe.as(Pointer(LibGObject::Closure)).value.notifiers
      return if value.null?
      value = value.as(Pointer(Void))
      GObject::ClosureNotifyData.new(value, GICrystal::Transfer::None)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGObject.g_closure_get_type
    end

    def self.new_object(sizeof_closure : UInt32, object : GObject::Object) : self
      # g_closure_new_object: (Constructor)
      # @sizeof_closure:
      # @object:
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_closure_new_object(sizeof_closure, object)

      # Return value handling
      GObject::Closure.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_simple(sizeof_closure : UInt32, data : Pointer(Void)?) : self
      # g_closure_new_simple: (Constructor)
      # @sizeof_closure:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      _retval = LibGObject.g_closure_new_simple(sizeof_closure, data)

      # Return value handling
      GObject::Closure.new(_retval, GICrystal::Transfer::Full)
    end

    def invalidate : Nil
      # g_closure_invalidate: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_closure_invalidate(to_unsafe)

      # Return value handling
    end

    def invoke(param_values : Enumerable(_), invocation_hint : Pointer(Void)?) : GObject::Value
      # g_closure_invoke: (Method)
      # @return_value: (out) (caller-allocates) (optional)
      # @n_param_values:
      # @param_values: (array length=n_param_values element-type Interface)
      # @invocation_hint: (nullable)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      return_value = Pointer(Void).null # Generator::CallerAllocatesPlan
      return_value = GObject::Value.new # Generator::ArrayLengthArgPlan
      n_param_values = param_values.size
      # Generator::ArrayArgPlan
      param_values = param_values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe.as(Pointer(LibGObject::Value)).value }.to_unsafe.as(Pointer(LibGObject::Value))
      # Generator::NullableArrayPlan
      invocation_hint = if invocation_hint.nil?
                          Pointer(Void).null
                        else
                          invocation_hint.to_unsafe
                        end

      # C call
      LibGObject.g_closure_invoke(to_unsafe, return_value, n_param_values, param_values, invocation_hint)

      # Return value handling
      return_value
    end

    def ref : GObject::Closure
      # g_closure_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGObject.g_closure_ref(to_unsafe)

      # Return value handling
      GObject::Closure.new(_retval, GICrystal::Transfer::Full)
    end

    def sink : Nil
      # g_closure_sink: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_closure_sink(to_unsafe)

      # Return value handling
    end

    def unref : Nil
      # g_closure_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_closure_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
