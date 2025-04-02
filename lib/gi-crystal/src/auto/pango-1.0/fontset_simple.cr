require "./fontset"

module Pango
  @[GICrystal::GeneratedWrapper]
  class FontsetSimple < Fontset
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibPango::FontsetSimpleClass), class_init,
        sizeof(LibPango::FontsetSimple), instance_init, 0)
    end

    GICrystal.declare_new_method(FontsetSimple, g_object_get_qdata)

    # Initialize a new `FontsetSimple`.
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
      @@g_type ||= LibPango.pango_fontset_simple_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::FontsetSimple.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(language : Pango::Language) : self
      # pango_fontset_simple_new: (Constructor)
      # @language:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_fontset_simple_new(language)

      # Return value handling
      Pango::FontsetSimple.new(_retval, GICrystal::Transfer::Full)
    end

    def append(font : Pango::Font) : Nil
      # pango_fontset_simple_append: (Method)
      # @font: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(font)

      # C call
      LibPango.pango_fontset_simple_append(to_unsafe, font)

      # Return value handling
    end

    def size : Int32
      # pango_fontset_simple_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_fontset_simple_size(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
