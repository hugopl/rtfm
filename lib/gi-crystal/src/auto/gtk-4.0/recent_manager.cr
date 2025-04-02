require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class RecentManager < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::RecentManagerClass), class_init,
        sizeof(LibGtk::RecentManager), instance_init, 0)
    end

    GICrystal.declare_new_method(RecentManager, g_object_get_qdata)

    # Initialize a new `RecentManager`.
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

    def initialize(*, filename : ::String? = nil, size : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !filename.nil?
        (_names.to_unsafe + _n).value = "filename".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filename)
        _n += 1
      end
      if !size.nil?
        (_names.to_unsafe + _n).value = "size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, size)
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
      @@g_type ||= LibGtk.gtk_recent_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::RecentManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def filename=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "filename", unsafe_value, Pointer(Void).null)
      value
    end

    def filename : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#filename` property to nil.
    def filename=(value : Nil) : Nil
      LibGObject.g_object_set(self, "filename", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#filename`, but can return nil.
    def filename? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def size : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "size", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # gtk_recent_manager_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_recent_manager_new

      # Return value handling
      Gtk::RecentManager.new(_retval, GICrystal::Transfer::Full)
    end

    def self.default : Gtk::RecentManager
      # gtk_recent_manager_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_manager_get_default

      # Return value handling
      Gtk::RecentManager.new(_retval, GICrystal::Transfer::None)
    end

    def add_full(uri : ::String, recent_data : Gtk::RecentData) : Bool
      # gtk_recent_manager_add_full: (Method)
      # @uri:
      # @recent_data:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_manager_add_full(to_unsafe, uri, recent_data)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_item(uri : ::String) : Bool
      # gtk_recent_manager_add_item: (Method)
      # @uri:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_manager_add_item(to_unsafe, uri)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def items : GLib::List
      # gtk_recent_manager_get_items: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_recent_manager_get_items(to_unsafe)

      # Return value handling
      GLib::List(Gtk::RecentInfo).new(_retval, GICrystal::Transfer::Full)
    end

    def has_item(uri : ::String) : Bool
      # gtk_recent_manager_has_item: (Method)
      # @uri:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_recent_manager_has_item(to_unsafe, uri)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def lookup_item(uri : ::String) : Gtk::RecentInfo?
      # gtk_recent_manager_lookup_item: (Method | Throws)
      # @uri:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_recent_manager_lookup_item(to_unsafe, uri, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gtk::RecentInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def move_item(uri : ::String, new_uri : ::String?) : Bool
      # gtk_recent_manager_move_item: (Method | Throws)
      # @uri:
      # @new_uri: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      new_uri = if new_uri.nil?
                  Pointer(LibC::Char).null
                else
                  new_uri.to_unsafe
                end

      # C call
      _retval = LibGtk.gtk_recent_manager_move_item(to_unsafe, uri, new_uri, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def purge_items : Int32
      # gtk_recent_manager_purge_items: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_recent_manager_purge_items(to_unsafe, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def remove_item(uri : ::String) : Bool
      # gtk_recent_manager_remove_item: (Method | Throws)
      # @uri:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_recent_manager_remove_item(to_unsafe, uri, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::RecentManager, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::RecentManager.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::RecentManager, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
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
