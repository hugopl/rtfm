module Gtk
  module ColorChooser
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::ColorChooser
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__ColorChooser(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractColorChooser.g_type
    end

    def rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def use_alpha=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-alpha", unsafe_value, Pointer(Void).null)
      value
    end

    def use_alpha? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-alpha", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    @[Deprecated]
    def add_palette(orientation : Gtk::Orientation, colors_per_line : Int32, colors : Enumerable(Gdk::RGBA)?) : Nil
      # gtk_color_chooser_add_palette: (Method)
      # @orientation:
      # @colors_per_line:
      # @n_colors:
      # @colors: (nullable) (array length=n_colors element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_colors = colors.try(&.size) || 0
      # Generator::NullableArrayPlan
      colors = if colors.nil?
                 Pointer(LibGdk::RGBA).null
               else
                 colors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGdk::RGBA))
               end

      # C call
      LibGtk.gtk_color_chooser_add_palette(to_unsafe, orientation, colors_per_line, n_colors, colors)

      # Return value handling
    end

    @[Deprecated]
    def rgba : Gdk::RGBA
      # gtk_color_chooser_get_rgba: (Method | Getter)
      # @color: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      color = Gdk::RGBA.new
      # C call
      LibGtk.gtk_color_chooser_get_rgba(to_unsafe, color)

      # Return value handling
      color
    end

    @[Deprecated]
    def use_alpha : Bool
      # gtk_color_chooser_get_use_alpha: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_color_chooser_get_use_alpha(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def rgba=(color : Gdk::RGBA) : Nil
      # gtk_color_chooser_set_rgba: (Method | Setter)
      # @color:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_color_chooser_set_rgba(to_unsafe, color)

      # Return value handling
    end

    @[Deprecated]
    def use_alpha=(use_alpha : Bool) : Nil
      # gtk_color_chooser_set_use_alpha: (Method | Setter)
      # @use_alpha:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_color_chooser_set_use_alpha(to_unsafe, use_alpha)

      # Return value handling
    end

    # add_palette: (None)
    # @orientation:
    # @colors_per_line:
    # @n_colors:
    # @colors: (nullable) (array length=n_colors element-type Interface)
    # Returns: (transfer none)
    private macro _register_add_palette_vfunc(impl_method_name)
      private def self._vfunc_add_palette(%this : Pointer(Void), lib_orientation :  UInt32, lib_colors_per_line :  Int32, lib_n_colors :  Int32, lib_colors :  Pointer(LibGdk::RGBA), ) : Void
        # @orientation: 
# @colors_per_line: 
# @n_colors: 
# @colors: (nullable) (array length=n_colors element-type Interface)

# Generator::BuiltInTypeArgPlan
orientation=Gtk::Orientation.new(lib_orientation)
colors_per_line=lib_colors_per_line
# Generator::ArrayLengthArgPlan
# Generator::NullableArrayPlan
colors=(lib_colors.null? ? nil : GICrystal.transfer_array(lib_colors, n_colors,GICrystal::Transfer::None))


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(orientation, colors_per_line, n_colors, colors)
        
        %retval
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_palette(Pointer(Void), UInt32, Int32, Int32, Pointer(LibGdk::RGBA))).pointer
        previous_def
      end
    end

    # add_palette: (None)
    # @orientation:
    # @colors_per_line:
    # @n_colors:
    # @colors: (nullable) (array length=n_colors element-type Interface)
    # Returns: (transfer none)
    private macro _register_unsafe_add_palette_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_palette(%this : Pointer(Void), lib_orientation :  UInt32, lib_colors_per_line :  Int32, lib_n_colors :  Int32, lib_colors :  Pointer(LibGdk::RGBA), ) : Void
# @orientation: 
# @colors_per_line: 
# @n_colors: 
# @colors: (nullable) (array length=n_colors element-type Interface)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_orientation, lib_colors_per_line, lib_n_colors, lib_colors)
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_palette = Proc(Pointer(Void), UInt32, Int32, Int32, Pointer(LibGdk::RGBA), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_palette(Pointer(Void), UInt32, Int32, Int32, Pointer(LibGdk::RGBA))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_palette : Proc(Pointer(Void), UInt32, Int32, Int32, Pointer(LibGdk::RGBA), Void)? = nil
    end

    # color_activated: (None)
    # @color:
    # Returns: (transfer none)
    private macro _register_color_activated_vfunc(impl_method_name)
      private def self._vfunc_color_activated(%this : Pointer(Void), lib_color :  Pointer(Void), ) : Void
        # @color: 

# Generator::BuiltInTypeArgPlan
color=Gdk::RGBA.new(lib_color, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(color)
        
        %retval
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_color_activated(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # color_activated: (None)
    # @color:
    # Returns: (transfer none)
    private macro _register_unsafe_color_activated_vfunc(impl_method_name)
      private def self._vfunc_unsafe_color_activated(%this : Pointer(Void), lib_color :  Pointer(Void), ) : Void
# @color: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_color)
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_color_activated = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_color_activated(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_color_activated : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # get_rgba: (None)
    # @color: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_get_rgba_vfunc(impl_method_name)
      private def self._vfunc_get_rgba(%this : Pointer(Void), lib_color :  Void, ) : Void
        # @color: (out) (caller-allocates) 

# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(color)
        
        %retval
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_rgba(Pointer(Void), Void)).pointer
        previous_def
      end
    end

    # get_rgba: (None)
    # @color: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_unsafe_get_rgba_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_rgba(%this : Pointer(Void), lib_color :  Void, ) : Void
# @color: (out) (caller-allocates) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_color)
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_rgba = Proc(Pointer(Void), Void, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_rgba(Pointer(Void), Void)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_rgba : Proc(Pointer(Void), Void, Void)? = nil
    end

    # set_rgba: (None)
    # @color:
    # Returns: (transfer none)
    private macro _register_set_rgba_vfunc(impl_method_name)
      private def self._vfunc_set_rgba(%this : Pointer(Void), lib_color :  Pointer(Void), ) : Void
        # @color: 

# Generator::BuiltInTypeArgPlan
color=Gdk::RGBA.new(lib_color, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(color)
        
        %retval
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_rgba(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_rgba: (None)
    # @color:
    # Returns: (transfer none)
    private macro _register_unsafe_set_rgba_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_rgba(%this : Pointer(Void), lib_color :  Pointer(Void), ) : Void
# @color: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_color)
      end

      def self._install_iface_Gtk__ColorChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_rgba = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_rgba(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_rgba : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    struct ColorActivatedSignal < GObject::Signal
      def name : String
        @detail ? "color-activated::#{@detail}" : "color-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::RGBA, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::RGBA, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_color : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          color = Gdk::RGBA.new(lib_color, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::RGBA, Nil)).unbox(_lib_box).call(color)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::ColorChooser, Gdk::RGBA, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_color : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractColorChooser.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          color = Gdk::RGBA.new(lib_color, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ColorChooser, Gdk::RGBA, Nil)).unbox(_lib_box).call(_sender, color)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(color : Gdk::RGBA) : Nil
        LibGObject.g_signal_emit_by_name(@source, "color-activated", color)
      end
    end

    def color_activated_signal
      ColorActivatedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractColorChooser.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractColorChooser < GObject::Object
    include ColorChooser

    GICrystal.declare_new_method(Gtk::AbstractColorChooser, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_color_chooser_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractColorChooser.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
