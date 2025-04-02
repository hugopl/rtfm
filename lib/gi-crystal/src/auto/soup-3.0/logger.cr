require "../g_object-2.0/object"
require "./session_feature"

module Soup
  @[GICrystal::GeneratedWrapper]
  class Logger < GObject::Object
    include SessionFeature

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Logger, g_object_get_qdata)

    # Initialize a new `Logger`.
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

    def initialize(*, level : Soup::LoggerLogLevel? = nil, max_body_size : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !level.nil?
        (_names.to_unsafe + _n).value = "level".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, level)
        _n += 1
      end
      if !max_body_size.nil?
        (_names.to_unsafe + _n).value = "max-body-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_body_size)
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
      @@g_type ||= LibSoup.soup_logger_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::Logger.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def level=(value : Soup::LoggerLogLevel) : Soup::LoggerLogLevel
      unsafe_value = value

      LibGObject.g_object_set(self, "level", unsafe_value, Pointer(Void).null)
      value
    end

    def level : Soup::LoggerLogLevel
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "level", pointerof(value), Pointer(Void).null)
      Soup::LoggerLogLevel.new(value)
    end

    def max_body_size=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-body-size", unsafe_value, Pointer(Void).null)
      value
    end

    def max_body_size : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-body-size", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(level : Soup::LoggerLogLevel) : self
      # soup_logger_new: (Constructor)
      # @level:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_logger_new(level)

      # Return value handling
      Soup::Logger.new(_retval, GICrystal::Transfer::Full)
    end

    def max_body_size : Int32
      # soup_logger_get_max_body_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_logger_get_max_body_size(to_unsafe)

      # Return value handling
      _retval
    end

    def max_body_size=(max_body_size : Int32) : Nil
      # soup_logger_set_max_body_size: (Method | Setter)
      # @max_body_size:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_logger_set_max_body_size(to_unsafe, max_body_size)

      # Return value handling
    end

    def printer=(printer : Soup::LoggerPrinter) : Nil
      # soup_logger_set_printer: (Method)
      # @printer:
      # @printer_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if printer
        _box = ::Box.box(printer)
        printer = ->(lib_logger : Pointer(Void), lib_level : UInt32, lib_direction : Int8, lib_data : Pointer(LibC::Char), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          logger = Soup::Logger.new(lib_logger, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          level = Soup::LoggerLogLevel.new(lib_level)
          # NoStrategy
          direction = lib_direction
          # Generator::BuiltInTypeArgPlan
          data = ::String.new(lib_data)
          ::Box(Proc(Soup::Logger, Soup::LoggerLogLevel, Int8, ::String, Nil)).unbox(lib_user_data).call(logger, level, direction, data)
        }.pointer
        printer_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        printer = printer_data = destroy = Pointer(Void).null
      end

      # C call
      LibSoup.soup_logger_set_printer(to_unsafe, printer, printer_data, destroy)

      # Return value handling
    end

    def request_filter=(request_filter : Soup::LoggerFilter) : Nil
      # soup_logger_set_request_filter: (Method)
      # @request_filter:
      # @filter_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if request_filter
        _box = ::Box.box(request_filter)
        request_filter = ->(lib_logger : Pointer(Void), lib_msg : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          logger = Soup::Logger.new(lib_logger, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::Message.new(lib_msg, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Logger, Soup::Message, Soup::LoggerLogLevel)).unbox(lib_user_data).call(logger, msg)
        }.pointer
        filter_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        request_filter = filter_data = destroy = Pointer(Void).null
      end

      # C call
      LibSoup.soup_logger_set_request_filter(to_unsafe, request_filter, filter_data, destroy)

      # Return value handling
    end

    def response_filter=(response_filter : Soup::LoggerFilter) : Nil
      # soup_logger_set_response_filter: (Method)
      # @response_filter:
      # @filter_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if response_filter
        _box = ::Box.box(response_filter)
        response_filter = ->(lib_logger : Pointer(Void), lib_msg : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          logger = Soup::Logger.new(lib_logger, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::Message.new(lib_msg, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Logger, Soup::Message, Soup::LoggerLogLevel)).unbox(lib_user_data).call(logger, msg)
        }.pointer
        filter_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        response_filter = filter_data = destroy = Pointer(Void).null
      end

      # C call
      LibSoup.soup_logger_set_response_filter(to_unsafe, response_filter, filter_data, destroy)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
