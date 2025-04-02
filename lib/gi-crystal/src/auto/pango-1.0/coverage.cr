require "../g_object-2.0/object"

module Pango
  @[GICrystal::GeneratedWrapper]
  class Coverage < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Coverage, g_object_get_qdata)

    # Initialize a new `Coverage`.
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
      @@g_type ||= LibPango.pango_coverage_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Pango::Coverage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # pango_coverage_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_coverage_new

      # Return value handling
      Pango::Coverage.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.from_bytes(bytes : ::Bytes) : Pango::Coverage?
      # pango_coverage_from_bytes: (None)
      # @bytes: (array length=n_bytes element-type UInt8)
      # @n_bytes:
      # Returns: (transfer full) (nullable)

      # Generator::ArrayLengthArgPlan
      n_bytes = bytes.size
      # Generator::ArrayArgPlan
      bytes = bytes.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibPango.pango_coverage_from_bytes(bytes, n_bytes)

      # Return value handling
      Pango::Coverage.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.from_bytes(*bytes : UInt8)
      self.from_bytes(bytes)
    end

    def copy : Pango::Coverage
      # pango_coverage_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_coverage_copy(to_unsafe)

      # Return value handling
      Pango::Coverage.new(_retval, GICrystal::Transfer::Full)
    end

    def get(index_ : Int32) : Pango::CoverageLevel
      # pango_coverage_get: (Method)
      # @index_:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_coverage_get(to_unsafe, index_)

      # Return value handling
      Pango::CoverageLevel.new(_retval)
    end

    @[Deprecated]
    def max(other : Pango::Coverage) : Nil
      # pango_coverage_max: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      LibPango.pango_coverage_max(to_unsafe, other)

      # Return value handling
    end

    @[Deprecated]
    def ref : Pango::Coverage
      # pango_coverage_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_coverage_ref(to_unsafe)

      # Return value handling
      Pango::Coverage.new(_retval, GICrystal::Transfer::Full)
    end

    def set(index_ : Int32, level : Pango::CoverageLevel) : Nil
      # pango_coverage_set: (Method)
      # @index_:
      # @level:
      # Returns: (transfer none)

      # C call
      LibPango.pango_coverage_set(to_unsafe, index_, level)

      # Return value handling
    end

    @[Deprecated]
    def to_bytes(bytes : ::Bytes) : Nil
      # pango_coverage_to_bytes: (Method)
      # @bytes: (out) (transfer full) (array length=n_bytes element-type UInt8)
      # @n_bytes: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_bytes = bytes.size
      # Generator::ArrayArgPlan
      bytes = bytes.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      LibPango.pango_coverage_to_bytes(to_unsafe, bytes, n_bytes)

      # Return value handling
    end

    def to_bytes(*bytes : UInt8)
      to_bytes(bytes)
    end

    @[Deprecated]
    def unref : Nil
      # pango_coverage_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_coverage_unref(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
