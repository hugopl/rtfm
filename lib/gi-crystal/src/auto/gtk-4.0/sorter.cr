require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Sorter < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SorterClass), class_init,
        sizeof(LibGtk::Sorter), instance_init, 0)
    end

    GICrystal.declare_new_method(Sorter, g_object_get_qdata)

    # Initialize a new `Sorter`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_sorter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Sorter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def changed(change : Gtk::SorterChange) : Nil
      # gtk_sorter_changed: (Method)
      # @change:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_sorter_changed(to_unsafe, change)

      # Return value handling
    end

    def compare(item1 : GObject::Object, item2 : GObject::Object) : Gtk::Ordering
      # gtk_sorter_compare: (Method)
      # @item1:
      # @item2:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_sorter_compare(to_unsafe, item1, item2)

      # Return value handling
      Gtk::Ordering.new(_retval)
    end

    def order : Gtk::SorterOrder
      # gtk_sorter_get_order: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_sorter_get_order(to_unsafe)

      # Return value handling
      Gtk::SorterOrder.new(_retval)
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::SorterChange, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::SorterChange, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_change : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          change = Gtk::SorterChange.new(lib_change)
          ::Box(Proc(Gtk::SorterChange, Nil)).unbox(_lib_box).call(change)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Sorter, Gtk::SorterChange, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_change : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Sorter.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          change = Gtk::SorterChange.new(lib_change)
          ::Box(Proc(Gtk::Sorter, Gtk::SorterChange, Nil)).unbox(_lib_box).call(_sender, change)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(change : Gtk::SorterChange) : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed", change)
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    # compare: (None)
    # @item1: (nullable)
    # @item2: (nullable)
    # Returns: (transfer none)
    private macro _register_compare_vfunc(impl_method_name)
      private def self._vfunc_compare(%this : Pointer(Void), lib_item1 :  Pointer(Void), lib_item2 :  Pointer(Void), ) : Int32
        # @item1: (nullable) 
# @item2: (nullable) 

# Generator::NullableArrayPlan
item1=(lib_item1.null? ? nil : GObject::Object.new(lib_item1, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
item1=GObject::Object.new(lib_item1, GICrystal::Transfer::None) unless lib_item1.null?
# Generator::NullableArrayPlan
item2=(lib_item2.null? ? nil : GObject::Object.new(lib_item2, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
item2=GObject::Object.new(lib_item2, GICrystal::Transfer::None) unless lib_item2.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item1, item2)
        
        %retval.to_i32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_compare(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # compare: (None)
    # @item1: (nullable)
    # @item2: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_compare_vfunc(impl_method_name)
      private def self._vfunc_unsafe_compare(%this : Pointer(Void), lib_item1 :  Pointer(Void), lib_item2 :  Pointer(Void), ) : Int32
# @item1: (nullable) 
# @item2: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item1, lib_item2)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_compare = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_compare(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_compare : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32)? = nil
    end

    # get_order: (None)
    # Returns: (transfer none)
    private macro _register_get_order_vfunc(impl_method_name)
      private def self._vfunc_get_order(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_order(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_order: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_order_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_order(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_order = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_order(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_order : Proc(Pointer(Void), UInt32)? = nil
    end

    def_equals_and_hash @pointer
  end
end
