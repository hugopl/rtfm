require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class MenuModel < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::MenuModelClass), class_init,
        sizeof(LibGio::MenuModel), instance_init, 0)
    end

    GICrystal.declare_new_method(MenuModel, g_object_get_qdata)

    # Initialize a new `MenuModel`.
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
      @@g_type ||= LibGio.g_menu_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::MenuModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def item_attribute_value(item_index : Int32, attribute : ::String, expected_type : GLib::VariantType?) : GLib::Variant?
      # g_menu_model_get_item_attribute_value: (Method)
      # @item_index:
      # @attribute:
      # @expected_type: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      expected_type = if expected_type.nil?
                        Pointer(Void).null
                      else
                        expected_type.to_unsafe
                      end

      # C call
      _retval = LibGio.g_menu_model_get_item_attribute_value(to_unsafe, item_index, attribute, expected_type)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def item_link(item_index : Int32, link : ::String) : Gio::MenuModel?
      # g_menu_model_get_item_link: (Method)
      # @item_index:
      # @link:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_menu_model_get_item_link(to_unsafe, item_index, link)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def n_items : Int32
      # g_menu_model_get_n_items: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_menu_model_get_n_items(to_unsafe)

      # Return value handling
      _retval
    end

    def is_mutable : Bool
      # g_menu_model_is_mutable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_menu_model_is_mutable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def items_changed(position : Int32, removed : Int32, added : Int32) : Nil
      # g_menu_model_items_changed: (Method)
      # @position:
      # @removed:
      # @added:
      # Returns: (transfer none)

      # C call
      LibGio.g_menu_model_items_changed(to_unsafe, position, removed, added)

      # Return value handling
    end

    def iterate_item_attributes(item_index : Int32) : Gio::MenuAttributeIter
      # g_menu_model_iterate_item_attributes: (Method)
      # @item_index:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_menu_model_iterate_item_attributes(to_unsafe, item_index)

      # Return value handling
      Gio::MenuAttributeIter.new(_retval, GICrystal::Transfer::Full)
    end

    def iterate_item_links(item_index : Int32) : Gio::MenuLinkIter
      # g_menu_model_iterate_item_links: (Method)
      # @item_index:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_menu_model_iterate_item_links(to_unsafe, item_index)

      # Return value handling
      Gio::MenuLinkIter.new(_retval, GICrystal::Transfer::Full)
    end

    struct ItemsChangedSignal < GObject::Signal
      def name : String
        @detail ? "items-changed::#{@detail}" : "items-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Int32, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : Int32, lib_removed : Int32, lib_added : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          position = lib_position
          # NoStrategy
          removed = lib_removed
          # NoStrategy
          added = lib_added
          ::Box(Proc(Int32, Int32, Int32, Nil)).unbox(_lib_box).call(position, removed, added)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::MenuModel, Int32, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : Int32, lib_removed : Int32, lib_added : Int32, _lib_box : Pointer(Void)) {
          _sender = Gio::MenuModel.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          # NoStrategy
          removed = lib_removed
          # NoStrategy
          added = lib_added
          ::Box(Proc(Gio::MenuModel, Int32, Int32, Int32, Nil)).unbox(_lib_box).call(_sender, position, removed, added)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(position : Int32, removed : Int32, added : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "items-changed", position, removed, added)
      end
    end

    def items_changed_signal
      ItemsChangedSignal.new(self)
    end

    # get_item_attribute_value: (None)
    # @item_index:
    # @attribute:
    # @expected_type: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_get_item_attribute_value_vfunc(impl_method_name)
      private def self._vfunc_get_item_attribute_value(%this : Pointer(Void), lib_item_index :  Int32, lib_attribute :  Pointer(LibC::Char), lib_expected_type :  Pointer(Void), ) : Pointer(Void)
        # @item_index: 
# @attribute: 
# @expected_type: (nullable) 

item_index=lib_item_index
# Generator::BuiltInTypeArgPlan
attribute=::String.new(lib_attribute)
# Generator::NullableArrayPlan
expected_type=(lib_expected_type.null? ? nil : GLib::VariantType.new(lib_expected_type, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
expected_type=GLib::VariantType.new(lib_expected_type, GICrystal::Transfer::None) unless lib_expected_type.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item_index, attribute, expected_type)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_item_attribute_value(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_item_attribute_value: (None)
    # @item_index:
    # @attribute:
    # @expected_type: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_item_attribute_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_item_attribute_value(%this : Pointer(Void), lib_item_index :  Int32, lib_attribute :  Pointer(LibC::Char), lib_expected_type :  Pointer(Void), ) : Pointer(Void)
# @item_index: 
# @attribute: 
# @expected_type: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item_index, lib_attribute, lib_expected_type)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_item_attribute_value = Proc(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_item_attribute_value(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_item_attribute_value : Proc(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void), Pointer(Void))? = nil
    end

    # get_item_attributes: (None)
    # @item_index:
    # @attributes: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_item_attributes_vfunc(impl_method_name)
      private def self._vfunc_get_item_attributes(%this : Pointer(Void), lib_item_index :  Int32, lib_attributes :  Pointer(Void), ) : Void
        # @item_index: 
# @attributes: (out) (transfer full) 

item_index=lib_item_index
attributes=lib_attributes


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item_index, attributes)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_item_attributes(Pointer(Void), Int32, Pointer(Void))).pointer
        previous_def
      end
    end

    # get_item_attributes: (None)
    # @item_index:
    # @attributes: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_item_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_item_attributes(%this : Pointer(Void), lib_item_index :  Int32, lib_attributes :  Pointer(Void), ) : Void
# @item_index: 
# @attributes: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item_index, lib_attributes)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_item_attributes = Proc(Pointer(Void), Int32, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_item_attributes(Pointer(Void), Int32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_item_attributes : Proc(Pointer(Void), Int32, Pointer(Void), Void)? = nil
    end

    # get_item_link: (None)
    # @item_index:
    # @link:
    # Returns: (transfer full) (nullable)
    private macro _register_get_item_link_vfunc(impl_method_name)
      private def self._vfunc_get_item_link(%this : Pointer(Void), lib_item_index :  Int32, lib_link :  Pointer(LibC::Char), ) : Pointer(Void)
        # @item_index: 
# @link: 

item_index=lib_item_index
# Generator::BuiltInTypeArgPlan
link=::String.new(lib_link)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item_index, link)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_item_link(Pointer(Void), Int32, Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_item_link: (None)
    # @item_index:
    # @link:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_item_link_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_item_link(%this : Pointer(Void), lib_item_index :  Int32, lib_link :  Pointer(LibC::Char), ) : Pointer(Void)
# @item_index: 
# @link: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item_index, lib_link)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_item_link = Proc(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_item_link(Pointer(Void), Int32, Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_item_link : Proc(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_item_links: (None)
    # @item_index:
    # @links: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_item_links_vfunc(impl_method_name)
      private def self._vfunc_get_item_links(%this : Pointer(Void), lib_item_index :  Int32, lib_links :  Pointer(Void), ) : Void
        # @item_index: 
# @links: (out) (transfer full) 

item_index=lib_item_index
links=lib_links


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item_index, links)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_item_links(Pointer(Void), Int32, Pointer(Void))).pointer
        previous_def
      end
    end

    # get_item_links: (None)
    # @item_index:
    # @links: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_item_links_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_item_links(%this : Pointer(Void), lib_item_index :  Int32, lib_links :  Pointer(Void), ) : Void
# @item_index: 
# @links: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item_index, lib_links)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_item_links = Proc(Pointer(Void), Int32, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_item_links(Pointer(Void), Int32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_item_links : Proc(Pointer(Void), Int32, Pointer(Void), Void)? = nil
    end

    # get_n_items: (None)
    # Returns: (transfer none)
    private macro _register_get_n_items_vfunc(impl_method_name)
      private def self._vfunc_get_n_items(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_n_items(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_n_items: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_n_items_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_n_items(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_n_items = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_n_items(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_n_items : Proc(Pointer(Void), Int32)? = nil
    end

    # is_mutable: (None)
    # Returns: (transfer none)
    private macro _register_is_mutable_vfunc(impl_method_name)
      private def self._vfunc_is_mutable(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_mutable(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_mutable: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_mutable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_mutable(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_mutable = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_mutable(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_mutable : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # iterate_item_attributes: (None)
    # @item_index:
    # Returns: (transfer full)
    private macro _register_iterate_item_attributes_vfunc(impl_method_name)
      private def self._vfunc_iterate_item_attributes(%this : Pointer(Void), lib_item_index :  Int32, ) : Pointer(Void)
        # @item_index: 

item_index=lib_item_index


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item_index)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iterate_item_attributes(Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # iterate_item_attributes: (None)
    # @item_index:
    # Returns: (transfer full)
    private macro _register_unsafe_iterate_item_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iterate_item_attributes(%this : Pointer(Void), lib_item_index :  Int32, ) : Pointer(Void)
# @item_index: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item_index)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iterate_item_attributes = Proc(Pointer(Void), Int32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iterate_item_attributes(Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iterate_item_attributes : Proc(Pointer(Void), Int32, Pointer(Void))? = nil
    end

    # iterate_item_links: (None)
    # @item_index:
    # Returns: (transfer full)
    private macro _register_iterate_item_links_vfunc(impl_method_name)
      private def self._vfunc_iterate_item_links(%this : Pointer(Void), lib_item_index :  Int32, ) : Pointer(Void)
        # @item_index: 

item_index=lib_item_index


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(item_index)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iterate_item_links(Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # iterate_item_links: (None)
    # @item_index:
    # Returns: (transfer full)
    private macro _register_unsafe_iterate_item_links_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iterate_item_links(%this : Pointer(Void), lib_item_index :  Int32, ) : Pointer(Void)
# @item_index: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_item_index)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iterate_item_links = Proc(Pointer(Void), Int32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iterate_item_links(Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iterate_item_links : Proc(Pointer(Void), Int32, Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
