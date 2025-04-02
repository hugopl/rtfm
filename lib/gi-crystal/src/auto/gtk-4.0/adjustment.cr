require "../g_object-2.0/initially_unowned"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Adjustment < GObject::InitiallyUnowned
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::AdjustmentClass), class_init,
        sizeof(LibGtk::Adjustment), instance_init, 0)
    end

    GICrystal.declare_new_method(Adjustment, g_object_get_qdata)

    # Initialize a new `Adjustment`.
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

    def initialize(*, lower : Float64? = nil, page_increment : Float64? = nil, page_size : Float64? = nil, step_increment : Float64? = nil, upper : Float64? = nil, value : Float64? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !lower.nil?
        (_names.to_unsafe + _n).value = "lower".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, lower)
        _n += 1
      end
      if !page_increment.nil?
        (_names.to_unsafe + _n).value = "page-increment".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page_increment)
        _n += 1
      end
      if !page_size.nil?
        (_names.to_unsafe + _n).value = "page-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page_size)
        _n += 1
      end
      if !step_increment.nil?
        (_names.to_unsafe + _n).value = "step-increment".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, step_increment)
        _n += 1
      end
      if !upper.nil?
        (_names.to_unsafe + _n).value = "upper".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, upper)
        _n += 1
      end
      if !value.nil?
        (_names.to_unsafe + _n).value = "value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value)
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
      @@g_type ||= LibGtk.gtk_adjustment_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Adjustment.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def lower=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "lower", unsafe_value, Pointer(Void).null)
      value
    end

    def lower : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "lower", pointerof(value), Pointer(Void).null)
      value
    end

    def page_increment=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "page-increment", unsafe_value, Pointer(Void).null)
      value
    end

    def page_increment : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "page-increment", pointerof(value), Pointer(Void).null)
      value
    end

    def page_size=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "page-size", unsafe_value, Pointer(Void).null)
      value
    end

    def page_size : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "page-size", pointerof(value), Pointer(Void).null)
      value
    end

    def step_increment=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "step-increment", unsafe_value, Pointer(Void).null)
      value
    end

    def step_increment : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "step-increment", pointerof(value), Pointer(Void).null)
      value
    end

    def upper=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "upper", unsafe_value, Pointer(Void).null)
      value
    end

    def upper : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "upper", pointerof(value), Pointer(Void).null)
      value
    end

    def value=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "value", unsafe_value, Pointer(Void).null)
      value
    end

    def value : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "value", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(value : Float64, lower : Float64, upper : Float64, step_increment : Float64, page_increment : Float64, page_size : Float64) : self
      # gtk_adjustment_new: (Constructor)
      # @value:
      # @lower:
      # @upper:
      # @step_increment:
      # @page_increment:
      # @page_size:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_new(value, lower, upper, step_increment, page_increment, page_size)

      # Return value handling
      Gtk::Adjustment.new(_retval, GICrystal::Transfer::Full)
    end

    def clamp_page(lower : Float64, upper : Float64) : Nil
      # gtk_adjustment_clamp_page: (Method)
      # @lower:
      # @upper:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_clamp_page(to_unsafe, lower, upper)

      # Return value handling
    end

    def configure(value : Float64, lower : Float64, upper : Float64, step_increment : Float64, page_increment : Float64, page_size : Float64) : Nil
      # gtk_adjustment_configure: (Method)
      # @value:
      # @lower:
      # @upper:
      # @step_increment:
      # @page_increment:
      # @page_size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_configure(to_unsafe, value, lower, upper, step_increment, page_increment, page_size)

      # Return value handling
    end

    def lower : Float64
      # gtk_adjustment_get_lower: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_get_lower(to_unsafe)

      # Return value handling
      _retval
    end

    def minimum_increment : Float64
      # gtk_adjustment_get_minimum_increment: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_get_minimum_increment(to_unsafe)

      # Return value handling
      _retval
    end

    def page_increment : Float64
      # gtk_adjustment_get_page_increment: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_get_page_increment(to_unsafe)

      # Return value handling
      _retval
    end

    def page_size : Float64
      # gtk_adjustment_get_page_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_get_page_size(to_unsafe)

      # Return value handling
      _retval
    end

    def step_increment : Float64
      # gtk_adjustment_get_step_increment: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_get_step_increment(to_unsafe)

      # Return value handling
      _retval
    end

    def upper : Float64
      # gtk_adjustment_get_upper: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_get_upper(to_unsafe)

      # Return value handling
      _retval
    end

    def value : Float64
      # gtk_adjustment_get_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_adjustment_get_value(to_unsafe)

      # Return value handling
      _retval
    end

    def lower=(lower : Float64) : Nil
      # gtk_adjustment_set_lower: (Method | Setter)
      # @lower:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_set_lower(to_unsafe, lower)

      # Return value handling
    end

    def page_increment=(page_increment : Float64) : Nil
      # gtk_adjustment_set_page_increment: (Method | Setter)
      # @page_increment:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_set_page_increment(to_unsafe, page_increment)

      # Return value handling
    end

    def page_size=(page_size : Float64) : Nil
      # gtk_adjustment_set_page_size: (Method | Setter)
      # @page_size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_set_page_size(to_unsafe, page_size)

      # Return value handling
    end

    def step_increment=(step_increment : Float64) : Nil
      # gtk_adjustment_set_step_increment: (Method | Setter)
      # @step_increment:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_set_step_increment(to_unsafe, step_increment)

      # Return value handling
    end

    def upper=(upper : Float64) : Nil
      # gtk_adjustment_set_upper: (Method | Setter)
      # @upper:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_set_upper(to_unsafe, upper)

      # Return value handling
    end

    def value=(value : Float64) : Nil
      # gtk_adjustment_set_value: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_adjustment_set_value(to_unsafe, value)

      # Return value handling
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Adjustment, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Adjustment.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Adjustment, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    struct ValueChangedSignal < GObject::Signal
      def name : String
        @detail ? "value-changed::#{@detail}" : "value-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Adjustment, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Adjustment.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Adjustment, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "value-changed")
      end
    end

    def value_changed_signal
      ValueChangedSignal.new(self)
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    # value_changed: (None)
    # Returns: (transfer none)
    private macro _register_value_changed_vfunc(impl_method_name)
      private def self._vfunc_value_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_value_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # value_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_value_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_value_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_value_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_value_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_value_changed : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
