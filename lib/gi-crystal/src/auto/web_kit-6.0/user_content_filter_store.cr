require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class UserContentFilterStore < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(UserContentFilterStore, g_object_get_qdata)

    # Initialize a new `UserContentFilterStore`.
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

    def initialize(*, path : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !path.nil?
        (_names.to_unsafe + _n).value = "path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, path)
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
      @@g_type ||= LibWebKit.webkit_user_content_filter_store_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::UserContentFilterStore.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "path", unsafe_value, Pointer(Void).null)
      value
    end

    def path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#path` property to nil.
    def path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#path`, but can return nil.
    def path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(storage_path : ::String) : self
      # webkit_user_content_filter_store_new: (Constructor)
      # @storage_path:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_user_content_filter_store_new(storage_path)

      # Return value handling
      WebKit::UserContentFilterStore.new(_retval, GICrystal::Transfer::Full)
    end

    def fetch_identifiers(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_user_content_filter_store_fetch_identifiers: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibWebKit.webkit_user_content_filter_store_fetch_identifiers(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def fetch_identifiers_finish(result : Gio::AsyncResult) : Enumerable(::String)
      # webkit_user_content_filter_store_fetch_identifiers_finish: (Method)
      # @result:
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibWebKit.webkit_user_content_filter_store_fetch_identifiers_finish(to_unsafe, result)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def path : ::String
      # webkit_user_content_filter_store_get_path: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_user_content_filter_store_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def load(identifier : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_user_content_filter_store_load: (Method)
      # @identifier:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibWebKit.webkit_user_content_filter_store_load(to_unsafe, identifier, cancellable, callback, user_data)

      # Return value handling
    end

    def load_finish(result : Gio::AsyncResult) : WebKit::UserContentFilter
      # webkit_user_content_filter_store_load_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_user_content_filter_store_load_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::UserContentFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def remove(identifier : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_user_content_filter_store_remove: (Method)
      # @identifier:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibWebKit.webkit_user_content_filter_store_remove(to_unsafe, identifier, cancellable, callback, user_data)

      # Return value handling
    end

    def remove_finish(result : Gio::AsyncResult) : Bool
      # webkit_user_content_filter_store_remove_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_user_content_filter_store_remove_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def save(identifier : ::String, source : GLib::Bytes, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_user_content_filter_store_save: (Method)
      # @identifier:
      # @source:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibWebKit.webkit_user_content_filter_store_save(to_unsafe, identifier, source, cancellable, callback, user_data)

      # Return value handling
    end

    def save_finish(result : Gio::AsyncResult) : WebKit::UserContentFilter
      # webkit_user_content_filter_store_save_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_user_content_filter_store_save_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::UserContentFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def save_from_file(identifier : ::String, file : Gio::File, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_user_content_filter_store_save_from_file: (Method)
      # @identifier:
      # @file:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibWebKit.webkit_user_content_filter_store_save_from_file(to_unsafe, identifier, file, cancellable, callback, user_data)

      # Return value handling
    end

    def save_from_file_finish(result : Gio::AsyncResult) : WebKit::UserContentFilter
      # webkit_user_content_filter_store_save_from_file_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_user_content_filter_store_save_from_file_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::UserContentFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
