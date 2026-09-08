require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FontDialog < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FontDialogClass), class_init,
        sizeof(LibGtk::FontDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(FontDialog, g_object_get_qdata)

    # Initialize a new `FontDialog`.
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

    def initialize(*, filter : Gtk::Filter? = nil, font_map : Pango::FontMap? = nil, language : Pango::Language? = nil, modal : Bool? = nil, title : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !filter.nil?
        (_names.to_unsafe + _n).value = "filter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filter)
        _n += 1
      end
      if !font_map.nil?
        (_names.to_unsafe + _n).value = "font-map".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, font_map)
        _n += 1
      end
      if !language.nil?
        (_names.to_unsafe + _n).value = "language".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, language)
        _n += 1
      end
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
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
      @@g_type ||= LibGtk.gtk_font_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FontDialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def filter=(value : Gtk::Filter?) : Gtk::Filter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "filter", unsafe_value, Pointer(Void).null)
      value
    end

    def filter : Gtk::Filter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filter", pointerof(value), Pointer(Void).null)
      Gtk::Filter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def font_map=(value : Pango::FontMap?) : Pango::FontMap?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "font-map", unsafe_value, Pointer(Void).null)
      value
    end

    def font_map : Pango::FontMap?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "font-map", pointerof(value), Pointer(Void).null)
      Pango::FontMap.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def language=(value : Pango::Language?) : Pango::Language?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "language", unsafe_value, Pointer(Void).null)
      value
    end

    def language : Pango::Language?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "language", pointerof(value), Pointer(Void).null)
      Pango::Language.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def modal=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "modal", unsafe_value, Pointer(Void).null)
      value
    end

    def modal? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "modal", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def title=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "title", unsafe_value, Pointer(Void).null)
      value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#title` property to nil.
    def title=(value : Nil) : Nil
      LibGObject.g_object_set(self, "title", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # gtk_font_dialog_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_font_dialog_new

      # Return value handling
      Gtk::FontDialog.new(_retval, GICrystal::Transfer::Full)
    end

    def choose_face(parent : Gtk::Window?, initial_value : Pango::FontFace?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_font_dialog_choose_face: (Method)
      # @parent: (nullable)
      # @initial_value: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      initial_value = if initial_value.nil?
                        Pointer(Void).null
                      else
                        initial_value.to_unsafe
                      end
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
      LibGtk.gtk_font_dialog_choose_face(to_unsafe, parent, initial_value, cancellable, callback, user_data)

      # Return value handling
    end

    def choose_face_finish(result : Gio::AsyncResult) : Pango::FontFace
      # gtk_font_dialog_choose_face_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_font_dialog_choose_face_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Pango::FontFace.new(_retval, GICrystal::Transfer::Full)
    end

    def choose_family(parent : Gtk::Window?, initial_value : Pango::FontFamily?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_font_dialog_choose_family: (Method)
      # @parent: (nullable)
      # @initial_value: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      initial_value = if initial_value.nil?
                        Pointer(Void).null
                      else
                        initial_value.to_unsafe
                      end
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
      LibGtk.gtk_font_dialog_choose_family(to_unsafe, parent, initial_value, cancellable, callback, user_data)

      # Return value handling
    end

    def choose_family_finish(result : Gio::AsyncResult) : Pango::FontFamily
      # gtk_font_dialog_choose_family_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_font_dialog_choose_family_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Pango::FontFamily.new(_retval, GICrystal::Transfer::Full)
    end

    def choose_font(parent : Gtk::Window?, initial_value : Pango::FontDescription?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_font_dialog_choose_font: (Method)
      # @parent: (nullable)
      # @initial_value: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      initial_value = if initial_value.nil?
                        Pointer(Void).null
                      else
                        initial_value.to_unsafe
                      end
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
      LibGtk.gtk_font_dialog_choose_font(to_unsafe, parent, initial_value, cancellable, callback, user_data)

      # Return value handling
    end

    def choose_font_and_features(parent : Gtk::Window?, initial_value : Pango::FontDescription?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gtk_font_dialog_choose_font_and_features: (Method)
      # @parent: (nullable)
      # @initial_value: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      initial_value = if initial_value.nil?
                        Pointer(Void).null
                      else
                        initial_value.to_unsafe
                      end
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
      LibGtk.gtk_font_dialog_choose_font_and_features(to_unsafe, parent, initial_value, cancellable, callback, user_data)

      # Return value handling
    end

    def choose_font_and_features_finish(result : Gio::AsyncResult, font_desc : Pango::FontDescription, font_features : ::String, language : Pango::Language) : Bool
      # gtk_font_dialog_choose_font_and_features_finish: (Method | Throws)
      # @result:
      # @font_desc: (out) (transfer full)
      # @font_features: (out) (transfer full)
      # @language: (out) (transfer full)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_font_dialog_choose_font_and_features_finish(to_unsafe, result, font_desc, font_features, language, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def choose_font_finish(result : Gio::AsyncResult) : Pango::FontDescription
      # gtk_font_dialog_choose_font_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGtk.gtk_font_dialog_choose_font_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gtk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::Full)
    end

    def filter : Gtk::Filter?
      # gtk_font_dialog_get_filter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_font_dialog_get_filter(to_unsafe)

      # Return value handling
      Gtk::Filter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def font_map : Pango::FontMap?
      # gtk_font_dialog_get_font_map: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_font_dialog_get_font_map(to_unsafe)

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def language : Pango::Language?
      # gtk_font_dialog_get_language: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_font_dialog_get_language(to_unsafe)

      # Return value handling
      Pango::Language.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def modal : Bool
      # gtk_font_dialog_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_dialog_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def title : ::String
      # gtk_font_dialog_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_dialog_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def filter=(filter : Gtk::Filter?) : Nil
      # gtk_font_dialog_set_filter: (Method | Setter)
      # @filter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filter = if filter.nil?
                 Pointer(Void).null
               else
                 filter.to_unsafe
               end

      # C call
      LibGtk.gtk_font_dialog_set_filter(to_unsafe, filter)

      # Return value handling
    end

    def font_map=(fontmap : Pango::FontMap?) : Nil
      # gtk_font_dialog_set_font_map: (Method | Setter)
      # @fontmap: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      fontmap = if fontmap.nil?
                  Pointer(Void).null
                else
                  fontmap.to_unsafe
                end

      # C call
      LibGtk.gtk_font_dialog_set_font_map(to_unsafe, fontmap)

      # Return value handling
    end

    def language=(language : Pango::Language) : Nil
      # gtk_font_dialog_set_language: (Method | Setter)
      # @language:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_set_language(to_unsafe, language)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # gtk_font_dialog_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # gtk_font_dialog_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_set_title(to_unsafe, title)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
