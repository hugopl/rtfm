require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class StyleContext < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::StyleContextClass), class_init,
        sizeof(LibGtk::StyleContext), instance_init, 0)
    end

    GICrystal.declare_new_method(StyleContext, g_object_get_qdata)

    # Initialize a new `StyleContext`.
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

    def initialize(*, display : Gdk::Display? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
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
      @@g_type ||= LibGtk.gtk_style_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::StyleContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.add_provider_for_display(display : Gdk::Display, provider : Gtk::StyleProvider, priority : UInt32) : Nil
      # gtk_style_context_add_provider_for_display: (None)
      # @display:
      # @provider:
      # @priority:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_add_provider_for_display(display, provider, priority)

      # Return value handling
    end

    def self.remove_provider_for_display(display : Gdk::Display, provider : Gtk::StyleProvider) : Nil
      # gtk_style_context_remove_provider_for_display: (None)
      # @display:
      # @provider:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_remove_provider_for_display(display, provider)

      # Return value handling
    end

    @[Deprecated]
    def add_class(class_name : ::String) : Nil
      # gtk_style_context_add_class: (Method)
      # @class_name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_add_class(to_unsafe, class_name)

      # Return value handling
    end

    @[Deprecated]
    def add_provider(provider : Gtk::StyleProvider, priority : UInt32) : Nil
      # gtk_style_context_add_provider: (Method)
      # @provider:
      # @priority:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_add_provider(to_unsafe, provider, priority)

      # Return value handling
    end

    @[Deprecated]
    def border : Gtk::Border
      # gtk_style_context_get_border: (Method)
      # @border: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      border = Gtk::Border.new
      # C call
      LibGtk.gtk_style_context_get_border(to_unsafe, border)

      # Return value handling
      border
    end

    @[Deprecated]
    def color : Gdk::RGBA
      # gtk_style_context_get_color: (Method)
      # @color: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      color = Gdk::RGBA.new
      # C call
      LibGtk.gtk_style_context_get_color(to_unsafe, color)

      # Return value handling
      color
    end

    @[Deprecated]
    def display : Gdk::Display
      # gtk_style_context_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_style_context_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def margin : Gtk::Border
      # gtk_style_context_get_margin: (Method)
      # @margin: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      margin = Gtk::Border.new
      # C call
      LibGtk.gtk_style_context_get_margin(to_unsafe, margin)

      # Return value handling
      margin
    end

    @[Deprecated]
    def padding : Gtk::Border
      # gtk_style_context_get_padding: (Method)
      # @padding: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      padding = Gtk::Border.new
      # C call
      LibGtk.gtk_style_context_get_padding(to_unsafe, padding)

      # Return value handling
      padding
    end

    @[Deprecated]
    def scale : Int32
      # gtk_style_context_get_scale: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_style_context_get_scale(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def state : Gtk::StateFlags
      # gtk_style_context_get_state: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_style_context_get_state(to_unsafe)

      # Return value handling
      Gtk::StateFlags.new(_retval)
    end

    @[Deprecated]
    def has_class(class_name : ::String) : Bool
      # gtk_style_context_has_class: (Method)
      # @class_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_style_context_has_class(to_unsafe, class_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def lookup_color(color_name : ::String) : Gdk::RGBA
      # gtk_style_context_lookup_color: (Method)
      # @color_name:
      # @color: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      color = Gdk::RGBA.new
      # C call
      _retval = LibGtk.gtk_style_context_lookup_color(to_unsafe, color_name, color)

      # Return value handling
      color
    end

    @[Deprecated]
    def remove_class(class_name : ::String) : Nil
      # gtk_style_context_remove_class: (Method)
      # @class_name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_remove_class(to_unsafe, class_name)

      # Return value handling
    end

    @[Deprecated]
    def remove_provider(provider : Gtk::StyleProvider) : Nil
      # gtk_style_context_remove_provider: (Method)
      # @provider:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_remove_provider(to_unsafe, provider)

      # Return value handling
    end

    @[Deprecated]
    def restore : Nil
      # gtk_style_context_restore: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_restore(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def save : Nil
      # gtk_style_context_save: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_save(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def display=(display : Gdk::Display) : Nil
      # gtk_style_context_set_display: (Method | Setter)
      # @display:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_set_display(to_unsafe, display)

      # Return value handling
    end

    @[Deprecated]
    def scale=(scale : Int32) : Nil
      # gtk_style_context_set_scale: (Method)
      # @scale:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_set_scale(to_unsafe, scale)

      # Return value handling
    end

    @[Deprecated]
    def state=(flags : Gtk::StateFlags) : Nil
      # gtk_style_context_set_state: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_style_context_set_state(to_unsafe, flags)

      # Return value handling
    end

    @[Deprecated]
    def to_string(flags : Gtk::StyleContextPrintFlags) : ::String
      # gtk_style_context_to_string: (Method)
      # @flags:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_style_context_to_string(to_unsafe, flags)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
