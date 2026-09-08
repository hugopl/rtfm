module Gsk
  class RenderReplay
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(RenderReplay.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(RenderReplay.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_render_replay_get_type
    end

    def default(node : Gsk::RenderNode) : Gsk::RenderNode?
      # gsk_render_replay_default: (Method)
      # @node:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_render_replay_default(to_unsafe, node)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def filter_font(font : Pango::Font) : Pango::Font
      # gsk_render_replay_filter_font: (Method)
      # @font:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_render_replay_filter_font(to_unsafe, font)

      # Return value handling
      Pango::Font.new(_retval, GICrystal::Transfer::Full)
    end

    def filter_node(node : Gsk::RenderNode) : Gsk::RenderNode?
      # gsk_render_replay_filter_node: (Method)
      # @node:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_render_replay_filter_node(to_unsafe, node)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def filter_texture(texture : Gdk::Texture) : Gdk::Texture
      # gsk_render_replay_filter_texture: (Method)
      # @texture:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_render_replay_filter_texture(to_unsafe, texture)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # gsk_render_replay_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_render_replay_free(to_unsafe)

      # Return value handling
    end

    def font_filter=(filter : Gsk::RenderReplayFontFilter?) : Nil
      # gsk_render_replay_set_font_filter: (Method)
      # @filter: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter
        _box = ::Box.box(filter)
        filter = ->(lib_replay : Pointer(Void), lib_font : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          replay = Gsk::RenderReplay.new(lib_replay, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          font = Pango::Font.new(lib_font, GICrystal::Transfer::None)
          _retval = ::Box(Proc(Gsk::RenderReplay, Pango::Font, Pango::Font)).unbox(lib_user_data).call(replay, font)
          LibGObject.g_object_ref(_retval) if _retval
          _retval.to_unsafe
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      LibGsk.gsk_render_replay_set_font_filter(to_unsafe, filter, user_data, user_destroy)

      # Return value handling
    end

    def node_filter=(filter : Gsk::RenderReplayNodeFilter?) : Nil
      # gsk_render_replay_set_node_filter: (Method)
      # @filter: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter
        _box = ::Box.box(filter)
        filter = ->(lib_replay : Pointer(Void), lib_node : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          replay = Gsk::RenderReplay.new(lib_replay, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          node = Gsk::RenderNode.new(lib_node, GICrystal::Transfer::None)
          _retval = ::Box(Proc(Gsk::RenderReplay, Gsk::RenderNode, Gsk::RenderNode)).unbox(lib_user_data).call(replay, node)
          LibGObject.g_object_ref(_retval) if _retval
          _retval.nil? ? Pointer(Void).null : _retval.to_unsafe
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      LibGsk.gsk_render_replay_set_node_filter(to_unsafe, filter, user_data, user_destroy)

      # Return value handling
    end

    def texture_filter=(filter : Gsk::RenderReplayTextureFilter?) : Nil
      # gsk_render_replay_set_texture_filter: (Method)
      # @filter: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter
        _box = ::Box.box(filter)
        filter = ->(lib_replay : Pointer(Void), lib_texture : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          replay = Gsk::RenderReplay.new(lib_replay, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          texture = Gdk::Texture.new(lib_texture, GICrystal::Transfer::None)
          _retval = ::Box(Proc(Gsk::RenderReplay, Gdk::Texture, Gdk::Texture)).unbox(lib_user_data).call(replay, texture)
          LibGObject.g_object_ref(_retval) if _retval
          _retval.to_unsafe
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      LibGsk.gsk_render_replay_set_texture_filter(to_unsafe, filter, user_data, user_destroy)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
