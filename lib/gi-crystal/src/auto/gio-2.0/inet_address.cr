require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class InetAddress < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::InetAddressClass), class_init,
        sizeof(LibGio::InetAddress), instance_init, 0)
    end

    GICrystal.declare_new_method(InetAddress, g_object_get_qdata)

    # Initialize a new `InetAddress`.
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

    def initialize(*, bytes : Pointer(Void)? = nil, family : Gio::SocketFamily? = nil, flowinfo : UInt32? = nil, is_any : Bool? = nil, is_link_local : Bool? = nil, is_loopback : Bool? = nil, is_mc_global : Bool? = nil, is_mc_link_local : Bool? = nil, is_mc_node_local : Bool? = nil, is_mc_org_local : Bool? = nil, is_mc_site_local : Bool? = nil, is_multicast : Bool? = nil, is_site_local : Bool? = nil, scope_id : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[14]
      _values = StaticArray(LibGObject::Value, 14).new(LibGObject::Value.new)
      _n = 0

      if !bytes.nil?
        (_names.to_unsafe + _n).value = "bytes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bytes)
        _n += 1
      end
      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
        _n += 1
      end
      if !flowinfo.nil?
        (_names.to_unsafe + _n).value = "flowinfo".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flowinfo)
        _n += 1
      end
      if !is_any.nil?
        (_names.to_unsafe + _n).value = "is-any".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_any)
        _n += 1
      end
      if !is_link_local.nil?
        (_names.to_unsafe + _n).value = "is-link-local".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_link_local)
        _n += 1
      end
      if !is_loopback.nil?
        (_names.to_unsafe + _n).value = "is-loopback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_loopback)
        _n += 1
      end
      if !is_mc_global.nil?
        (_names.to_unsafe + _n).value = "is-mc-global".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_mc_global)
        _n += 1
      end
      if !is_mc_link_local.nil?
        (_names.to_unsafe + _n).value = "is-mc-link-local".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_mc_link_local)
        _n += 1
      end
      if !is_mc_node_local.nil?
        (_names.to_unsafe + _n).value = "is-mc-node-local".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_mc_node_local)
        _n += 1
      end
      if !is_mc_org_local.nil?
        (_names.to_unsafe + _n).value = "is-mc-org-local".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_mc_org_local)
        _n += 1
      end
      if !is_mc_site_local.nil?
        (_names.to_unsafe + _n).value = "is-mc-site-local".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_mc_site_local)
        _n += 1
      end
      if !is_multicast.nil?
        (_names.to_unsafe + _n).value = "is-multicast".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_multicast)
        _n += 1
      end
      if !is_site_local.nil?
        (_names.to_unsafe + _n).value = "is-site-local".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_site_local)
        _n += 1
      end
      if !scope_id.nil?
        (_names.to_unsafe + _n).value = "scope-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scope_id)
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
      @@g_type ||= LibGio.g_inet_address_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::InetAddress.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def bytes=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "bytes", unsafe_value, Pointer(Void).null)
      value
    end

    def bytes : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "bytes", pointerof(value), Pointer(Void).null)
      value
    end

    def family=(value : Gio::SocketFamily) : Gio::SocketFamily
      unsafe_value = value

      LibGObject.g_object_set(self, "family", unsafe_value, Pointer(Void).null)
      value
    end

    def family : Gio::SocketFamily
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "family", pointerof(value), Pointer(Void).null)
      Gio::SocketFamily.new(value)
    end

    def flowinfo=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "flowinfo", unsafe_value, Pointer(Void).null)
      value
    end

    def flowinfo : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flowinfo", pointerof(value), Pointer(Void).null)
      value
    end

    def is_any? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-any", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_link_local? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-link-local", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_loopback? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-loopback", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_mc_global? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-mc-global", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_mc_link_local? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-mc-link-local", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_mc_node_local? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-mc-node-local", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_mc_org_local? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-mc-org-local", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_mc_site_local? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-mc-site-local", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_multicast? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-multicast", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_site_local? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-site-local", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def scope_id=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "scope-id", unsafe_value, Pointer(Void).null)
      value
    end

    def scope_id : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "scope-id", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new_any(family : Gio::SocketFamily) : self
      # g_inet_address_new_any: (Constructor)
      # @family:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_inet_address_new_any(family)

      # Return value handling
      Gio::InetAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_bytes(bytes : ::Bytes, family : Gio::SocketFamily) : self
      # g_inet_address_new_from_bytes: (Constructor)
      # @bytes: (array element-type UInt8)
      # @family:
      # Returns: (transfer full)

      # Generator::ArrayArgPlan
      bytes = bytes.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_inet_address_new_from_bytes(bytes, family)

      # Return value handling
      Gio::InetAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_bytes_with_ipv6_info(bytes : ::Bytes, family : Gio::SocketFamily, flowinfo : UInt32, scope_id : UInt32) : self
      # g_inet_address_new_from_bytes_with_ipv6_info: (Constructor)
      # @bytes: (array element-type UInt8)
      # @family:
      # @flowinfo:
      # @scope_id:
      # Returns: (transfer full)

      # Generator::ArrayArgPlan
      bytes = bytes.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_inet_address_new_from_bytes_with_ipv6_info(bytes, family, flowinfo, scope_id)

      # Return value handling
      Gio::InetAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_string(string : ::String) : self?
      # g_inet_address_new_from_string: (Constructor)
      # @string:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_inet_address_new_from_string(string)

      # Return value handling
      Gio::InetAddress.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_loopback(family : Gio::SocketFamily) : self
      # g_inet_address_new_loopback: (Constructor)
      # @family:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_inet_address_new_loopback(family)

      # Return value handling
      Gio::InetAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(other_address : Gio::InetAddress) : Bool
      # g_inet_address_equal: (Method)
      # @other_address:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_equal(to_unsafe, other_address)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def family : Gio::SocketFamily
      # g_inet_address_get_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_family(to_unsafe)

      # Return value handling
      Gio::SocketFamily.new(_retval)
    end

    def flowinfo : UInt32
      # g_inet_address_get_flowinfo: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_flowinfo(to_unsafe)

      # Return value handling
      _retval
    end

    def is_any : Bool
      # g_inet_address_get_is_any: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_any(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_link_local : Bool
      # g_inet_address_get_is_link_local: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_link_local(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_loopback : Bool
      # g_inet_address_get_is_loopback: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_loopback(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_mc_global : Bool
      # g_inet_address_get_is_mc_global: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_mc_global(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_mc_link_local : Bool
      # g_inet_address_get_is_mc_link_local: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_mc_link_local(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_mc_node_local : Bool
      # g_inet_address_get_is_mc_node_local: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_mc_node_local(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_mc_org_local : Bool
      # g_inet_address_get_is_mc_org_local: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_mc_org_local(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_mc_site_local : Bool
      # g_inet_address_get_is_mc_site_local: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_mc_site_local(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_multicast : Bool
      # g_inet_address_get_is_multicast: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_multicast(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_site_local : Bool
      # g_inet_address_get_is_site_local: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_is_site_local(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def native_size : UInt64
      # g_inet_address_get_native_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_native_size(to_unsafe)

      # Return value handling
      _retval
    end

    def scope_id : UInt32
      # g_inet_address_get_scope_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_address_get_scope_id(to_unsafe)

      # Return value handling
      _retval
    end

    def to_string : ::String
      # g_inet_address_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_inet_address_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    # to_string: (None)
    # Returns: (transfer full)
    private macro _register_to_string_vfunc(impl_method_name)
      private def self._vfunc_to_string(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_to_string(Pointer(Void))).pointer
        previous_def
      end
    end

    # to_string: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_to_string_vfunc(impl_method_name)
      private def self._vfunc_unsafe_to_string(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_to_string = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_to_string(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_to_string : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    def_equals_and_hash @pointer
  end
end
