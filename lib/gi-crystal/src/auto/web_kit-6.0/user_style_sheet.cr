module WebKit
  class UserStyleSheet
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(UserStyleSheet.g_type, pointer)
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
      LibGObject.g_boxed_free(UserStyleSheet.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_user_style_sheet_get_type
    end

    def self.new(source : ::String, injected_frames : WebKit::UserContentInjectedFrames, level : WebKit::UserStyleLevel, allow_list : Enumerable(::String)?, block_list : Enumerable(::String)?) : self
      # webkit_user_style_sheet_new: (Constructor)
      # @source:
      # @injected_frames:
      # @level:
      # @allow_list: (nullable) (array zero-terminated=1 element-type Utf8)
      # @block_list: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      allow_list = if allow_list.nil?
                     Pointer(Pointer(LibC::Char)).null
                   else
                     allow_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                   end
      # Generator::NullableArrayPlan
      block_list = if block_list.nil?
                     Pointer(Pointer(LibC::Char)).null
                   else
                     block_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                   end

      # C call
      _retval = LibWebKit.webkit_user_style_sheet_new(source, injected_frames, level, allow_list, block_list)

      # Return value handling
      WebKit::UserStyleSheet.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_world(source : ::String, injected_frames : WebKit::UserContentInjectedFrames, level : WebKit::UserStyleLevel, world_name : ::String, allow_list : Enumerable(::String)?, block_list : Enumerable(::String)?) : self
      # webkit_user_style_sheet_new_for_world: (Constructor)
      # @source:
      # @injected_frames:
      # @level:
      # @world_name:
      # @allow_list: (nullable) (array zero-terminated=1 element-type Utf8)
      # @block_list: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      allow_list = if allow_list.nil?
                     Pointer(Pointer(LibC::Char)).null
                   else
                     allow_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                   end
      # Generator::NullableArrayPlan
      block_list = if block_list.nil?
                     Pointer(Pointer(LibC::Char)).null
                   else
                     block_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                   end

      # C call
      _retval = LibWebKit.webkit_user_style_sheet_new_for_world(source, injected_frames, level, world_name, allow_list, block_list)

      # Return value handling
      WebKit::UserStyleSheet.new(_retval, GICrystal::Transfer::Full)
    end

    def ref : WebKit::UserStyleSheet
      # webkit_user_style_sheet_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_user_style_sheet_ref(to_unsafe)

      # Return value handling
      WebKit::UserStyleSheet.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_user_style_sheet_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_style_sheet_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
