require "../g_object-2.0/object"
require "./buildable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TextTagTable < GObject::Object
    include Buildable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TextTagTable, g_object_get_qdata)

    # Initialize a new `TextTagTable`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_text_tag_table_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TextTagTable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_text_tag_table_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_text_tag_table_new

      # Return value handling
      Gtk::TextTagTable.new(_retval, GICrystal::Transfer::Full)
    end

    def add(tag : Gtk::TextTag) : Bool
      # gtk_text_tag_table_add: (Method)
      # @tag:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_tag_table_add(to_unsafe, tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def foreach(func : Gtk::TextTagTableForeach, data : Pointer(Void)?) : Nil
      # gtk_text_tag_table_foreach: (Method)
      # @func:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGtk.gtk_text_tag_table_foreach(to_unsafe, func, data)

      # Return value handling
    end

    def size : Int32
      # gtk_text_tag_table_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_tag_table_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def lookup(name : ::String) : Gtk::TextTag?
      # gtk_text_tag_table_lookup: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_text_tag_table_lookup(to_unsafe, name)

      # Return value handling
      Gtk::TextTag.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def remove(tag : Gtk::TextTag) : Nil
      # gtk_text_tag_table_remove: (Method)
      # @tag:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_tag_table_remove(to_unsafe, tag)

      # Return value handling
    end

    struct TagAddedSignal < GObject::Signal
      def name : String
        @detail ? "tag-added::#{@detail}" : "tag-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextTag, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextTag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextTag, Nil)).unbox(_lib_box).call(tag)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextTagTable, Gtk::TextTag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextTagTable.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextTagTable, Gtk::TextTag, Nil)).unbox(_lib_box).call(_sender, tag)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tag : Gtk::TextTag) : Nil
        LibGObject.g_signal_emit_by_name(@source, "tag-added", tag)
      end
    end

    def tag_added_signal
      TagAddedSignal.new(self)
    end

    struct TagChangedSignal < GObject::Signal
      def name : String
        @detail ? "tag-changed::#{@detail}" : "tag-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextTag, Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextTag, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), lib_size_changed : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          size_changed = GICrystal.to_bool(lib_size_changed)
          ::Box(Proc(Gtk::TextTag, Bool, Nil)).unbox(_lib_box).call(tag, size_changed)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextTagTable, Gtk::TextTag, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), lib_size_changed : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::TextTagTable.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          size_changed = GICrystal.to_bool(lib_size_changed)
          ::Box(Proc(Gtk::TextTagTable, Gtk::TextTag, Bool, Nil)).unbox(_lib_box).call(_sender, tag, size_changed)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tag : Gtk::TextTag, size_changed : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "tag-changed", tag, size_changed)
      end
    end

    def tag_changed_signal
      TagChangedSignal.new(self)
    end

    struct TagRemovedSignal < GObject::Signal
      def name : String
        @detail ? "tag-removed::#{@detail}" : "tag-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextTag, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextTag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextTag, Nil)).unbox(_lib_box).call(tag)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextTagTable, Gtk::TextTag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tag : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextTagTable.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tag = Gtk::TextTag.new(lib_tag, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextTagTable, Gtk::TextTag, Nil)).unbox(_lib_box).call(_sender, tag)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tag : Gtk::TextTag) : Nil
        LibGObject.g_signal_emit_by_name(@source, "tag-removed", tag)
      end
    end

    def tag_removed_signal
      TagRemovedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
