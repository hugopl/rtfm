require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class NativeDialog < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::NativeDialogClass), class_init,
        sizeof(LibGtk::NativeDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(NativeDialog, g_object_get_qdata)

    # Initialize a new `NativeDialog`.
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

    def initialize(*, modal : Bool? = nil, title : ::String? = nil, transient_for : Gtk::Window? = nil, visible : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !transient_for.nil?
        (_names.to_unsafe + _n).value = "transient-for".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transient_for)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
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
      @@g_type ||= LibGtk.gtk_native_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::NativeDialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def modal=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "modal", unsafe_value, Pointer(Void).null)
      value
    end

    def modal? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "modal", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def title=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "title", unsafe_value, Pointer(Void).null)
      value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#title` property to nil.
    def title=(value : Nil) : Nil
      LibGObject.g_object_set(self, "title", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def transient_for=(value : Gtk::Window?) : Gtk::Window?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "transient-for", unsafe_value, Pointer(Void).null)
      value
    end

    def transient_for : Gtk::Window?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "transient-for", pointerof(value), Pointer(Void).null)
      Gtk::Window.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "visible", unsafe_value, Pointer(Void).null)
      value
    end

    def visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def destroy : Nil
      # gtk_native_dialog_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_dialog_destroy(to_unsafe)

      # Return value handling
    end

    def modal : Bool
      # gtk_native_dialog_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_native_dialog_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def title : ::String?
      # gtk_native_dialog_get_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_native_dialog_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def transient_for : Gtk::Window?
      # gtk_native_dialog_get_transient_for: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_native_dialog_get_transient_for(to_unsafe)

      # Return value handling
      Gtk::Window.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def visible : Bool
      # gtk_native_dialog_get_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_native_dialog_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hide : Nil
      # gtk_native_dialog_hide: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_dialog_hide(to_unsafe)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # gtk_native_dialog_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_dialog_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # gtk_native_dialog_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_dialog_set_title(to_unsafe, title)

      # Return value handling
    end

    def transient_for=(parent : Gtk::Window?) : Nil
      # gtk_native_dialog_set_transient_for: (Method | Setter)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      LibGtk.gtk_native_dialog_set_transient_for(to_unsafe, parent)

      # Return value handling
    end

    def show : Nil
      # gtk_native_dialog_show: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_native_dialog_show(to_unsafe)

      # Return value handling
    end

    struct ResponseSignal < GObject::Signal
      def name : String
        @detail ? "response::#{@detail}" : "response"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_response_id : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          response_id = lib_response_id
          ::Box(Proc(Int32, Nil)).unbox(_lib_box).call(response_id)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::NativeDialog, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_response_id : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::NativeDialog.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          response_id = lib_response_id
          ::Box(Proc(Gtk::NativeDialog, Int32, Nil)).unbox(_lib_box).call(_sender, response_id)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(response_id : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "response", response_id)
      end
    end

    def response_signal
      ResponseSignal.new(self)
    end

    # hide: (None)
    # Returns: (transfer none)
    private macro _register_hide_vfunc(impl_method_name)
      private def self._vfunc_hide(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_hide(Pointer(Void))).pointer
        previous_def
      end
    end

    # hide: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_hide_vfunc(impl_method_name)
      private def self._vfunc_unsafe_hide(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_hide = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_hide(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_hide : Proc(Pointer(Void), Void)? = nil
    end

    # response: (None)
    # @response_id:
    # Returns: (transfer none)
    private macro _register_response_vfunc(impl_method_name)
      private def self._vfunc_response(%this : Pointer(Void), lib_response_id :  Int32, ) : Void
        # @response_id: 

response_id=lib_response_id


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(response_id)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_response(Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # response: (None)
    # @response_id:
    # Returns: (transfer none)
    private macro _register_unsafe_response_vfunc(impl_method_name)
      private def self._vfunc_unsafe_response(%this : Pointer(Void), lib_response_id :  Int32, ) : Void
# @response_id: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_response_id)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_response = Proc(Pointer(Void), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_response(Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_response : Proc(Pointer(Void), Int32, Void)? = nil
    end

    # show: (None)
    # Returns: (transfer none)
    private macro _register_show_vfunc(impl_method_name)
      private def self._vfunc_show(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_show(Pointer(Void))).pointer
        previous_def
      end
    end

    # show: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_show_vfunc(impl_method_name)
      private def self._vfunc_unsafe_show(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_show = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_show(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_show : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
