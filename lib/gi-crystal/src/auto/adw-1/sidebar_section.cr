require "../g_object-2.0/object"
require "../gtk-4.0/buildable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class SidebarSection < GObject::Object
    include Gtk::Buildable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SidebarSection, g_object_get_qdata)

    # Initialize a new `SidebarSection`.
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

    def initialize(*, items : Gio::ListModel? = nil, menu_model : Gio::MenuModel? = nil, sidebar : Adw::Sidebar? = nil, title : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !items.nil?
        (_names.to_unsafe + _n).value = "items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, items)
        _n += 1
      end
      if !menu_model.nil?
        (_names.to_unsafe + _n).value = "menu-model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menu_model)
        _n += 1
      end
      if !sidebar.nil?
        (_names.to_unsafe + _n).value = "sidebar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sidebar)
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
      @@g_type ||= LibAdw.adw_sidebar_section_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::SidebarSection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def items : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "items", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def menu_model=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "menu-model", unsafe_value, Pointer(Void).null)
      value
    end

    def menu_model : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "menu-model", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def sidebar : Adw::Sidebar?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sidebar", pointerof(value), Pointer(Void).null)
      Adw::Sidebar.new(value, GICrystal::Transfer::None) unless value.null?
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
      # adw_sidebar_section_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_sidebar_section_new

      # Return value handling
      Adw::SidebarSection.new(_retval, GICrystal::Transfer::Full)
    end

    def append(item : Adw::SidebarItem) : Nil
      # adw_sidebar_section_append: (Method)
      # @item: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(item)

      # C call
      LibAdw.adw_sidebar_section_append(to_unsafe, item)

      # Return value handling
    end

    def bind_model(model : Gio::ListModel?, create_item_func : Adw::SidebarSectionCreateItemFunc?) : Nil
      # adw_sidebar_section_bind_model: (Method)
      # @model: (nullable)
      # @create_item_func: (nullable)
      # @user_data: (nullable)
      # @user_data_free_func:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end
      # Generator::CallbackArgPlan
      if create_item_func
        _box = ::Box.box(create_item_func)
        create_item_func = ->(lib_item : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          item = GObject::Object.new(lib_item, GICrystal::Transfer::None)
          _retval = ::Box(Proc(GObject::Object, Adw::SidebarItem)).unbox(lib_user_data).call(item)
          LibGObject.g_object_ref(_retval) if _retval
          _retval.to_unsafe
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_data_free_func = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        create_item_func = user_data = user_data_free_func = Pointer(Void).null
      end

      # C call
      LibAdw.adw_sidebar_section_bind_model(to_unsafe, model, create_item_func, user_data, user_data_free_func)

      # Return value handling
    end

    def item(index : UInt32) : Adw::SidebarItem?
      # adw_sidebar_section_get_item: (Method)
      # @index:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_section_get_item(to_unsafe, index)

      # Return value handling
      Adw::SidebarItem.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def items : Gio::ListModel
      # adw_sidebar_section_get_items: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_sidebar_section_get_items(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def menu_model : Gio::MenuModel?
      # adw_sidebar_section_get_menu_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_section_get_menu_model(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def sidebar : Adw::Sidebar?
      # adw_sidebar_section_get_sidebar: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_section_get_sidebar(to_unsafe)

      # Return value handling
      Adw::Sidebar.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def title : ::String?
      # adw_sidebar_section_get_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_section_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def insert(item : Adw::SidebarItem, position : Int32) : Nil
      # adw_sidebar_section_insert: (Method)
      # @item: (transfer full)
      # @position:
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(item)

      # C call
      LibAdw.adw_sidebar_section_insert(to_unsafe, item, position)

      # Return value handling
    end

    def prepend(item : Adw::SidebarItem) : Nil
      # adw_sidebar_section_prepend: (Method)
      # @item: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(item)

      # C call
      LibAdw.adw_sidebar_section_prepend(to_unsafe, item)

      # Return value handling
    end

    def remove(item : Adw::SidebarItem) : Nil
      # adw_sidebar_section_remove: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_section_remove(to_unsafe, item)

      # Return value handling
    end

    def remove_all : Nil
      # adw_sidebar_section_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_section_remove_all(to_unsafe)

      # Return value handling
    end

    def menu_model=(menu_model : Gio::MenuModel?) : Nil
      # adw_sidebar_section_set_menu_model: (Method | Setter)
      # @menu_model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      menu_model = if menu_model.nil?
                     Pointer(Void).null
                   else
                     menu_model.to_unsafe
                   end

      # C call
      LibAdw.adw_sidebar_section_set_menu_model(to_unsafe, menu_model)

      # Return value handling
    end

    def title=(title : ::String?) : Nil
      # adw_sidebar_section_set_title: (Method | Setter)
      # @title: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end

      # C call
      LibAdw.adw_sidebar_section_set_title(to_unsafe, title)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
