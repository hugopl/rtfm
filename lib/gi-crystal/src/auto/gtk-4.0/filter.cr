require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Filter < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FilterClass), class_init,
        sizeof(LibGtk::Filter), instance_init, 0)
    end

    GICrystal.declare_new_method(Filter, g_object_get_qdata)

    # Initialize a new `Filter`.
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
      @@g_type ||= LibGtk.gtk_filter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Filter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def changed(change : Gtk::FilterChange) : Nil
      # gtk_filter_changed: (Method)
      # @change:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_filter_changed(to_unsafe, change)

      # Return value handling
    end

    def strictness : Gtk::FilterMatch
      # gtk_filter_get_strictness: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_filter_get_strictness(to_unsafe)

      # Return value handling
      Gtk::FilterMatch.new(_retval)
    end

    def match(item : GObject::Object) : Bool
      # gtk_filter_match: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_filter_match(to_unsafe, item)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::FilterChange, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::FilterChange, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_change : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          change = Gtk::FilterChange.new(lib_change)
          ::Box(Proc(Gtk::FilterChange, Nil)).unbox(_lib_box).call(change)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Filter, Gtk::FilterChange, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_change : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Filter.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          change = Gtk::FilterChange.new(lib_change)
          ::Box(Proc(Gtk::Filter, Gtk::FilterChange, Nil)).unbox(_lib_box).call(_sender, change)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(change : Gtk::FilterChange) : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed", change)
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    # get_strictness: (None)
    # Returns: (transfer none)
    private macro _register_get_strictness_vfunc(impl_method_name)
      private def self._vfunc_get_strictness(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_strictness(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_strictness: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_strictness_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_strictness(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_strictness = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_strictness(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_strictness : Proc(Pointer(Void), UInt32)? = nil
    end

    # match: (None)
    # @item: (nullable)
    # Returns: (transfer none)
    private macro _register_match_vfunc(impl_method_name)
      private def self._vfunc_match(%this : Pointer(Void), lib_item :  Pointer(Void), ) : LibC::Int
        # @item: (nullable) 

# Generator::NullableArrayPlan
item=(lib_item.null? ? nil : GObject::Object.new(lib_item, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
item=GObject::Object.new(lib_item, GICrystal::Transfer::None) unless lib_item.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_match(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # match: (None)
    # @item: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_match_vfunc(impl_method_name)
      private def self._vfunc_unsafe_match(%this : Pointer(Void), lib_item :  Pointer(Void), ) : LibC::Int
# @item: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_match = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_match(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_match : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
