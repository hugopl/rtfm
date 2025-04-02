require "./im_context"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class IMMulticontext < IMContext
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::IMMulticontextClass), class_init,
        sizeof(LibGtk::IMMulticontext), instance_init, 0)
    end

    GICrystal.declare_new_method(IMMulticontext, g_object_get_qdata)

    # Initialize a new `IMMulticontext`.
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

    def initialize(*, input_hints : Gtk::InputHints? = nil, input_purpose : Gtk::InputPurpose? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !input_hints.nil?
        (_names.to_unsafe + _n).value = "input-hints".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_hints)
        _n += 1
      end
      if !input_purpose.nil?
        (_names.to_unsafe + _n).value = "input-purpose".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_purpose)
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
      @@g_type ||= LibGtk.gtk_im_multicontext_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::IMMulticontext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_im_multicontext_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_im_multicontext_new

      # Return value handling
      Gtk::IMMulticontext.new(_retval, GICrystal::Transfer::Full)
    end

    def context_id : ::String
      # gtk_im_multicontext_get_context_id: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_im_multicontext_get_context_id(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def context_id=(context_id : ::String?) : Nil
      # gtk_im_multicontext_set_context_id: (Method)
      # @context_id: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      context_id = if context_id.nil?
                     Pointer(LibC::Char).null
                   else
                     context_id.to_unsafe
                   end

      # C call
      LibGtk.gtk_im_multicontext_set_context_id(to_unsafe, context_id)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
