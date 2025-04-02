module Gtk
  module SymbolicPaintable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::SymbolicPaintable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__SymbolicPaintable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractSymbolicPaintable.g_type
    end

    def snapshot_symbolic(snapshot : Gdk::Snapshot, width : Float64, height : Float64, colors : Enumerable(Gdk::RGBA)) : Nil
      # gtk_symbolic_paintable_snapshot_symbolic: (Method)
      # @snapshot:
      # @width:
      # @height:
      # @colors: (array length=n_colors element-type Interface)
      # @n_colors:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_colors = colors.size
      # Generator::ArrayArgPlan
      colors = colors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGdk::RGBA))

      # C call
      LibGtk.gtk_symbolic_paintable_snapshot_symbolic(to_unsafe, snapshot, width, height, colors, n_colors)

      # Return value handling
    end

    # snapshot_symbolic: (None)
    # @snapshot:
    # @width:
    # @height:
    # @colors: (array length=n_colors element-type Interface)
    # @n_colors:
    # Returns: (transfer none)
    private macro _register_snapshot_symbolic_vfunc(impl_method_name)
      private def self._vfunc_snapshot_symbolic(%this : Pointer(Void), lib_snapshot :  Pointer(Void), lib_width :  Float64, lib_height :  Float64, lib_colors :  Pointer(LibGdk::RGBA), lib_n_colors :  UInt64, ) : Void
        # @snapshot: 
# @width: 
# @height: 
# @colors: (array length=n_colors element-type Interface)
# @n_colors: 

# Generator::BuiltInTypeArgPlan
snapshot=Gdk::Snapshot.new(lib_snapshot, GICrystal::Transfer::None)
width=lib_width
height=lib_height
# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_colors = lib_colors.as(Pointer(Pointer(Void)))
colors= Array(Gdk::RGBA).new(lib_n_colors) do |_i|
Gdk::RGBA.new((lib_colors + _i).value, GICrystal::Transfer::None)
end


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(snapshot, width, height, colors, n_colors)
        
        %retval
      end

      def self._install_iface_Gtk__SymbolicPaintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_snapshot_symbolic(Pointer(Void), Pointer(Void), Float64, Float64, Pointer(LibGdk::RGBA), UInt64)).pointer
        previous_def
      end
    end

    # snapshot_symbolic: (None)
    # @snapshot:
    # @width:
    # @height:
    # @colors: (array length=n_colors element-type Interface)
    # @n_colors:
    # Returns: (transfer none)
    private macro _register_unsafe_snapshot_symbolic_vfunc(impl_method_name)
      private def self._vfunc_unsafe_snapshot_symbolic(%this : Pointer(Void), lib_snapshot :  Pointer(Void), lib_width :  Float64, lib_height :  Float64, lib_colors :  Pointer(LibGdk::RGBA), lib_n_colors :  UInt64, ) : Void
# @snapshot: 
# @width: 
# @height: 
# @colors: (array length=n_colors element-type Interface)
# @n_colors: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_snapshot, lib_width, lib_height, lib_colors, lib_n_colors)
      end

      def self._install_iface_Gtk__SymbolicPaintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_snapshot_symbolic = Proc(Pointer(Void), Pointer(Void), Float64, Float64, Pointer(LibGdk::RGBA), UInt64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_snapshot_symbolic(Pointer(Void), Pointer(Void), Float64, Float64, Pointer(LibGdk::RGBA), UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_snapshot_symbolic : Proc(Pointer(Void), Pointer(Void), Float64, Float64, Pointer(LibGdk::RGBA), UInt64, Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractSymbolicPaintable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractSymbolicPaintable < GObject::Object
    include SymbolicPaintable

    GICrystal.declare_new_method(Gtk::AbstractSymbolicPaintable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_symbolic_paintable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractSymbolicPaintable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
