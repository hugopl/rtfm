module Gtk
  struct Requisition
    @data : LibGtk::Requisition

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::Requisition)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(width : Int32? = nil, height : Int32? = nil)
      @data = LibGtk::Requisition.new
      @data.width = width unless width.nil?
      @data.height = height unless height.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::Requisition)).zero?
    end

    delegate :width, to: @data
    delegate :width=, to: @data
    delegate :height, to: @data
    delegate :height=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_requisition_get_type
    end

    def copy : Gtk::Requisition
      # gtk_requisition_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_requisition_copy(to_unsafe)

      # Return value handling
      Gtk::Requisition.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # gtk_requisition_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_requisition_free(to_unsafe)

      # Return value handling
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
