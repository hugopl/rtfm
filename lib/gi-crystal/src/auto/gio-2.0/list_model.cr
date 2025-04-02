module Gio
  module ListModel
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::ListModel
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__ListModel(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractListModel.g_type
    end

    def item_type : UInt64
      # g_list_model_get_item_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_list_model_get_item_type(to_unsafe)

      # Return value handling
      _retval
    end

    def n_items : UInt32
      # g_list_model_get_n_items: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_list_model_get_n_items(to_unsafe)

      # Return value handling
      _retval
    end

    def item(position : UInt32) : GObject::Object?
      # g_list_model_get_object: (Method)
      # @position:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_list_model_get_object(to_unsafe, position)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def items_changed(position : UInt32, removed : UInt32, added : UInt32) : Nil
      # g_list_model_items_changed: (Method)
      # @position:
      # @removed:
      # @added:
      # Returns: (transfer none)

      # C call
      LibGio.g_list_model_items_changed(to_unsafe, position, removed, added)

      # Return value handling
    end

    # get_item: (None)
    # @position:
    # Returns: (transfer full) (nullable)
    private macro _register_get_item_vfunc(impl_method_name)
      private def self._vfunc_get_item(%this : Pointer(Void), lib_position :  UInt32, ) : Pointer(Void)
        # @position: 

position=lib_position


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__ListModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_item(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # get_item: (None)
    # @position:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_item_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_item(%this : Pointer(Void), lib_position :  UInt32, ) : Pointer(Void)
# @position: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position)
      end

      def self._install_iface_Gio__ListModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_item = Proc(Pointer(Void), UInt32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_item(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_item : Proc(Pointer(Void), UInt32, Pointer(Void))? = nil
    end

    # get_item_type: (None)
    # Returns: (transfer none)
    private macro _register_get_item_type_vfunc(impl_method_name)
      private def self._vfunc_get_item_type(%this : Pointer(Void), ) : UInt64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__ListModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_item_type(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_item_type: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_item_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_item_type(%this : Pointer(Void), ) : UInt64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__ListModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_item_type = Proc(Pointer(Void), UInt64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_item_type(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_item_type : Proc(Pointer(Void), UInt64)? = nil
    end

    # get_n_items: (None)
    # Returns: (transfer none)
    private macro _register_get_n_items_vfunc(impl_method_name)
      private def self._vfunc_get_n_items(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__ListModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_n_items(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_n_items: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_n_items_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_n_items(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__ListModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_n_items = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_n_items(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_n_items : Proc(Pointer(Void), UInt32)? = nil
    end

    struct ItemsChangedSignal < GObject::Signal
      def name : String
        @detail ? "items-changed::#{@detail}" : "items-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, UInt32, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_removed : UInt32, lib_added : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          position = lib_position
          # NoStrategy
          removed = lib_removed
          # NoStrategy
          added = lib_added
          ::Box(Proc(UInt32, UInt32, UInt32, Nil)).unbox(_lib_box).call(position, removed, added)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::ListModel, UInt32, UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_removed : UInt32, lib_added : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractListModel.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          # NoStrategy
          removed = lib_removed
          # NoStrategy
          added = lib_added
          ::Box(Proc(Gio::ListModel, UInt32, UInt32, UInt32, Nil)).unbox(_lib_box).call(_sender, position, removed, added)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(position : UInt32, removed : UInt32, added : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "items-changed", position, removed, added)
      end
    end

    def items_changed_signal
      ItemsChangedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractListModel.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractListModel < GObject::Object
    include ListModel

    GICrystal.declare_new_method(Gio::AbstractListModel, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_list_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractListModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
