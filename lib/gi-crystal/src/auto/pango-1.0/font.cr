require "../g_object-2.0/object"

module Pango
  @[GICrystal::GeneratedWrapper]
  class Font < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::FontClass), class_init,
        sizeof(LibPango::Font), instance_init, 0)
    end

    GICrystal.declare_new_method(Font, g_object_get_qdata)

    # Initialize a new `Font`.
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
      @@g_type ||= LibPango.pango_font_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::Font.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.descriptions_free(descs : Enumerable(Pango::FontDescription)?) : Nil
      # pango_font_descriptions_free: (None)
      # @descs: (transfer full) (nullable) (array length=n_descs element-type Interface)
      # @n_descs:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_descs = descs.try(&.size) || 0
      # Generator::NullableArrayPlan
      descs = if descs.nil?
                Pointer(Pointer(LibPango::FontDescription)).null
              else
                descs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibPango::FontDescription)))
              end

      # C call
      LibPango.pango_font_descriptions_free(descs, n_descs)

      # Return value handling
    end

    def self.descriptions_free(*descs : Pango::FontDescription)
      self.descriptions_free(descs)
    end

    def deserialize(context : Pango::Context, bytes : GLib::Bytes) : Pango::Font?
      # pango_font_deserialize: (Throws)
      # @context:
      # @bytes:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibPango.pango_font_deserialize(context, bytes, pointerof(_error))

      # Error check
      Pango.raise_gerror(_error) unless _error.null?

      # Return value handling
      Pango::Font.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def describe : Pango::FontDescription
      # pango_font_describe: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_font_describe(to_unsafe)

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::Full)
    end

    def describe_with_absolute_size : Pango::FontDescription
      # pango_font_describe_with_absolute_size: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_font_describe_with_absolute_size(to_unsafe)

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::Full)
    end

    def coverage(language : Pango::Language) : Pango::Coverage
      # pango_font_get_coverage: (Method)
      # @language:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_font_get_coverage(to_unsafe, language)

      # Return value handling
      Pango::Coverage.new(_retval, GICrystal::Transfer::Full)
    end

    def face : Pango::FontFace?
      # pango_font_get_face: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_font_get_face(to_unsafe)

      # Return value handling
      Pango::FontFace.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def features(features : Enumerable(HarfBuzz::FeatureT), num_features : UInt32) : Nil
      # pango_font_get_features: (Method)
      # @features: (out) (caller-allocates) (array length=len element-type Interface)
      # @len:
      # @num_features: (inout) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      len = features.size
      # Generator::ArrayArgPlan
      features = features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))

      # C call
      LibPango.pango_font_get_features(to_unsafe, features, len, num_features)

      # Return value handling
    end

    def font_map : Pango::FontMap?
      # pango_font_get_font_map: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_font_get_font_map(to_unsafe)

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def glyph_extents(glyph : UInt32) : Pango::Rectangle
      # pango_font_get_glyph_extents: (Method)
      # @glyph:
      # @ink_rect: (out) (caller-allocates) (optional)
      # @logical_rect: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      ink_rect = Pointer(Void).null     # Generator::CallerAllocatesPlan
      ink_rect = Pango::Rectangle.new   # Generator::OutArgUsedInReturnPlan
      logical_rect = Pointer(Void).null # Generator::CallerAllocatesPlan
      logical_rect = Pango::Rectangle.new
      # C call
      LibPango.pango_font_get_glyph_extents(to_unsafe, glyph, ink_rect, logical_rect)

      # Return value handling
      ink_rect
    end

    def languages : Enumerable(Pango::Language)?
      # pango_font_get_languages: (Method)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Interface)

      # C call
      _retval = LibPango.pango_font_get_languages(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def metrics(language : Pango::Language?) : Pango::FontMetrics
      # pango_font_get_metrics: (Method)
      # @language: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      language = if language.nil?
                   Pointer(Void).null
                 else
                   language.to_unsafe
                 end

      # C call
      _retval = LibPango.pango_font_get_metrics(to_unsafe, language)

      # Return value handling
      Pango::FontMetrics.new(_retval, GICrystal::Transfer::Full)
    end

    def has_char(wc : Char) : Bool
      # pango_font_has_char: (Method)
      # @wc:
      # Returns: (transfer none)

      # Generator::BuiltInTypeArgPlan
      wc = wc.ord.to_u32

      # C call
      _retval = LibPango.pango_font_has_char(to_unsafe, wc)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def serialize : GLib::Bytes
      # pango_font_serialize: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_font_serialize(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    # create_hb_font: (None)
    # Returns: (transfer full)
    private macro _register_create_hb_font_vfunc(impl_method_name)
      private def self._vfunc_create_hb_font(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_hb_font(Pointer(Void))).pointer
        previous_def
      end
    end

    # create_hb_font: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_create_hb_font_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_hb_font(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_hb_font = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_hb_font(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_hb_font : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # describe: (None)
    # Returns: (transfer full)
    private macro _register_describe_vfunc(impl_method_name)
      private def self._vfunc_describe(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_describe(Pointer(Void))).pointer
        previous_def
      end
    end

    # describe: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_describe_vfunc(impl_method_name)
      private def self._vfunc_unsafe_describe(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_describe = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_describe(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_describe : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # describe_absolute: (None)
    # Returns: (transfer full)
    private macro _register_describe_absolute_vfunc(impl_method_name)
      private def self._vfunc_describe_absolute(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_describe_absolute(Pointer(Void))).pointer
        previous_def
      end
    end

    # describe_absolute: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_describe_absolute_vfunc(impl_method_name)
      private def self._vfunc_unsafe_describe_absolute(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_describe_absolute = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_describe_absolute(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_describe_absolute : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_coverage: (None)
    # @language:
    # Returns: (transfer full)
    private macro _register_get_coverage_vfunc(impl_method_name)
      private def self._vfunc_get_coverage(%this : Pointer(Void), lib_language :  Pointer(Void), ) : Pointer(Void)
        # @language: 

# Generator::BuiltInTypeArgPlan
language=Pango::Language.new(lib_language, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(language)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_coverage(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_coverage: (None)
    # @language:
    # Returns: (transfer full)
    private macro _register_unsafe_get_coverage_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_coverage(%this : Pointer(Void), lib_language :  Pointer(Void), ) : Pointer(Void)
# @language: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_language)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_coverage = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_coverage(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_coverage : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # get_features: (None)
    # @features: (out) (caller-allocates) (array length=len element-type Interface)
    # @len:
    # @num_features: (inout) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_features_vfunc(impl_method_name)
      private def self._vfunc_get_features(%this : Pointer(Void), lib_features :  Pointer(LibHarfBuzz::FeatureT), lib_len :  UInt32, lib_num_features :  UInt32, ) : Void
        # @features: (out) (caller-allocates) (array length=len element-type Interface)
# @len: 
# @num_features: (inout) (transfer full) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_features = lib_features.as(Pointer(Pointer(Void)))
features= Array(HarfBuzz::FeatureT).new(lib_len) do |_i|
HarfBuzz::FeatureT.new((lib_features + _i).value, GICrystal::Transfer::None)
end
num_features=lib_num_features


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(features, len, num_features)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_features(Pointer(Void), Pointer(LibHarfBuzz::FeatureT), UInt32, UInt32)).pointer
        previous_def
      end
    end

    # get_features: (None)
    # @features: (out) (caller-allocates) (array length=len element-type Interface)
    # @len:
    # @num_features: (inout) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_features_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_features(%this : Pointer(Void), lib_features :  Pointer(LibHarfBuzz::FeatureT), lib_len :  UInt32, lib_num_features :  UInt32, ) : Void
# @features: (out) (caller-allocates) (array length=len element-type Interface)
# @len: 
# @num_features: (inout) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_features, lib_len, lib_num_features)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_features = Proc(Pointer(Void), Pointer(LibHarfBuzz::FeatureT), UInt32, UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_features(Pointer(Void), Pointer(LibHarfBuzz::FeatureT), UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_features : Proc(Pointer(Void), Pointer(LibHarfBuzz::FeatureT), UInt32, UInt32, Void)? = nil
    end

    # get_font_map: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_font_map_vfunc(impl_method_name)
      private def self._vfunc_get_font_map(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_font_map(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_font_map: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_font_map_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_font_map(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_font_map = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_font_map(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_font_map : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_glyph_extents: (None)
    # @glyph:
    # @ink_rect: (out) (caller-allocates) (optional)
    # @logical_rect: (out) (caller-allocates) (optional)
    # Returns: (transfer none)
    private macro _register_get_glyph_extents_vfunc(impl_method_name)
      private def self._vfunc_get_glyph_extents(%this : Pointer(Void), lib_glyph :  UInt32, lib_ink_rect :  Void, lib_logical_rect :  Void, ) : Void
        # @glyph: 
# @ink_rect: (out) (caller-allocates) (optional) 
# @logical_rect: (out) (caller-allocates) (optional) 

glyph=lib_glyph
# Generator::OutArgUsedInReturnPlan
# Generator::CallerAllocatesPlan
# Generator::OutArgUsedInReturnPlan
# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(glyph, ink_rect, logical_rect)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_glyph_extents(Pointer(Void), UInt32, Void, Void)).pointer
        previous_def
      end
    end

    # get_glyph_extents: (None)
    # @glyph:
    # @ink_rect: (out) (caller-allocates) (optional)
    # @logical_rect: (out) (caller-allocates) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_glyph_extents_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_glyph_extents(%this : Pointer(Void), lib_glyph :  UInt32, lib_ink_rect :  Void, lib_logical_rect :  Void, ) : Void
# @glyph: 
# @ink_rect: (out) (caller-allocates) (optional) 
# @logical_rect: (out) (caller-allocates) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_glyph, lib_ink_rect, lib_logical_rect)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_glyph_extents = Proc(Pointer(Void), UInt32, Void, Void, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_glyph_extents(Pointer(Void), UInt32, Void, Void)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_glyph_extents : Proc(Pointer(Void), UInt32, Void, Void, Void)? = nil
    end

    # get_metrics: (None)
    # @language: (nullable)
    # Returns: (transfer full)
    private macro _register_get_metrics_vfunc(impl_method_name)
      private def self._vfunc_get_metrics(%this : Pointer(Void), lib_language :  Pointer(Void), ) : Pointer(Void)
        # @language: (nullable) 

# Generator::NullableArrayPlan
language=(lib_language.null? ? nil : Pango::Language.new(lib_language, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
language=Pango::Language.new(lib_language, GICrystal::Transfer::None) unless lib_language.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(language)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_metrics(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_metrics: (None)
    # @language: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_get_metrics_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_metrics(%this : Pointer(Void), lib_language :  Pointer(Void), ) : Pointer(Void)
# @language: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_language)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_metrics = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_metrics(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_metrics : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
