module GdkPixbuf
  class PixbufModule
    @data : LibGdkPixbuf::PixbufModule

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGdkPixbuf::PixbufModule)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(load : GdkPixbuf::PixbufModuleLoadFunc? = nil, load_xpm_data : GdkPixbuf::PixbufModuleLoadXpmDataFunc? = nil, stop_load : GdkPixbuf::PixbufModuleStopLoadFunc? = nil, load_increment : GdkPixbuf::PixbufModuleIncrementLoadFunc? = nil, load_animation : GdkPixbuf::PixbufModuleLoadAnimationFunc? = nil, save : GdkPixbuf::PixbufModuleSaveFunc? = nil, is_save_option_supported : GdkPixbuf::PixbufModuleSaveOptionSupportedFunc? = nil)
      _instance = allocate
      _instance.load = load unless load.nil?
      _instance.load_xpm_data = load_xpm_data unless load_xpm_data.nil?
      _instance.stop_load = stop_load unless stop_load.nil?
      _instance.load_increment = load_increment unless load_increment.nil?
      _instance.load_animation = load_animation unless load_animation.nil?
      _instance.save = save unless save.nil?
      _instance.is_save_option_supported = is_save_option_supported unless is_save_option_supported.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule)).zero?
    end

    def module_name!
      self.module_name.not_nil!
    end

    def module_name : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.module_name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def module_path!
      self.module_path.not_nil!
    end

    def module_path : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.module_path
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def module!
      self.module.not_nil!
    end

    def module : GModule::Module?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value._module
      return if value.null?
      value = value.as(Pointer(Void))
      GModule::Module.new(value, GICrystal::Transfer::None)
    end

    def info!
      self.info.not_nil!
    end

    def info : GdkPixbuf::PixbufFormat?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.info
      return if value.null?
      value = value.as(Pointer(Void))
      GdkPixbuf::PixbufFormat.new(value, GICrystal::Transfer::None)
    end

    def load : GdkPixbuf::PixbufModuleLoadFunc
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.load
      GdkPixbuf::PixbufModuleLoadFunc.new(value, GICrystal::Transfer::None)
    end

    def load=(value : GdkPixbuf::PixbufModuleLoadFunc)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule))
      value
    end

    def load_xpm_data : GdkPixbuf::PixbufModuleLoadXpmDataFunc
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.load_xpm_data
      GdkPixbuf::PixbufModuleLoadXpmDataFunc.new(value, GICrystal::Transfer::None)
    end

    def load_xpm_data=(value : GdkPixbuf::PixbufModuleLoadXpmDataFunc)
      _var = (to_unsafe + 40).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule))
      value
    end

    def begin_load!
      self.begin_load.not_nil!
    end

    def begin_load : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.begin_load
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def stop_load : GdkPixbuf::PixbufModuleStopLoadFunc
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.stop_load
      GdkPixbuf::PixbufModuleStopLoadFunc.new(value, GICrystal::Transfer::None)
    end

    def stop_load=(value : GdkPixbuf::PixbufModuleStopLoadFunc)
      _var = (to_unsafe + 56).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule))
      value
    end

    def load_increment : GdkPixbuf::PixbufModuleIncrementLoadFunc
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.load_increment
      GdkPixbuf::PixbufModuleIncrementLoadFunc.new(value, GICrystal::Transfer::None)
    end

    def load_increment=(value : GdkPixbuf::PixbufModuleIncrementLoadFunc)
      _var = (to_unsafe + 64).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule))
      value
    end

    def load_animation : GdkPixbuf::PixbufModuleLoadAnimationFunc
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.load_animation
      GdkPixbuf::PixbufModuleLoadAnimationFunc.new(value, GICrystal::Transfer::None)
    end

    def load_animation=(value : GdkPixbuf::PixbufModuleLoadAnimationFunc)
      _var = (to_unsafe + 72).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule))
      value
    end

    def save : GdkPixbuf::PixbufModuleSaveFunc
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.save
      GdkPixbuf::PixbufModuleSaveFunc.new(value, GICrystal::Transfer::None)
    end

    def save=(value : GdkPixbuf::PixbufModuleSaveFunc)
      _var = (to_unsafe + 80).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule))
      value
    end

    def save_to_callback!
      self.save_to_callback.not_nil!
    end

    def save_to_callback : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.save_to_callback
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def is_save_option_supported : GdkPixbuf::PixbufModuleSaveOptionSupportedFunc
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value.is_save_option_supported
      GdkPixbuf::PixbufModuleSaveOptionSupportedFunc.new(value, GICrystal::Transfer::None)
    end

    def is_save_option_supported=(value : GdkPixbuf::PixbufModuleSaveOptionSupportedFunc)
      _var = (to_unsafe + 96).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGdkPixbuf::PixbufModule))
      value
    end

    def _reserved1!
      self._reserved1.not_nil!
    end

    def _reserved1 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value._reserved1
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _reserved2!
      self._reserved2.not_nil!
    end

    def _reserved2 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value._reserved2
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _reserved3!
      self._reserved3.not_nil!
    end

    def _reserved3 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value._reserved3
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _reserved4!
      self._reserved4.not_nil!
    end

    def _reserved4 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModule)).value._reserved4
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
