module Gtk
  struct BitsetIter
    @data : LibGtk::BitsetIter

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::BitsetIter)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(private_data : Enumerable(Pointer(Void))? = nil)
      @data = LibGtk::BitsetIter.new
      @data.private_data = private_data unless private_data.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::BitsetIter)).zero?
    end

    delegate :private_data, to: @data
    delegate :private_data=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_bitset_iter_get_type
    end

    def value : UInt32
      # gtk_bitset_iter_get_value: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_iter_get_value(to_unsafe)

      # Return value handling
      _retval
    end

    def is_valid : Bool
      # gtk_bitset_iter_is_valid: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_bitset_iter_is_valid(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def next : Bool
      # gtk_bitset_iter_next: (Method)
      # @value: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      value = Pointer(UInt32).null
      # C call
      _retval = LibGtk.gtk_bitset_iter_next(to_unsafe, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def previous : Bool
      # gtk_bitset_iter_previous: (Method)
      # @value: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      value = Pointer(UInt32).null
      # C call
      _retval = LibGtk.gtk_bitset_iter_previous(to_unsafe, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.init_at(set : Gtk::Bitset, target : UInt32) : Gtk::BitsetIter
      # gtk_bitset_iter_init_at: (None)
      # @iter: (out) (caller-allocates)
      # @set:
      # @target:
      # @value: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::BitsetIter.new # Generator::OutArgUsedInReturnPlan
      value = Pointer(UInt32).null
      # C call
      _retval = LibGtk.gtk_bitset_iter_init_at(iter, set, target, value)

      # Return value handling
      iter
    end

    def self.init_first(set : Gtk::Bitset) : Gtk::BitsetIter
      # gtk_bitset_iter_init_first: (None)
      # @iter: (out) (caller-allocates)
      # @set:
      # @value: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::BitsetIter.new # Generator::OutArgUsedInReturnPlan
      value = Pointer(UInt32).null
      # C call
      _retval = LibGtk.gtk_bitset_iter_init_first(iter, set, value)

      # Return value handling
      iter
    end

    def self.init_last(set : Gtk::Bitset) : Gtk::BitsetIter
      # gtk_bitset_iter_init_last: (None)
      # @iter: (out) (caller-allocates)
      # @set:
      # @value: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::BitsetIter.new # Generator::OutArgUsedInReturnPlan
      value = Pointer(UInt32).null
      # C call
      _retval = LibGtk.gtk_bitset_iter_init_last(iter, set, value)

      # Return value handling
      iter
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
