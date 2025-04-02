module Gtk
  module PrintOperationPreview
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::PrintOperationPreview
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__PrintOperationPreview(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractPrintOperationPreview.g_type
    end

    def end_preview : Nil
      # gtk_print_operation_preview_end_preview: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_preview_end_preview(to_unsafe)

      # Return value handling
    end

    def is_selected(page_nr : Int32) : Bool
      # gtk_print_operation_preview_is_selected: (Method)
      # @page_nr:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_operation_preview_is_selected(to_unsafe, page_nr)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def render_page(page_nr : Int32) : Nil
      # gtk_print_operation_preview_render_page: (Method)
      # @page_nr:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_operation_preview_render_page(to_unsafe, page_nr)

      # Return value handling
    end

    # end_preview: (None)
    # Returns: (transfer none)
    private macro _register_end_preview_vfunc(impl_method_name)
      private def self._vfunc_end_preview(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_end_preview(Pointer(Void))).pointer
        previous_def
      end
    end

    # end_preview: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_end_preview_vfunc(impl_method_name)
      private def self._vfunc_unsafe_end_preview(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_end_preview = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_end_preview(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_end_preview : Proc(Pointer(Void), Void)? = nil
    end

    # got_page_size: (None)
    # @context:
    # @page_setup:
    # Returns: (transfer none)
    private macro _register_got_page_size_vfunc(impl_method_name)
      private def self._vfunc_got_page_size(%this : Pointer(Void), lib_context :  Pointer(Void), lib_page_setup :  Pointer(Void), ) : Void
        # @context: 
# @page_setup: 

# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
page_setup=Gtk::PageSetup.new(lib_page_setup, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context, page_setup)
        
        %retval
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_got_page_size(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # got_page_size: (None)
    # @context:
    # @page_setup:
    # Returns: (transfer none)
    private macro _register_unsafe_got_page_size_vfunc(impl_method_name)
      private def self._vfunc_unsafe_got_page_size(%this : Pointer(Void), lib_context :  Pointer(Void), lib_page_setup :  Pointer(Void), ) : Void
# @context: 
# @page_setup: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context, lib_page_setup)
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_got_page_size = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_got_page_size(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_got_page_size : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # is_selected: (None)
    # @page_nr:
    # Returns: (transfer none)
    private macro _register_is_selected_vfunc(impl_method_name)
      private def self._vfunc_is_selected(%this : Pointer(Void), lib_page_nr :  Int32, ) : LibC::Int
        # @page_nr: 

page_nr=lib_page_nr


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(page_nr)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_selected(Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # is_selected: (None)
    # @page_nr:
    # Returns: (transfer none)
    private macro _register_unsafe_is_selected_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_selected(%this : Pointer(Void), lib_page_nr :  Int32, ) : LibC::Int
# @page_nr: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_page_nr)
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_selected = Proc(Pointer(Void), Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_selected(Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_selected : Proc(Pointer(Void), Int32, LibC::Int)? = nil
    end

    # ready: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_ready_vfunc(impl_method_name)
      private def self._vfunc_ready(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Void
        # @context: 

# Generator::BuiltInTypeArgPlan
context=Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context)
        
        %retval
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ready(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # ready: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_unsafe_ready_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ready(%this : Pointer(Void), lib_context :  Pointer(Void), ) : Void
# @context: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context)
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ready = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ready(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ready : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # render_page: (None)
    # @page_nr:
    # Returns: (transfer none)
    private macro _register_render_page_vfunc(impl_method_name)
      private def self._vfunc_render_page(%this : Pointer(Void), lib_page_nr :  Int32, ) : Void
        # @page_nr: 

page_nr=lib_page_nr


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(page_nr)
        
        %retval
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_render_page(Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # render_page: (None)
    # @page_nr:
    # Returns: (transfer none)
    private macro _register_unsafe_render_page_vfunc(impl_method_name)
      private def self._vfunc_unsafe_render_page(%this : Pointer(Void), lib_page_nr :  Int32, ) : Void
# @page_nr: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_page_nr)
      end

      def self._install_iface_Gtk__PrintOperationPreview(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_render_page = Proc(Pointer(Void), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_render_page(Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_render_page : Proc(Pointer(Void), Int32, Void)? = nil
    end

    struct GotPageSizeSignal < GObject::Signal
      def name : String
        @detail ? "got-page-size::#{@detail}" : "got-page-size"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintContext, Gtk::PageSetup, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintContext, Gtk::PageSetup, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), lib_page_setup : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page_setup = Gtk::PageSetup.new(lib_page_setup, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintContext, Gtk::PageSetup, Nil)).unbox(_lib_box).call(context, page_setup)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::PageSetup, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), lib_page_setup : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractPrintOperationPreview.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page_setup = Gtk::PageSetup.new(lib_page_setup, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::PageSetup, Nil)).unbox(_lib_box).call(_sender, context, page_setup)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gtk::PrintContext, page_setup : Gtk::PageSetup) : Nil
        LibGObject.g_signal_emit_by_name(@source, "got-page-size", context, page_setup)
      end
    end

    def got_page_size_signal
      GotPageSizeSignal.new(self)
    end

    struct ReadySignal < GObject::Signal
      def name : String
        @detail ? "ready::#{@detail}" : "ready"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PrintContext, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PrintContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintContext, Nil)).unbox(_lib_box).call(context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::PrintOperationPreview, Gtk::PrintContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractPrintOperationPreview.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gtk::PrintContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::PrintOperationPreview, Gtk::PrintContext, Nil)).unbox(_lib_box).call(_sender, context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gtk::PrintContext) : Nil
        LibGObject.g_signal_emit_by_name(@source, "ready", context)
      end
    end

    def ready_signal
      ReadySignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractPrintOperationPreview.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractPrintOperationPreview < GObject::Object
    include PrintOperationPreview

    GICrystal.declare_new_method(Gtk::AbstractPrintOperationPreview, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_print_operation_preview_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractPrintOperationPreview.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
