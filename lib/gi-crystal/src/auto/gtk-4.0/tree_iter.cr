module Gtk
  class TreeIter
    @data : LibGtk::TreeIter

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::TreeIter)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(stamp : Int32? = nil)
      _instance = allocate
      _instance.stamp = stamp unless stamp.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::TreeIter)).zero?
    end

    def stamp : Int32
      value = to_unsafe.as(Pointer(LibGtk::TreeIter)).value.stamp
      value
    end

    def stamp=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def user_data!
      self.user_data.not_nil!
    end

    def user_data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TreeIter)).value.user_data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def user_data2!
      self.user_data2.not_nil!
    end

    def user_data2 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TreeIter)).value.user_data2
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def user_data3!
      self.user_data3.not_nil!
    end

    def user_data3 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::TreeIter)).value.user_data3
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_tree_iter_get_type
    end

    @[Deprecated]
    def copy : Gtk::TreeIter
      # gtk_tree_iter_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_tree_iter_copy(to_unsafe)

      # Return value handling
      Gtk::TreeIter.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def free : Nil
      # gtk_tree_iter_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_iter_free(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
