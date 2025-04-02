require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class HitTestResult < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(HitTestResult, g_object_get_qdata)

    # Initialize a new `HitTestResult`.
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

    def initialize(*, context : UInt32? = nil, image_uri : ::String? = nil, link_label : ::String? = nil, link_title : ::String? = nil, link_uri : ::String? = nil, media_uri : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !context.nil?
        (_names.to_unsafe + _n).value = "context".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, context)
        _n += 1
      end
      if !image_uri.nil?
        (_names.to_unsafe + _n).value = "image-uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, image_uri)
        _n += 1
      end
      if !link_label.nil?
        (_names.to_unsafe + _n).value = "link-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, link_label)
        _n += 1
      end
      if !link_title.nil?
        (_names.to_unsafe + _n).value = "link-title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, link_title)
        _n += 1
      end
      if !link_uri.nil?
        (_names.to_unsafe + _n).value = "link-uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, link_uri)
        _n += 1
      end
      if !media_uri.nil?
        (_names.to_unsafe + _n).value = "media-uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, media_uri)
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
      @@g_type ||= LibWebKit.webkit_hit_test_result_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::HitTestResult.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def context=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "context", unsafe_value, Pointer(Void).null)
      value
    end

    def context : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "context", pointerof(value), Pointer(Void).null)
      value
    end

    def image_uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "image-uri", unsafe_value, Pointer(Void).null)
      value
    end

    def image_uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "image-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#image_uri` property to nil.
    def image_uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "image-uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#image_uri`, but can return nil.
    def image_uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "image-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def link_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "link-label", unsafe_value, Pointer(Void).null)
      value
    end

    def link_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "link-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#link_label` property to nil.
    def link_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "link-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#link_label`, but can return nil.
    def link_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "link-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def link_title=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "link-title", unsafe_value, Pointer(Void).null)
      value
    end

    def link_title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "link-title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#link_title` property to nil.
    def link_title=(value : Nil) : Nil
      LibGObject.g_object_set(self, "link-title", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#link_title`, but can return nil.
    def link_title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "link-title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def link_uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "link-uri", unsafe_value, Pointer(Void).null)
      value
    end

    def link_uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "link-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#link_uri` property to nil.
    def link_uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "link-uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#link_uri`, but can return nil.
    def link_uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "link-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def media_uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "media-uri", unsafe_value, Pointer(Void).null)
      value
    end

    def media_uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "media-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#media_uri` property to nil.
    def media_uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "media-uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#media_uri`, but can return nil.
    def media_uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "media-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def context_is_editable : Bool
      # webkit_hit_test_result_context_is_editable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_context_is_editable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context_is_image : Bool
      # webkit_hit_test_result_context_is_image: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_context_is_image(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context_is_link : Bool
      # webkit_hit_test_result_context_is_link: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_context_is_link(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context_is_media : Bool
      # webkit_hit_test_result_context_is_media: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_context_is_media(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context_is_scrollbar : Bool
      # webkit_hit_test_result_context_is_scrollbar: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_context_is_scrollbar(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context_is_selection : Bool
      # webkit_hit_test_result_context_is_selection: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_context_is_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context : UInt32
      # webkit_hit_test_result_get_context: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_get_context(to_unsafe)

      # Return value handling
      _retval
    end

    def image_uri : ::String
      # webkit_hit_test_result_get_image_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_get_image_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def link_label : ::String
      # webkit_hit_test_result_get_link_label: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_get_link_label(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def link_title : ::String
      # webkit_hit_test_result_get_link_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_get_link_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def link_uri : ::String
      # webkit_hit_test_result_get_link_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_get_link_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def media_uri : ::String
      # webkit_hit_test_result_get_media_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_hit_test_result_get_media_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
