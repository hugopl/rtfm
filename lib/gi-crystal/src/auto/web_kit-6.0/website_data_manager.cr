require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebsiteDataManager < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebsiteDataManager, g_object_get_qdata)

    # Initialize a new `WebsiteDataManager`.
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

    def initialize(*, base_cache_directory : ::String? = nil, base_data_directory : ::String? = nil, is_ephemeral : Bool? = nil, origin_storage_ratio : Float64? = nil, total_storage_ratio : Float64? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !base_cache_directory.nil?
        (_names.to_unsafe + _n).value = "base-cache-directory".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_cache_directory)
        _n += 1
      end
      if !base_data_directory.nil?
        (_names.to_unsafe + _n).value = "base-data-directory".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_data_directory)
        _n += 1
      end
      if !is_ephemeral.nil?
        (_names.to_unsafe + _n).value = "is-ephemeral".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_ephemeral)
        _n += 1
      end
      if !origin_storage_ratio.nil?
        (_names.to_unsafe + _n).value = "origin-storage-ratio".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, origin_storage_ratio)
        _n += 1
      end
      if !total_storage_ratio.nil?
        (_names.to_unsafe + _n).value = "total-storage-ratio".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, total_storage_ratio)
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
      @@g_type ||= LibWebKit.webkit_website_data_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebsiteDataManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def base_cache_directory=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "base-cache-directory", unsafe_value, Pointer(Void).null)
      value
    end

    def base_cache_directory : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "base-cache-directory", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#base_cache_directory` property to nil.
    def base_cache_directory=(value : Nil) : Nil
      LibGObject.g_object_set(self, "base-cache-directory", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#base_cache_directory`, but can return nil.
    def base_cache_directory? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "base-cache-directory", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def base_data_directory=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "base-data-directory", unsafe_value, Pointer(Void).null)
      value
    end

    def base_data_directory : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "base-data-directory", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#base_data_directory` property to nil.
    def base_data_directory=(value : Nil) : Nil
      LibGObject.g_object_set(self, "base-data-directory", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#base_data_directory`, but can return nil.
    def base_data_directory? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "base-data-directory", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def is_ephemeral=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-ephemeral", unsafe_value, Pointer(Void).null)
      value
    end

    def is_ephemeral? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-ephemeral", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def origin_storage_ratio=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "origin-storage-ratio", unsafe_value, Pointer(Void).null)
      value
    end

    def total_storage_ratio=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "total-storage-ratio", unsafe_value, Pointer(Void).null)
      value
    end

    def clear(types : WebKit::WebsiteDataTypes, timespan : Int64, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_website_data_manager_clear: (Method)
      # @types:
      # @timespan:
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
      LibWebKit.webkit_website_data_manager_clear(to_unsafe, types, timespan, cancellable, callback, user_data)

      # Return value handling
    end

    def clear_finish(result : Gio::AsyncResult) : Bool
      # webkit_website_data_manager_clear_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_website_data_manager_clear_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def fetch(types : WebKit::WebsiteDataTypes, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_website_data_manager_fetch: (Method)
      # @types:
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
      LibWebKit.webkit_website_data_manager_fetch(to_unsafe, types, cancellable, callback, user_data)

      # Return value handling
    end

    def fetch_finish(result : Gio::AsyncResult) : GLib::List
      # webkit_website_data_manager_fetch_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_website_data_manager_fetch_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(WebKit::WebsiteData).new(_retval, GICrystal::Transfer::Full)
    end

    def base_cache_directory : ::String?
      # webkit_website_data_manager_get_base_cache_directory: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_website_data_manager_get_base_cache_directory(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def base_data_directory : ::String?
      # webkit_website_data_manager_get_base_data_directory: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_website_data_manager_get_base_data_directory(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def favicon_database : WebKit::FaviconDatabase?
      # webkit_website_data_manager_get_favicon_database: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_website_data_manager_get_favicon_database(to_unsafe)

      # Return value handling
      WebKit::FaviconDatabase.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def favicons_enabled : Bool
      # webkit_website_data_manager_get_favicons_enabled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_data_manager_get_favicons_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def itp_summary(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_website_data_manager_get_itp_summary: (Method)
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
      LibWebKit.webkit_website_data_manager_get_itp_summary(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def itp_summary_finish(result : Gio::AsyncResult) : GLib::List
      # webkit_website_data_manager_get_itp_summary_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_website_data_manager_get_itp_summary_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(WebKit::ITPThirdParty).new(_retval, GICrystal::Transfer::Full)
    end

    def is_ephemeral : Bool
      # webkit_website_data_manager_is_ephemeral: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_data_manager_is_ephemeral(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove(types : WebKit::WebsiteDataTypes, website_data : GLib::List, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_website_data_manager_remove: (Method)
      # @types:
      # @website_data:
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
      LibWebKit.webkit_website_data_manager_remove(to_unsafe, types, website_data, cancellable, callback, user_data)

      # Return value handling
    end

    def remove_finish(result : Gio::AsyncResult) : Bool
      # webkit_website_data_manager_remove_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_website_data_manager_remove_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def favicons_enabled=(enabled : Bool) : Nil
      # webkit_website_data_manager_set_favicons_enabled: (Method)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_website_data_manager_set_favicons_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
