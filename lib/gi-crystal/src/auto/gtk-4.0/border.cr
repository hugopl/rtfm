module Gtk
  struct Border
    @data : LibGtk::Border

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::Border)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(left : Int16? = nil, right : Int16? = nil, top : Int16? = nil, bottom : Int16? = nil)
      @data = LibGtk::Border.new
      @data.left = left unless left.nil?
      @data.right = right unless right.nil?
      @data.top = top unless top.nil?
      @data.bottom = bottom unless bottom.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::Border)).zero?
    end

    delegate :left, to: @data
    delegate :left=, to: @data
    delegate :right, to: @data
    delegate :right=, to: @data
    delegate :top, to: @data
    delegate :top=, to: @data
    delegate :bottom, to: @data
    delegate :bottom=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_border_get_type
    end

    def copy : Gtk::Border
      # gtk_border_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_border_copy(to_unsafe)

      # Return value handling
      Gtk::Border.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # gtk_border_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_border_free(to_unsafe)

      # Return value handling
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
