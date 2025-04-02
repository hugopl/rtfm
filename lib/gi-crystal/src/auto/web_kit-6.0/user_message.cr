require "../g_object-2.0/initially_unowned"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class UserMessage < GObject::InitiallyUnowned
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(UserMessage, g_object_get_qdata)

    # Initialize a new `UserMessage`.
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

    def initialize(*, fd_list : Gio::UnixFDList? = nil, name : ::String? = nil, parameters : GLib::Variant? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !fd_list.nil?
        (_names.to_unsafe + _n).value = "fd-list".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fd_list)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !parameters.nil?
        (_names.to_unsafe + _n).value = "parameters".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parameters)
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
      @@g_type ||= LibWebKit.webkit_user_message_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::UserMessage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def fd_list=(value : Gio::UnixFDList?) : Gio::UnixFDList?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "fd-list", unsafe_value, Pointer(Void).null)
      value
    end

    def fd_list : Gio::UnixFDList?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "fd-list", pointerof(value), Pointer(Void).null)
      Gio::UnixFDList.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def parameters=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "parameters", unsafe_value, Pointer(Void).null)
      value
    end

    def parameters : GLib::Variant?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parameters", pointerof(value), Pointer(Void).null)
      GLib::Variant.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(name : ::String, parameters : _?) : self
      # webkit_user_message_new: (Constructor)
      # @name:
      # @parameters: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end

      # C call
      _retval = LibWebKit.webkit_user_message_new(name, parameters)

      # Return value handling
      WebKit::UserMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_fd_list(name : ::String, parameters : _?, fd_list : Gio::UnixFDList?) : self
      # webkit_user_message_new_with_fd_list: (Constructor)
      # @name:
      # @parameters: (nullable)
      # @fd_list: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      fd_list = if fd_list.nil?
                  Pointer(Void).null
                else
                  fd_list.to_unsafe
                end

      # C call
      _retval = LibWebKit.webkit_user_message_new_with_fd_list(name, parameters, fd_list)

      # Return value handling
      WebKit::UserMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def fd_list : Gio::UnixFDList?
      # webkit_user_message_get_fd_list: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_user_message_get_fd_list(to_unsafe)

      # Return value handling
      Gio::UnixFDList.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def name : ::String
      # webkit_user_message_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_user_message_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def parameters : GLib::Variant?
      # webkit_user_message_get_parameters: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_user_message_get_parameters(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def send_reply(reply : WebKit::UserMessage) : Nil
      # webkit_user_message_send_reply: (Method)
      # @reply:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_message_send_reply(to_unsafe, reply)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
