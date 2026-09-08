require "./pixbuf_animation"

module GdkPixbuf
  @[GICrystal::GeneratedWrapper]
  class PixbufSimpleAnim < PixbufAnimation
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdkPixbuf::PixbufSimpleAnimClass), class_init,
        sizeof(LibGdkPixbuf::PixbufSimpleAnim), instance_init, 0)
    end

    GICrystal.declare_new_method(PixbufSimpleAnim, g_object_get_qdata)

    # Initialize a new `PixbufSimpleAnim`.
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

    def initialize(*, loop : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !loop.nil?
        (_names.to_unsafe + _n).value = "loop".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, loop)
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
      @@g_type ||= LibGdkPixbuf.gdk_pixbuf_simple_anim_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GdkPixbuf::PixbufSimpleAnim.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def loop=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "loop", unsafe_value, Pointer(Void).null)
      value
    end

    def loop? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "loop", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    @[Deprecated]
    def self.new(width : Int32, height : Int32, rate : Float32) : self
      # gdk_pixbuf_simple_anim_new: (Constructor)
      # @width:
      # @height:
      # @rate:
      # Returns: (transfer full)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_simple_anim_new(width, height, rate)

      # Return value handling
      GdkPixbuf::PixbufSimpleAnim.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def add_frame(pixbuf : GdkPixbuf::Pixbuf) : Nil
      # gdk_pixbuf_simple_anim_add_frame: (Method)
      # @pixbuf:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_simple_anim_add_frame(to_unsafe, pixbuf)

      # Return value handling
    end

    @[Deprecated]
    def loop : Bool
      # gdk_pixbuf_simple_anim_get_loop: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_simple_anim_get_loop(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def loop=(loop : Bool) : Nil
      # gdk_pixbuf_simple_anim_set_loop: (Method | Setter)
      # @loop:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_simple_anim_set_loop(to_unsafe, loop)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
