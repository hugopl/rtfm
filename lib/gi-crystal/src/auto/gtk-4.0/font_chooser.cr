module Gtk
  module FontChooser
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::FontChooser
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__FontChooser(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractFontChooser.g_type
    end

    def font=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "font", unsafe_value, Pointer(Void).null)
      value
    end

    def font : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#font` property to nil.
    def font=(value : Nil) : Nil
      LibGObject.g_object_set(self, "font", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#font`, but can return nil.
    def font? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def font_desc=(value : Pango::FontDescription?) : Pango::FontDescription?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "font-desc", unsafe_value, Pointer(Void).null)
      value
    end

    def font_desc : Pango::FontDescription?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "font-desc", pointerof(value), Pointer(Void).null)
      Pango::FontDescription.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def font_features : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font-features", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#font_features`, but can return nil.
    def font_features? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font-features", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def language=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "language", unsafe_value, Pointer(Void).null)
      value
    end

    def language : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "language", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#language` property to nil.
    def language=(value : Nil) : Nil
      LibGObject.g_object_set(self, "language", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#language`, but can return nil.
    def language? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "language", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def level=(value : Gtk::FontChooserLevel) : Gtk::FontChooserLevel
      unsafe_value = value

      LibGObject.g_object_set(self, "level", unsafe_value, Pointer(Void).null)
      value
    end

    def level : Gtk::FontChooserLevel
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "level", pointerof(value), Pointer(Void).null)
      Gtk::FontChooserLevel.new(value)
    end

    def preview_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "preview-text", unsafe_value, Pointer(Void).null)
      value
    end

    def preview_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "preview-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#preview_text` property to nil.
    def preview_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "preview-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#preview_text`, but can return nil.
    def preview_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "preview-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def show_preview_entry=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-preview-entry", unsafe_value, Pointer(Void).null)
      value
    end

    def show_preview_entry? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-preview-entry", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    @[Deprecated]
    def font : ::String?
      # gtk_font_chooser_get_font: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_font(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    @[Deprecated]
    def font_desc : Pango::FontDescription?
      # gtk_font_chooser_get_font_desc: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_font_desc(to_unsafe)

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def font_face : Pango::FontFace?
      # gtk_font_chooser_get_font_face: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_font_face(to_unsafe)

      # Return value handling
      Pango::FontFace.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def font_family : Pango::FontFamily?
      # gtk_font_chooser_get_font_family: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_font_family(to_unsafe)

      # Return value handling
      Pango::FontFamily.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def font_features : ::String
      # gtk_font_chooser_get_font_features: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_font_features(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    @[Deprecated]
    def font_map : Pango::FontMap?
      # gtk_font_chooser_get_font_map: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_font_map(to_unsafe)

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def font_size : Int32
      # gtk_font_chooser_get_font_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_font_size(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def language : ::String
      # gtk_font_chooser_get_language: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_language(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    @[Deprecated]
    def level : Gtk::FontChooserLevel
      # gtk_font_chooser_get_level: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_level(to_unsafe)

      # Return value handling
      Gtk::FontChooserLevel.new(_retval)
    end

    @[Deprecated]
    def preview_text : ::String
      # gtk_font_chooser_get_preview_text: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_preview_text(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    @[Deprecated]
    def show_preview_entry : Bool
      # gtk_font_chooser_get_show_preview_entry: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_chooser_get_show_preview_entry(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def filter_func=(filter : Gtk::FontFilterFunc?) : Nil
      # gtk_font_chooser_set_filter_func: (Method)
      # @filter: (nullable)
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter
        _box = ::Box.box(filter)
        filter = ->(lib_family : Pointer(Void), lib_face : Pointer(Void), lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          family = Pango::FontFamily.new(lib_family, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          face = Pango::FontFace.new(lib_face, GICrystal::Transfer::None)
          ::Box(Proc(Pango::FontFamily, Pango::FontFace, Bool)).unbox(lib_data).call(family, face)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_font_chooser_set_filter_func(to_unsafe, filter, user_data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def font=(fontname : ::String) : Nil
      # gtk_font_chooser_set_font: (Method | Setter)
      # @fontname:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_chooser_set_font(to_unsafe, fontname)

      # Return value handling
    end

    @[Deprecated]
    def font_desc=(font_desc : Pango::FontDescription) : Nil
      # gtk_font_chooser_set_font_desc: (Method | Setter)
      # @font_desc:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_chooser_set_font_desc(to_unsafe, font_desc)

      # Return value handling
    end

    @[Deprecated]
    def font_map=(fontmap : Pango::FontMap?) : Nil
      # gtk_font_chooser_set_font_map: (Method)
      # @fontmap: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      fontmap = if fontmap.nil?
                  Pointer(Void).null
                else
                  fontmap.to_unsafe
                end

      # C call
      LibGtk.gtk_font_chooser_set_font_map(to_unsafe, fontmap)

      # Return value handling
    end

    @[Deprecated]
    def language=(language : ::String) : Nil
      # gtk_font_chooser_set_language: (Method | Setter)
      # @language:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_chooser_set_language(to_unsafe, language)

      # Return value handling
    end

    @[Deprecated]
    def level=(level : Gtk::FontChooserLevel) : Nil
      # gtk_font_chooser_set_level: (Method | Setter)
      # @level:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_chooser_set_level(to_unsafe, level)

      # Return value handling
    end

    @[Deprecated]
    def preview_text=(text : ::String) : Nil
      # gtk_font_chooser_set_preview_text: (Method | Setter)
      # @text:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_chooser_set_preview_text(to_unsafe, text)

      # Return value handling
    end

    @[Deprecated]
    def show_preview_entry=(show_preview_entry : Bool) : Nil
      # gtk_font_chooser_set_show_preview_entry: (Method | Setter)
      # @show_preview_entry:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_chooser_set_show_preview_entry(to_unsafe, show_preview_entry)

      # Return value handling
    end

    # font_activated: (None)
    # @fontname:
    # Returns: (transfer none)
    private macro _register_font_activated_vfunc(impl_method_name)
      private def self._vfunc_font_activated(%this : Pointer(Void), lib_fontname :  Pointer(LibC::Char), ) : Void
        # @fontname: 

# Generator::BuiltInTypeArgPlan
fontname=::String.new(lib_fontname)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(fontname)
        
        %retval
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_font_activated(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # font_activated: (None)
    # @fontname:
    # Returns: (transfer none)
    private macro _register_unsafe_font_activated_vfunc(impl_method_name)
      private def self._vfunc_unsafe_font_activated(%this : Pointer(Void), lib_fontname :  Pointer(LibC::Char), ) : Void
# @fontname: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_fontname)
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_font_activated = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_font_activated(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_font_activated : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # get_font_face: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_font_face_vfunc(impl_method_name)
      private def self._vfunc_get_font_face(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_font_face(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_font_face: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_font_face_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_font_face(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_font_face = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_font_face(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_font_face : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_font_family: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_font_family_vfunc(impl_method_name)
      private def self._vfunc_get_font_family(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_font_family(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_font_family: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_font_family_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_font_family(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_font_family = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_font_family(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_font_family : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_font_map: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_font_map_vfunc(impl_method_name)
      private def self._vfunc_get_font_map(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_font_map(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_font_map: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_font_map_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_font_map(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_font_map = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_font_map(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_font_map : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_font_size: (None)
    # Returns: (transfer none)
    private macro _register_get_font_size_vfunc(impl_method_name)
      private def self._vfunc_get_font_size(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_font_size(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_font_size: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_font_size_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_font_size(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_font_size = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_font_size(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_font_size : Proc(Pointer(Void), Int32)? = nil
    end

    # set_filter_func: (None)
    # @filter: (nullable)
    # @user_data: (nullable)
    # @destroy:
    # Returns: (transfer none)
    private macro _register_set_filter_func_vfunc(impl_method_name)
      private def self._vfunc_set_filter_func(%this : Pointer(Void), lib_filter :  Void*, lib_user_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
        # @filter: (nullable) 
# @user_data: (nullable) 
# @destroy: 

# Generator::CallbackArgPlan
# Generator::BuiltInTypeArgPlan
filter=Gtk::FontFilterFunc.new(lib_filter, GICrystal::Transfer::None) unless lib_filter.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(filter, user_data, destroy)
        
        %retval
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_filter_func(Pointer(Void), Void*, Pointer(Void), Void*)).pointer
        previous_def
      end
    end

    # set_filter_func: (None)
    # @filter: (nullable)
    # @user_data: (nullable)
    # @destroy:
    # Returns: (transfer none)
    private macro _register_unsafe_set_filter_func_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_filter_func(%this : Pointer(Void), lib_filter :  Void*, lib_user_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
# @filter: (nullable) 
# @user_data: (nullable) 
# @destroy: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_filter, lib_user_data, lib_destroy)
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_filter_func = Proc(Pointer(Void), Void*, Pointer(Void), Void*, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_filter_func(Pointer(Void), Void*, Pointer(Void), Void*)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_filter_func : Proc(Pointer(Void), Void*, Pointer(Void), Void*, Void)? = nil
    end

    # set_font_map: (None)
    # @fontmap: (nullable)
    # Returns: (transfer none)
    private macro _register_set_font_map_vfunc(impl_method_name)
      private def self._vfunc_set_font_map(%this : Pointer(Void), lib_fontmap :  Pointer(Void), ) : Void
        # @fontmap: (nullable) 

# Generator::NullableArrayPlan
fontmap=(lib_fontmap.null? ? nil : Pango::FontMap.new(lib_fontmap, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
fontmap=Pango::FontMap.new(lib_fontmap, GICrystal::Transfer::None) unless lib_fontmap.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(fontmap)
        
        %retval
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_font_map(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_font_map: (None)
    # @fontmap: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_font_map_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_font_map(%this : Pointer(Void), lib_fontmap :  Pointer(Void), ) : Void
# @fontmap: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_fontmap)
      end

      def self._install_iface_Gtk__FontChooser(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_font_map = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_font_map(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_font_map : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    struct FontActivatedSignal < GObject::Signal
      def name : String
        @detail ? "font-activated::#{@detail}" : "font-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_fontname : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          fontname = ::String.new(lib_fontname)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(fontname)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::FontChooser, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_fontname : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractFontChooser.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          fontname = ::String.new(lib_fontname)
          ::Box(Proc(Gtk::FontChooser, ::String, Nil)).unbox(_lib_box).call(_sender, fontname)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(fontname : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "font-activated", fontname)
      end
    end

    def font_activated_signal
      FontActivatedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractFontChooser.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractFontChooser < GObject::Object
    include FontChooser

    GICrystal.declare_new_method(Gtk::AbstractFontChooser, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_font_chooser_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractFontChooser.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
