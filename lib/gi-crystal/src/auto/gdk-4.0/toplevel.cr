module Gdk
  module Toplevel
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gdk::Toplevel
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gdk__Toplevel(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gdk::AbstractToplevel.g_type
    end

    def capabilities : Gdk::ToplevelCapabilities
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "capabilities", pointerof(value), Pointer(Void).null)
      Gdk::ToplevelCapabilities.new(value)
    end

    def decorated=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "decorated", unsafe_value, Pointer(Void).null)
      value
    end

    def decorated? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "decorated", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def deletable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "deletable", unsafe_value, Pointer(Void).null)
      value
    end

    def deletable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "deletable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def fullscreen_mode=(value : Gdk::FullscreenMode) : Gdk::FullscreenMode
      unsafe_value = value

      LibGObject.g_object_set(self, "fullscreen-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def fullscreen_mode : Gdk::FullscreenMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "fullscreen-mode", pointerof(value), Pointer(Void).null)
      Gdk::FullscreenMode.new(value)
    end

    def gravity=(value : Gdk::Gravity) : Gdk::Gravity
      unsafe_value = value

      LibGObject.g_object_set(self, "gravity", unsafe_value, Pointer(Void).null)
      value
    end

    def gravity : Gdk::Gravity
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "gravity", pointerof(value), Pointer(Void).null)
      Gdk::Gravity.new(value)
    end

    def icon_list=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "icon-list", unsafe_value, Pointer(Void).null)
      value
    end

    def icon_list : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "icon-list", pointerof(value), Pointer(Void).null)
      value
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

    def shortcuts_inhibited? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "shortcuts-inhibited", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def startup_id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "startup-id", unsafe_value, Pointer(Void).null)
      value
    end

    def startup_id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "startup-id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#startup_id` property to nil.
    def startup_id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "startup-id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#startup_id`, but can return nil.
    def startup_id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "startup-id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def state : Gdk::ToplevelState
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "state", pointerof(value), Pointer(Void).null)
      Gdk::ToplevelState.new(value)
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

    def transient_for=(value : Gdk::Surface?) : Gdk::Surface?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "transient-for", unsafe_value, Pointer(Void).null)
      value
    end

    def transient_for : Gdk::Surface?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "transient-for", pointerof(value), Pointer(Void).null)
      Gdk::Surface.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def begin_move(device : Gdk::Device, button : Int32, x : Float64, y : Float64, timestamp : UInt32) : Nil
      # gdk_toplevel_begin_move: (Method)
      # @device:
      # @button:
      # @x:
      # @y:
      # @timestamp:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_begin_move(to_unsafe, device, button, x, y, timestamp)

      # Return value handling
    end

    def begin_resize(edge : Gdk::SurfaceEdge, device : Gdk::Device?, button : Int32, x : Float64, y : Float64, timestamp : UInt32) : Nil
      # gdk_toplevel_begin_resize: (Method)
      # @edge:
      # @device: (nullable)
      # @button:
      # @x:
      # @y:
      # @timestamp:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      device = if device.nil?
                 Pointer(Void).null
               else
                 device.to_unsafe
               end

      # C call
      LibGdk.gdk_toplevel_begin_resize(to_unsafe, edge, device, button, x, y, timestamp)

      # Return value handling
    end

    def focus(timestamp : UInt32) : Nil
      # gdk_toplevel_focus: (Method)
      # @timestamp:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_focus(to_unsafe, timestamp)

      # Return value handling
    end

    def capabilities : Gdk::ToplevelCapabilities
      # gdk_toplevel_get_capabilities: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_get_capabilities(to_unsafe)

      # Return value handling
      Gdk::ToplevelCapabilities.new(_retval)
    end

    def gravity : Gdk::Gravity
      # gdk_toplevel_get_gravity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_get_gravity(to_unsafe)

      # Return value handling
      Gdk::Gravity.new(_retval)
    end

    def state : Gdk::ToplevelState
      # gdk_toplevel_get_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_get_state(to_unsafe)

      # Return value handling
      Gdk::ToplevelState.new(_retval)
    end

    def inhibit_system_shortcuts(event : Gdk::Event?) : Nil
      # gdk_toplevel_inhibit_system_shortcuts: (Method)
      # @event: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      event = if event.nil?
                Pointer(Void).null
              else
                event.to_unsafe
              end

      # C call
      LibGdk.gdk_toplevel_inhibit_system_shortcuts(to_unsafe, event)

      # Return value handling
    end

    def lower : Bool
      # gdk_toplevel_lower: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_lower(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def minimize : Bool
      # gdk_toplevel_minimize: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_minimize(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def present(layout : Gdk::ToplevelLayout) : Nil
      # gdk_toplevel_present: (Method)
      # @layout:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_present(to_unsafe, layout)

      # Return value handling
    end

    def restore_system_shortcuts : Nil
      # gdk_toplevel_restore_system_shortcuts: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_restore_system_shortcuts(to_unsafe)

      # Return value handling
    end

    def decorated=(decorated : Bool) : Nil
      # gdk_toplevel_set_decorated: (Method | Setter)
      # @decorated:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_decorated(to_unsafe, decorated)

      # Return value handling
    end

    def deletable=(deletable : Bool) : Nil
      # gdk_toplevel_set_deletable: (Method | Setter)
      # @deletable:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_deletable(to_unsafe, deletable)

      # Return value handling
    end

    def gravity=(gravity : Gdk::Gravity) : Nil
      # gdk_toplevel_set_gravity: (Method | Setter)
      # @gravity:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_gravity(to_unsafe, gravity)

      # Return value handling
    end

    def icon_list=(surfaces : GLib::List) : Nil
      # gdk_toplevel_set_icon_list: (Method | Setter)
      # @surfaces:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_icon_list(to_unsafe, surfaces)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # gdk_toplevel_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def startup_id=(startup_id : ::String) : Nil
      # gdk_toplevel_set_startup_id: (Method | Setter)
      # @startup_id:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_startup_id(to_unsafe, startup_id)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # gdk_toplevel_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_title(to_unsafe, title)

      # Return value handling
    end

    def transient_for=(parent : Gdk::Surface) : Nil
      # gdk_toplevel_set_transient_for: (Method | Setter)
      # @parent:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_set_transient_for(to_unsafe, parent)

      # Return value handling
    end

    def show_window_menu(event : Gdk::Event) : Bool
      # gdk_toplevel_show_window_menu: (Method)
      # @event:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_show_window_menu(to_unsafe, event)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def supports_edge_constraints : Bool
      # gdk_toplevel_supports_edge_constraints: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_supports_edge_constraints(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def titlebar_gesture(gesture : Gdk::TitlebarGesture) : Bool
      # gdk_toplevel_titlebar_gesture: (Method)
      # @gesture:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_toplevel_titlebar_gesture(to_unsafe, gesture)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ComputeSizeSignal < GObject::Signal
      def name : String
        @detail ? "compute-size::#{@detail}" : "compute-size"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::ToplevelSize, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::ToplevelSize, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_size : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          size = Gdk::ToplevelSize.new(lib_size, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::ToplevelSize, Nil)).unbox(_lib_box).call(size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Toplevel, Gdk::ToplevelSize, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_size : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::AbstractToplevel.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          size = Gdk::ToplevelSize.new(lib_size, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Toplevel, Gdk::ToplevelSize, Nil)).unbox(_lib_box).call(_sender, size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(size : Gdk::ToplevelSize) : Nil
        LibGObject.g_signal_emit_by_name(@source, "compute-size", size)
      end
    end

    def compute_size_signal
      ComputeSizeSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractToplevel.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractToplevel < GObject::Object
    include Toplevel

    GICrystal.declare_new_method(Gdk::AbstractToplevel, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_toplevel_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::AbstractToplevel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
