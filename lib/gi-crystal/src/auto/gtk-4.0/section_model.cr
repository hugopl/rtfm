module Gtk
  module SectionModel
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::SectionModel
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__SectionModel(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractSectionModel.g_type
    end

    def section(position : UInt32, out_start : UInt32, out_end : UInt32) : Nil
      # gtk_section_model_get_section: (Method)
      # @position:
      # @out_start: (out) (transfer full)
      # @out_end: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_section_model_get_section(to_unsafe, position, out_start, out_end)

      # Return value handling
    end

    def sections_changed(position : UInt32, n_items : UInt32) : Nil
      # gtk_section_model_sections_changed: (Method)
      # @position:
      # @n_items:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_section_model_sections_changed(to_unsafe, position, n_items)

      # Return value handling
    end

    # get_section: (None)
    # @position:
    # @out_start: (out) (transfer full)
    # @out_end: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_section_vfunc(impl_method_name)
      private def self._vfunc_get_section(%this : Pointer(Void), lib_position :  UInt32, lib_out_start :  UInt32, lib_out_end :  UInt32, ) : Void
        # @position: 
# @out_start: (out) (transfer full) 
# @out_end: (out) (transfer full) 

position=lib_position
out_start=lib_out_start
out_end=lib_out_end


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, out_start, out_end)
        
        %retval
      end

      def self._install_iface_Gtk__SectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_section(Pointer(Void), UInt32, UInt32, UInt32)).pointer
        previous_def
      end
    end

    # get_section: (None)
    # @position:
    # @out_start: (out) (transfer full)
    # @out_end: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_section_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_section(%this : Pointer(Void), lib_position :  UInt32, lib_out_start :  UInt32, lib_out_end :  UInt32, ) : Void
# @position: 
# @out_start: (out) (transfer full) 
# @out_end: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_out_start, lib_out_end)
      end

      def self._install_iface_Gtk__SectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_section = Proc(Pointer(Void), UInt32, UInt32, UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_section(Pointer(Void), UInt32, UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_section : Proc(Pointer(Void), UInt32, UInt32, UInt32, Void)? = nil
    end

    struct SectionsChangedSignal < GObject::Signal
      def name : String
        @detail ? "sections-changed::#{@detail}" : "sections-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_n_items : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          position = lib_position
          # NoStrategy
          n_items = lib_n_items
          ::Box(Proc(UInt32, UInt32, Nil)).unbox(_lib_box).call(position, n_items)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::SectionModel, UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_n_items : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractSectionModel.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          # NoStrategy
          n_items = lib_n_items
          ::Box(Proc(Gtk::SectionModel, UInt32, UInt32, Nil)).unbox(_lib_box).call(_sender, position, n_items)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(position : UInt32, n_items : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "sections-changed", position, n_items)
      end
    end

    def sections_changed_signal
      SectionsChangedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractSectionModel.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractSectionModel < GObject::Object
    include SectionModel

    GICrystal.declare_new_method(Gtk::AbstractSectionModel, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_section_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractSectionModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
