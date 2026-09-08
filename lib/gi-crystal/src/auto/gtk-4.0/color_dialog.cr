require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ColorDialog < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ColorDialogClass), class_init,
        sizeof(LibGtk::ColorDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(ColorDialog, g_object_get_qdata)

    # Initialize a new `ColorDialog`.
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

    def initialize(*, modal : Bool? = nil, title : ::String? = nil, with_alpha : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
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
      if !with_alpha.nil?
        (_names.to_unsafe + _n).value = "with-alpha".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, with_alpha)
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
      @@g_type ||= LibGtk.gtk_color_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ColorDialog.new(Void*, GICrystal::Transfer)
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

    def with_alpha=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "with-alpha", unsafe_value, Pointer(Void).null)
      value
    end

    def with_alpha? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "with-alpha", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # gtk_color_dialog_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_color_dialog_new

      # Return value handling
      Gtk::ColorDialog.new(_retval, GICrystal::Transfer::Full)
    end

    def choose_rgba(parent : Gtk::Window?, initial_color : Gdk::RGBA?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_color_dialog_choose_rgba: (Method)
      # @parent: (nullable)
      # @initial_color: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      initial_color = if initial_color.nil?
                        Pointer(Void).null
                      else
                        initial_color.to_unsafe
                      end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGtk.gtk_color_dialog_choose_rgba(to_unsafe, parent, initial_color, cancellable, callback, user_data)

      # Return value handling
    end

    def choose_rgba_finish(result : Gio::AsyncResult) : Gdk::RGBA
      # gtk_color_dialog_choose_rgba_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_color_dialog_choose_rgba_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::RGBA.new(_retval, GICrystal::Transfer::Full)
    end

    def modal : Bool
      # gtk_color_dialog_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_color_dialog_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def title : ::String
      # gtk_color_dialog_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_color_dialog_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def with_alpha : Bool
      # gtk_color_dialog_get_with_alpha: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_color_dialog_get_with_alpha(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def modal=(modal : Bool) : Nil
      # gtk_color_dialog_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_color_dialog_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # gtk_color_dialog_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_color_dialog_set_title(to_unsafe, title)

      # Return value handling
    end

    def with_alpha=(with_alpha : Bool) : Nil
      # gtk_color_dialog_set_with_alpha: (Method | Setter)
      # @with_alpha:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_color_dialog_set_with_alpha(to_unsafe, with_alpha)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
