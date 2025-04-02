require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class EntryBuffer < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::EntryBufferClass), class_init,
        sizeof(LibGtk::EntryBuffer), instance_init, 0)
    end

    GICrystal.declare_new_method(EntryBuffer, g_object_get_qdata)

    # Initialize a new `EntryBuffer`.
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

    def initialize(*, length : UInt32? = nil, max_length : Int32? = nil, text : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !length.nil?
        (_names.to_unsafe + _n).value = "length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, length)
        _n += 1
      end
      if !max_length.nil?
        (_names.to_unsafe + _n).value = "max-length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_length)
        _n += 1
      end
      if !text.nil?
        (_names.to_unsafe + _n).value = "text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text)
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
      @@g_type ||= LibGtk.gtk_entry_buffer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::EntryBuffer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def length : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "length", pointerof(value), Pointer(Void).null)
      value
    end

    def max_length=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-length", unsafe_value, Pointer(Void).null)
      value
    end

    def max_length : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-length", pointerof(value), Pointer(Void).null)
      value
    end

    def text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "text", unsafe_value, Pointer(Void).null)
      value
    end

    def text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#text` property to nil.
    def text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#text`, but can return nil.
    def text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(initial_chars : ::String?, n_initial_chars : Int32) : self
      # gtk_entry_buffer_new: (Constructor)
      # @initial_chars: (nullable)
      # @n_initial_chars:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      initial_chars = if initial_chars.nil?
                        Pointer(LibC::Char).null
                      else
                        initial_chars.to_unsafe
                      end

      # C call
      _retval = LibGtk.gtk_entry_buffer_new(initial_chars, n_initial_chars)

      # Return value handling
      Gtk::EntryBuffer.new(_retval, GICrystal::Transfer::Full)
    end

    def delete_text(position : UInt32, n_chars : Int32) : UInt32
      # gtk_entry_buffer_delete_text: (Method)
      # @position:
      # @n_chars:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_buffer_delete_text(to_unsafe, position, n_chars)

      # Return value handling
      _retval
    end

    def emit_deleted_text(position : UInt32, n_chars : UInt32) : Nil
      # gtk_entry_buffer_emit_deleted_text: (Method)
      # @position:
      # @n_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_buffer_emit_deleted_text(to_unsafe, position, n_chars)

      # Return value handling
    end

    def emit_inserted_text(position : UInt32, chars : ::String, n_chars : UInt32) : Nil
      # gtk_entry_buffer_emit_inserted_text: (Method)
      # @position:
      # @chars:
      # @n_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_buffer_emit_inserted_text(to_unsafe, position, chars, n_chars)

      # Return value handling
    end

    def bytes : UInt64
      # gtk_entry_buffer_get_bytes: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_buffer_get_bytes(to_unsafe)

      # Return value handling
      _retval
    end

    def length : UInt32
      # gtk_entry_buffer_get_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_buffer_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def max_length : Int32
      # gtk_entry_buffer_get_max_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_buffer_get_max_length(to_unsafe)

      # Return value handling
      _retval
    end

    def text : ::String
      # gtk_entry_buffer_get_text: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_buffer_get_text(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def insert_text(position : UInt32, chars : ::String, n_chars : Int32) : UInt32
      # gtk_entry_buffer_insert_text: (Method)
      # @position:
      # @chars:
      # @n_chars:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_buffer_insert_text(to_unsafe, position, chars, n_chars)

      # Return value handling
      _retval
    end

    def max_length=(max_length : Int32) : Nil
      # gtk_entry_buffer_set_max_length: (Method | Setter)
      # @max_length:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_buffer_set_max_length(to_unsafe, max_length)

      # Return value handling
    end

    def set_text(chars : ::String, n_chars : Int32) : Nil
      # gtk_entry_buffer_set_text: (Method | Setter)
      # @chars:
      # @n_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_buffer_set_text(to_unsafe, chars, n_chars)

      # Return value handling
    end

    struct DeletedTextSignal < GObject::Signal
      def name : String
        @detail ? "deleted-text::#{@detail}" : "deleted-text"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_n_chars : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          position = lib_position
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(UInt32, UInt32, Nil)).unbox(_lib_box).call(position, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EntryBuffer, UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_n_chars : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::EntryBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(Gtk::EntryBuffer, UInt32, UInt32, Nil)).unbox(_lib_box).call(_sender, position, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(position : UInt32, n_chars : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "deleted-text", position, n_chars)
      end
    end

    def deleted_text_signal
      DeletedTextSignal.new(self)
    end

    struct InsertedTextSignal < GObject::Signal
      def name : String
        @detail ? "inserted-text::#{@detail}" : "inserted-text"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, ::String, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, ::String, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_chars : Pointer(LibC::Char), lib_n_chars : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          position = lib_position
          # Generator::BuiltInTypeArgPlan
          chars = ::String.new(lib_chars)
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(UInt32, ::String, UInt32, Nil)).unbox(_lib_box).call(position, chars, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EntryBuffer, UInt32, ::String, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_chars : Pointer(LibC::Char), lib_n_chars : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::EntryBuffer.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          # Generator::BuiltInTypeArgPlan
          chars = ::String.new(lib_chars)
          # NoStrategy
          n_chars = lib_n_chars
          ::Box(Proc(Gtk::EntryBuffer, UInt32, ::String, UInt32, Nil)).unbox(_lib_box).call(_sender, position, chars, n_chars)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(position : UInt32, chars : ::String, n_chars : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "inserted-text", position, chars, n_chars)
      end
    end

    def inserted_text_signal
      InsertedTextSignal.new(self)
    end

    # delete_text: (None)
    # @position:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_delete_text_vfunc(impl_method_name)
      private def self._vfunc_delete_text(%this : Pointer(Void), lib_position :  UInt32, lib_n_chars :  UInt32, ) : UInt32
        # @position: 
# @n_chars: 

position=lib_position
n_chars=lib_n_chars


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, n_chars)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_text(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end
    end

    # delete_text: (None)
    # @position:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_unsafe_delete_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_text(%this : Pointer(Void), lib_position :  UInt32, lib_n_chars :  UInt32, ) : UInt32
# @position: 
# @n_chars: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_n_chars)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_text = Proc(Pointer(Void), UInt32, UInt32, UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_text(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_text : Proc(Pointer(Void), UInt32, UInt32, UInt32)? = nil
    end

    # deleted_text: (None)
    # @position:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_deleted_text_vfunc(impl_method_name)
      private def self._vfunc_deleted_text(%this : Pointer(Void), lib_position :  UInt32, lib_n_chars :  UInt32, ) : Void
        # @position: 
# @n_chars: 

position=lib_position
n_chars=lib_n_chars


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, n_chars)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_deleted_text(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end
    end

    # deleted_text: (None)
    # @position:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_unsafe_deleted_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_deleted_text(%this : Pointer(Void), lib_position :  UInt32, lib_n_chars :  UInt32, ) : Void
# @position: 
# @n_chars: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_n_chars)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_deleted_text = Proc(Pointer(Void), UInt32, UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_deleted_text(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_deleted_text : Proc(Pointer(Void), UInt32, UInt32, Void)? = nil
    end

    # get_length: (None)
    # Returns: (transfer none)
    private macro _register_get_length_vfunc(impl_method_name)
      private def self._vfunc_get_length(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_length(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_length: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_length_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_length(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_length = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_length(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_length : Proc(Pointer(Void), UInt32)? = nil
    end

    # get_text: (None)
    # @n_bytes:
    # Returns: (transfer none)
    private macro _register_get_text_vfunc(impl_method_name)
      private def self._vfunc_get_text(%this : Pointer(Void), lib_n_bytes :  Pointer(UInt64), ) : Pointer(LibC::Char)
        # @n_bytes: 

n_bytes=lib_n_bytes


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(n_bytes)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_text(Pointer(Void), Pointer(UInt64))).pointer
        previous_def
      end
    end

    # get_text: (None)
    # @n_bytes:
    # Returns: (transfer none)
    private macro _register_unsafe_get_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_text(%this : Pointer(Void), lib_n_bytes :  Pointer(UInt64), ) : Pointer(LibC::Char)
# @n_bytes: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_n_bytes)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_text = Proc(Pointer(Void), Pointer(UInt64), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_text(Pointer(Void), Pointer(UInt64))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_text : Proc(Pointer(Void), Pointer(UInt64), Pointer(LibC::Char))? = nil
    end

    # insert_text: (None)
    # @position:
    # @chars:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_insert_text_vfunc(impl_method_name)
      private def self._vfunc_insert_text(%this : Pointer(Void), lib_position :  UInt32, lib_chars :  Pointer(LibC::Char), lib_n_chars :  UInt32, ) : UInt32
        # @position: 
# @chars: 
# @n_chars: 

position=lib_position
# Generator::BuiltInTypeArgPlan
chars=::String.new(lib_chars)
n_chars=lib_n_chars


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, chars, n_chars)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insert_text(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32)).pointer
        previous_def
      end
    end

    # insert_text: (None)
    # @position:
    # @chars:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_unsafe_insert_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insert_text(%this : Pointer(Void), lib_position :  UInt32, lib_chars :  Pointer(LibC::Char), lib_n_chars :  UInt32, ) : UInt32
# @position: 
# @chars: 
# @n_chars: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_chars, lib_n_chars)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insert_text = Proc(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32, UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insert_text(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insert_text : Proc(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32, UInt32)? = nil
    end

    # inserted_text: (None)
    # @position:
    # @chars:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_inserted_text_vfunc(impl_method_name)
      private def self._vfunc_inserted_text(%this : Pointer(Void), lib_position :  UInt32, lib_chars :  Pointer(LibC::Char), lib_n_chars :  UInt32, ) : Void
        # @position: 
# @chars: 
# @n_chars: 

position=lib_position
# Generator::BuiltInTypeArgPlan
chars=::String.new(lib_chars)
n_chars=lib_n_chars


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, chars, n_chars)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_inserted_text(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32)).pointer
        previous_def
      end
    end

    # inserted_text: (None)
    # @position:
    # @chars:
    # @n_chars:
    # Returns: (transfer none)
    private macro _register_unsafe_inserted_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_inserted_text(%this : Pointer(Void), lib_position :  UInt32, lib_chars :  Pointer(LibC::Char), lib_n_chars :  UInt32, ) : Void
# @position: 
# @chars: 
# @n_chars: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_chars, lib_n_chars)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_inserted_text = Proc(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_inserted_text(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_inserted_text : Proc(Pointer(Void), UInt32, Pointer(LibC::Char), UInt32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
