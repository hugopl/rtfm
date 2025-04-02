require "../gio-2.0/mount_operation"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class MountOperation < Gio::MountOperation
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::MountOperationClass), class_init,
        sizeof(LibGtk::MountOperation), instance_init, 0)
    end

    GICrystal.declare_new_method(MountOperation, g_object_get_qdata)

    # Initialize a new `MountOperation`.
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

    def initialize(*, anonymous : Bool? = nil, choice : Int32? = nil, display : Gdk::Display? = nil, domain : ::String? = nil, is_showing : Bool? = nil, is_tcrypt_hidden_volume : Bool? = nil, is_tcrypt_system_volume : Bool? = nil, parent : Gtk::Window? = nil, password : ::String? = nil, password_save : Gio::PasswordSave? = nil, pim : UInt32? = nil, username : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[12]
      _values = StaticArray(LibGObject::Value, 12).new(LibGObject::Value.new)
      _n = 0

      if !anonymous.nil?
        (_names.to_unsafe + _n).value = "anonymous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, anonymous)
        _n += 1
      end
      if !choice.nil?
        (_names.to_unsafe + _n).value = "choice".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, choice)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !domain.nil?
        (_names.to_unsafe + _n).value = "domain".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, domain)
        _n += 1
      end
      if !is_showing.nil?
        (_names.to_unsafe + _n).value = "is-showing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_showing)
        _n += 1
      end
      if !is_tcrypt_hidden_volume.nil?
        (_names.to_unsafe + _n).value = "is-tcrypt-hidden-volume".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_tcrypt_hidden_volume)
        _n += 1
      end
      if !is_tcrypt_system_volume.nil?
        (_names.to_unsafe + _n).value = "is-tcrypt-system-volume".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_tcrypt_system_volume)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !password.nil?
        (_names.to_unsafe + _n).value = "password".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, password)
        _n += 1
      end
      if !password_save.nil?
        (_names.to_unsafe + _n).value = "password-save".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, password_save)
        _n += 1
      end
      if !pim.nil?
        (_names.to_unsafe + _n).value = "pim".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pim)
        _n += 1
      end
      if !username.nil?
        (_names.to_unsafe + _n).value = "username".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, username)
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
      @@g_type ||= LibGtk.gtk_mount_operation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::MountOperation.new(Void*, GICrystal::Transfer)
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

    def is_showing? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-showing", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def parent=(value : Gtk::Window?) : Gtk::Window?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "parent", unsafe_value, Pointer(Void).null)
      value
    end

    def parent : Gtk::Window?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parent", pointerof(value), Pointer(Void).null)
      Gtk::Window.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(parent : Gtk::Window?) : self
      # gtk_mount_operation_new: (Constructor)
      # @parent: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_mount_operation_new(parent)

      # Return value handling
      Gtk::MountOperation.new(_retval, GICrystal::Transfer::Full)
    end

    def display : Gdk::Display
      # gtk_mount_operation_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_mount_operation_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def parent : Gtk::Window?
      # gtk_mount_operation_get_parent: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_mount_operation_get_parent(to_unsafe)

      # Return value handling
      Gtk::Window.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def is_showing? : Bool
      # gtk_mount_operation_is_showing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_mount_operation_is_showing(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def display=(display : Gdk::Display) : Nil
      # gtk_mount_operation_set_display: (Method | Setter)
      # @display:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_mount_operation_set_display(to_unsafe, display)

      # Return value handling
    end

    def parent=(parent : Gtk::Window?) : Nil
      # gtk_mount_operation_set_parent: (Method | Setter)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      LibGtk.gtk_mount_operation_set_parent(to_unsafe, parent)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
