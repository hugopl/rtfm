require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Tooltip < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Tooltip, g_object_get_qdata)

    # Initialize a new `Tooltip`.
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
      @@g_type ||= LibGtk.gtk_tooltip_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Tooltip.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def custom=(custom_widget : Gtk::Widget?) : Nil
      # gtk_tooltip_set_custom: (Method)
      # @custom_widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      custom_widget = if custom_widget.nil?
                        Pointer(Void).null
                      else
                        custom_widget.to_unsafe
                      end

      # C call
      LibGtk.gtk_tooltip_set_custom(to_unsafe, custom_widget)

      # Return value handling
    end

    def icon=(paintable : Gdk::Paintable?) : Nil
      # gtk_tooltip_set_icon: (Method)
      # @paintable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      LibGtk.gtk_tooltip_set_icon(to_unsafe, paintable)

      # Return value handling
    end

    def icon_from_gicon=(gicon : Gio::Icon?) : Nil
      # gtk_tooltip_set_icon_from_gicon: (Method)
      # @gicon: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      gicon = if gicon.nil?
                Pointer(Void).null
              else
                gicon.to_unsafe
              end

      # C call
      LibGtk.gtk_tooltip_set_icon_from_gicon(to_unsafe, gicon)

      # Return value handling
    end

    def icon_from_icon_name=(icon_name : ::String?) : Nil
      # gtk_tooltip_set_icon_from_icon_name: (Method)
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      LibGtk.gtk_tooltip_set_icon_from_icon_name(to_unsafe, icon_name)

      # Return value handling
    end

    def markup=(markup : ::String?) : Nil
      # gtk_tooltip_set_markup: (Method)
      # @markup: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      markup = if markup.nil?
                 Pointer(LibC::Char).null
               else
                 markup.to_unsafe
               end

      # C call
      LibGtk.gtk_tooltip_set_markup(to_unsafe, markup)

      # Return value handling
    end

    def text=(text : ::String?) : Nil
      # gtk_tooltip_set_text: (Method)
      # @text: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      LibGtk.gtk_tooltip_set_text(to_unsafe, text)

      # Return value handling
    end

    def tip_area=(rect : Gdk::Rectangle) : Nil
      # gtk_tooltip_set_tip_area: (Method)
      # @rect:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tooltip_set_tip_area(to_unsafe, rect)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
