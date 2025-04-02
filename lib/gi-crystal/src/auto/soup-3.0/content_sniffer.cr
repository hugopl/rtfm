require "../g_object-2.0/object"
require "./session_feature"

module Soup
  @[GICrystal::GeneratedWrapper]
  class ContentSniffer < GObject::Object
    include SessionFeature

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ContentSniffer, g_object_get_qdata)

    # Initialize a new `ContentSniffer`.
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
      @@g_type ||= LibSoup.soup_content_sniffer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::ContentSniffer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # soup_content_sniffer_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_content_sniffer_new

      # Return value handling
      Soup::ContentSniffer.new(_retval, GICrystal::Transfer::Full)
    end

    def sniff(msg : Soup::Message, buffer : GLib::Bytes, params : Pointer(Void)?) : ::String
      # soup_content_sniffer_sniff: (Method)
      # @msg:
      # @buffer:
      # @params: (out) (transfer full) (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      params = if params.nil?
                 Pointer(Void).null
               else
                 params.to_unsafe
               end

      # C call
      _retval = LibSoup.soup_content_sniffer_sniff(to_unsafe, msg, buffer, params)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def_equals_and_hash @pointer
  end
end
