module Gio
  module File
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::File
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__File(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractFile.g_type
    end

    def self.new_build_filenamev(args : Enumerable(::String)) : Gio::File
      # g_file_new_build_filenamev: (None)
      # @args: (array zero-terminated=1 element-type Filename)
      # Returns: (transfer full)

      # Generator::ArrayArgPlan
      args = args.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGio.g_file_new_build_filenamev(args)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_build_filenamev(*args : ::String)
      self.new_build_filenamev(args)
    end

    def self.new_for_commandline_arg(arg : ::String) : Gio::File
      # g_file_new_for_commandline_arg: (None)
      # @arg:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_new_for_commandline_arg(arg)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_commandline_arg_and_cwd(arg : ::String, cwd : ::String) : Gio::File
      # g_file_new_for_commandline_arg_and_cwd: (None)
      # @arg:
      # @cwd:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_new_for_commandline_arg_and_cwd(arg, cwd)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_path(path : ::String) : Gio::File
      # g_file_new_for_path: (None)
      # @path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_new_for_path(path)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_uri(uri : ::String) : Gio::File
      # g_file_new_for_uri: (None)
      # @uri:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_new_for_uri(uri)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def new_tmp(tmpl : ::String?, iostream : Gio::FileIOStream) : Gio::File
      # g_file_new_tmp: (Throws)
      # @tmpl: (nullable)
      # @iostream: (out) (transfer full)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      tmpl = if tmpl.nil?
               Pointer(LibC::Char).null
             else
               tmpl.to_unsafe
             end
      # Generator::TransferFullArgPlan
      GICrystal.ref(iostream)

      # C call
      _retval = LibGio.g_file_new_tmp(tmpl, iostream, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_tmp_async(tmpl : ::String?, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_new_tmp_async: (None)
      # @tmpl: (nullable)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tmpl = if tmpl.nil?
               Pointer(LibC::Char).null
             else
               tmpl.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_new_tmp_async(tmpl, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def self.new_tmp_dir_async(tmpl : ::String?, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_new_tmp_dir_async: (None)
      # @tmpl: (nullable)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tmpl = if tmpl.nil?
               Pointer(LibC::Char).null
             else
               tmpl.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_new_tmp_dir_async(tmpl, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def new_tmp_dir_finish(result : Gio::AsyncResult) : Gio::File
      # g_file_new_tmp_dir_finish: (Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_new_tmp_dir_finish(result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def new_tmp_finish(result : Gio::AsyncResult, iostream : Gio::FileIOStream) : Gio::File
      # g_file_new_tmp_finish: (Throws)
      # @result:
      # @iostream: (out) (transfer full)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::TransferFullArgPlan
      GICrystal.ref(iostream)

      # C call
      _retval = LibGio.g_file_new_tmp_finish(result, iostream, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.parse_name(parse_name : ::String) : Gio::File
      # g_file_parse_name: (None)
      # @parse_name:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_parse_name(parse_name)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def append_to(flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?) : Gio::FileOutputStream
      # g_file_append_to: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_append_to(to_unsafe, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def append_to_async(flags : Gio::FileCreateFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_append_to_async: (Method)
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_append_to_async(to_unsafe, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def append_to_finish(res : Gio::AsyncResult) : Gio::FileOutputStream
      # g_file_append_to_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_append_to_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def build_attribute_list_for_copy(flags : Gio::FileCopyFlags, cancellable : Gio::Cancellable?) : ::String
      # g_file_build_attribute_list_for_copy: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_build_attribute_list_for_copy(to_unsafe, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def copy(destination : Gio::File, flags : Gio::FileCopyFlags, cancellable : Gio::Cancellable?, progress_callback : Gio::FileProgressCallback?, progress_callback_data : Pointer(Void)?) : Bool
      # g_file_copy: (Method | Throws)
      # @destination:
      # @flags:
      # @cancellable: (nullable)
      # @progress_callback: (nullable)
      # @progress_callback_data: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::NullableArrayPlan
      progress_callback_data = if progress_callback_data.nil?
                                 Pointer(Void).null
                               else
                                 progress_callback_data.to_unsafe
                               end

      # C call
      _retval = LibGio.g_file_copy(to_unsafe, destination, flags, cancellable, progress_callback, progress_callback_data, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def copy_async(destination : Gio::File, flags : Gio::FileCopyFlags, io_priority : Int32, cancellable : Gio::Cancellable?, progress_callback_closure : GObject::Closure?, ready_callback_closure : GObject::Closure) : Nil
      # g_file_copy_async_with_closures: (Method)
      # @destination:
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @progress_callback_closure: (nullable)
      # @ready_callback_closure:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::NullableArrayPlan
      progress_callback_closure = if progress_callback_closure.nil?
                                    Pointer(Void).null
                                  else
                                    progress_callback_closure.to_unsafe
                                  end

      # C call
      LibGio.g_file_copy_async_with_closures(to_unsafe, destination, flags, io_priority, cancellable, progress_callback_closure, ready_callback_closure)

      # Return value handling
    end

    def copy_attributes(destination : Gio::File, flags : Gio::FileCopyFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_copy_attributes: (Method | Throws)
      # @destination:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_copy_attributes(to_unsafe, destination, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def copy_finish(res : Gio::AsyncResult) : Bool
      # g_file_copy_finish: (Method | Throws)
      # @res:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_copy_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def create(flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?) : Gio::FileOutputStream
      # g_file_create: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_create(to_unsafe, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def create_async(flags : Gio::FileCreateFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_create_async: (Method)
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_create_async(to_unsafe, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def create_finish(res : Gio::AsyncResult) : Gio::FileOutputStream
      # g_file_create_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_create_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def create_readwrite(flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?) : Gio::FileIOStream
      # g_file_create_readwrite: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_create_readwrite(to_unsafe, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileIOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def create_readwrite_async(flags : Gio::FileCreateFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_create_readwrite_async: (Method)
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_create_readwrite_async(to_unsafe, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def create_readwrite_finish(res : Gio::AsyncResult) : Gio::FileIOStream
      # g_file_create_readwrite_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_create_readwrite_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileIOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def delete(cancellable : Gio::Cancellable?) : Bool
      # g_file_delete: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_delete(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def delete_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_delete_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_delete_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def delete_finish(result : Gio::AsyncResult) : Bool
      # g_file_delete_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_delete_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def dup : Gio::File
      # g_file_dup: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_dup(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def eject_mountable(flags : Gio::MountUnmountFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_eject_mountable: (Method)
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_eject_mountable(to_unsafe, flags, cancellable, callback, user_data)

      # Return value handling
    end

    @[Deprecated]
    def eject_mountable_finish(result : Gio::AsyncResult) : Bool
      # g_file_eject_mountable_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_eject_mountable_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def eject_mountable_with_operation(flags : Gio::MountUnmountFlags, mount_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_eject_mountable_with_operation: (Method)
      # @flags:
      # @mount_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mount_operation = if mount_operation.nil?
                          Pointer(Void).null
                        else
                          mount_operation.to_unsafe
                        end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_eject_mountable_with_operation(to_unsafe, flags, mount_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def eject_mountable_with_operation_finish(result : Gio::AsyncResult) : Bool
      # g_file_eject_mountable_with_operation_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_eject_mountable_with_operation_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enumerate_children(attributes : ::String, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Gio::FileEnumerator
      # g_file_enumerate_children: (Method | Throws)
      # @attributes:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_enumerate_children(to_unsafe, attributes, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileEnumerator.new(_retval, GICrystal::Transfer::Full)
    end

    def enumerate_children_async(attributes : ::String, flags : Gio::FileQueryInfoFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_enumerate_children_async: (Method)
      # @attributes:
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_enumerate_children_async(to_unsafe, attributes, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def enumerate_children_finish(res : Gio::AsyncResult) : Gio::FileEnumerator
      # g_file_enumerate_children_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_enumerate_children_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileEnumerator.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(file2 : Gio::File) : Bool
      # g_file_equal: (Method)
      # @file2:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_equal(to_unsafe, file2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def find_enclosing_mount(cancellable : Gio::Cancellable?) : Gio::Mount
      # g_file_find_enclosing_mount: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_find_enclosing_mount(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractMount.new(_retval, GICrystal::Transfer::Full)
    end

    def find_enclosing_mount_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_find_enclosing_mount_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_find_enclosing_mount_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def find_enclosing_mount_finish(res : Gio::AsyncResult) : Gio::Mount
      # g_file_find_enclosing_mount_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_find_enclosing_mount_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractMount.new(_retval, GICrystal::Transfer::Full)
    end

    def basename : ::Path?
      # g_file_get_basename: (Method)
      # Returns: (transfer full) (filename) (nullable)

      # C call
      _retval = LibGio.g_file_get_basename(to_unsafe)

      # Return value handling
      ::Path.new(GICrystal.transfer_full(_retval)) unless _retval.null?
    end

    def child(name : ::String) : Gio::File
      # g_file_get_child: (Method)
      # @name:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_get_child(to_unsafe, name)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def child_for_display_name(display_name : ::String) : Gio::File
      # g_file_get_child_for_display_name: (Method | Throws)
      # @display_name:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_get_child_for_display_name(to_unsafe, display_name, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def parent : Gio::File?
      # g_file_get_parent: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_file_get_parent(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def parse_name : ::String
      # g_file_get_parse_name: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_get_parse_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def path : ::Path?
      # g_file_get_path: (Method)
      # Returns: (transfer full) (filename) (nullable)

      # C call
      _retval = LibGio.g_file_get_path(to_unsafe)

      # Return value handling
      ::Path.new(GICrystal.transfer_full(_retval)) unless _retval.null?
    end

    def relative_path(descendant : Gio::File) : ::Path?
      # g_file_get_relative_path: (Method)
      # @descendant:
      # Returns: (transfer full) (filename) (nullable)

      # C call
      _retval = LibGio.g_file_get_relative_path(to_unsafe, descendant)

      # Return value handling
      ::Path.new(GICrystal.transfer_full(_retval)) unless _retval.null?
    end

    def uri : ::String
      # g_file_get_uri: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_get_uri(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def uri_scheme : ::String?
      # g_file_get_uri_scheme: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_file_get_uri_scheme(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def has_parent(parent : Gio::File?) : Bool
      # g_file_has_parent: (Method)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGio.g_file_has_parent(to_unsafe, parent)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_prefix(prefix : Gio::File) : Bool
      # g_file_has_prefix: (Method)
      # @prefix:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_has_prefix(to_unsafe, prefix)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_uri_scheme(uri_scheme : ::String) : Bool
      # g_file_has_uri_scheme: (Method)
      # @uri_scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_has_uri_scheme(to_unsafe, uri_scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hash : UInt32
      # g_file_hash: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_hash(to_unsafe)

      # Return value handling
      _retval
    end

    def is_native : Bool
      # g_file_is_native: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_is_native(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def load_bytes(cancellable : Gio::Cancellable?) : GLib::Bytes
      # g_file_load_bytes: (Method | Throws)
      # @cancellable: (nullable)
      # @etag_out: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::OutArgUsedInReturnPlan
      etag_out = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_file_load_bytes(to_unsafe, cancellable, etag_out, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def load_bytes_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_load_bytes_async: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_load_bytes_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def load_bytes_finish(result : Gio::AsyncResult) : GLib::Bytes
      # g_file_load_bytes_finish: (Method | Throws)
      # @result:
      # @etag_out: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      etag_out = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_file_load_bytes_finish(to_unsafe, result, etag_out, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def load_contents(cancellable : Gio::Cancellable?, contents : ::Bytes) : Bool
      # g_file_load_contents: (Method | Throws)
      # @cancellable: (nullable)
      # @contents: (out) (transfer full) (array length=length element-type UInt8)
      # @length: (out) (transfer full) (optional)
      # @etag_out: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::ArrayLengthArgPlan
      length = contents.size
      # Generator::ArrayArgPlan
      contents = contents.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null # Generator::OutArgUsedInReturnPlan
      etag_out = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_file_load_contents(to_unsafe, cancellable, contents, length, etag_out, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def load_contents_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_load_contents_async: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_load_contents_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def load_contents_finish(res : Gio::AsyncResult, contents : ::Bytes) : Bool
      # g_file_load_contents_finish: (Method | Throws)
      # @res:
      # @contents: (out) (transfer full) (array length=length element-type UInt8)
      # @length: (out) (transfer full) (optional)
      # @etag_out: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      length = contents.size
      # Generator::ArrayArgPlan
      contents = contents.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null # Generator::OutArgUsedInReturnPlan
      etag_out = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_file_load_contents_finish(to_unsafe, res, contents, length, etag_out, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def load_partial_contents_finish(res : Gio::AsyncResult, contents : ::Bytes) : Bool
      # g_file_load_partial_contents_finish: (Method | Throws)
      # @res:
      # @contents: (out) (transfer full) (array length=length element-type UInt8)
      # @length: (out) (transfer full) (optional)
      # @etag_out: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      length = contents.size
      # Generator::ArrayArgPlan
      contents = contents.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null # Generator::OutArgUsedInReturnPlan
      etag_out = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_file_load_partial_contents_finish(to_unsafe, res, contents, length, etag_out, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_directory(cancellable : Gio::Cancellable?) : Bool
      # g_file_make_directory: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_make_directory(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_directory_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_make_directory_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_make_directory_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def make_directory_finish(result : Gio::AsyncResult) : Bool
      # g_file_make_directory_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_make_directory_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_directory_with_parents(cancellable : Gio::Cancellable?) : Bool
      # g_file_make_directory_with_parents: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_make_directory_with_parents(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_symbolic_link(symlink_value : ::String, cancellable : Gio::Cancellable?) : Bool
      # g_file_make_symbolic_link: (Method | Throws)
      # @symlink_value:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_make_symbolic_link(to_unsafe, symlink_value, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_symbolic_link_async(symlink_value : ::String, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_make_symbolic_link_async: (Method)
      # @symlink_value:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_make_symbolic_link_async(to_unsafe, symlink_value, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def make_symbolic_link_finish(result : Gio::AsyncResult) : Bool
      # g_file_make_symbolic_link_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_make_symbolic_link_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def measure_disk_usage(flags : Gio::FileMeasureFlags, cancellable : Gio::Cancellable?, progress_callback : Gio::FileMeasureProgressCallback?, progress_data : Pointer(Void)?) : Bool
      # g_file_measure_disk_usage: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # @progress_callback: (nullable)
      # @progress_data: (nullable)
      # @disk_usage: (out) (transfer full) (optional)
      # @num_dirs: (out) (transfer full) (optional)
      # @num_files: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::NullableArrayPlan
      progress_data = if progress_data.nil?
                        Pointer(Void).null
                      else
                        progress_data.to_unsafe
                      end
      # Generator::OutArgUsedInReturnPlan
      disk_usage = Pointer(UInt64).null # Generator::OutArgUsedInReturnPlan
      num_dirs = Pointer(UInt64).null   # Generator::OutArgUsedInReturnPlan
      num_files = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_file_measure_disk_usage(to_unsafe, flags, cancellable, progress_callback, progress_data, disk_usage, num_dirs, num_files, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def measure_disk_usage_finish(result : Gio::AsyncResult) : Bool
      # g_file_measure_disk_usage_finish: (Method | Throws)
      # @result:
      # @disk_usage: (out) (transfer full) (optional)
      # @num_dirs: (out) (transfer full) (optional)
      # @num_files: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      disk_usage = Pointer(UInt64).null # Generator::OutArgUsedInReturnPlan
      num_dirs = Pointer(UInt64).null   # Generator::OutArgUsedInReturnPlan
      num_files = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_file_measure_disk_usage_finish(to_unsafe, result, disk_usage, num_dirs, num_files, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def monitor(flags : Gio::FileMonitorFlags, cancellable : Gio::Cancellable?) : Gio::FileMonitor
      # g_file_monitor: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_monitor(to_unsafe, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    def monitor_directory(flags : Gio::FileMonitorFlags, cancellable : Gio::Cancellable?) : Gio::FileMonitor
      # g_file_monitor_directory: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_monitor_directory(to_unsafe, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    def monitor_file(flags : Gio::FileMonitorFlags, cancellable : Gio::Cancellable?) : Gio::FileMonitor
      # g_file_monitor_file: (Method | Throws)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_monitor_file(to_unsafe, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    def mount_enclosing_volume(flags : Gio::MountMountFlags, mount_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_mount_enclosing_volume: (Method)
      # @flags:
      # @mount_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mount_operation = if mount_operation.nil?
                          Pointer(Void).null
                        else
                          mount_operation.to_unsafe
                        end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_mount_enclosing_volume(to_unsafe, flags, mount_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def mount_enclosing_volume_finish(result : Gio::AsyncResult) : Bool
      # g_file_mount_enclosing_volume_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_mount_enclosing_volume_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def mount_mountable(flags : Gio::MountMountFlags, mount_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_mount_mountable: (Method)
      # @flags:
      # @mount_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mount_operation = if mount_operation.nil?
                          Pointer(Void).null
                        else
                          mount_operation.to_unsafe
                        end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_mount_mountable(to_unsafe, flags, mount_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def mount_mountable_finish(result : Gio::AsyncResult) : Gio::File
      # g_file_mount_mountable_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_mount_mountable_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def move(destination : Gio::File, flags : Gio::FileCopyFlags, cancellable : Gio::Cancellable?, progress_callback : Gio::FileProgressCallback?, progress_callback_data : Pointer(Void)?) : Bool
      # g_file_move: (Method | Throws)
      # @destination:
      # @flags:
      # @cancellable: (nullable)
      # @progress_callback: (nullable)
      # @progress_callback_data: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::NullableArrayPlan
      progress_callback_data = if progress_callback_data.nil?
                                 Pointer(Void).null
                               else
                                 progress_callback_data.to_unsafe
                               end

      # C call
      _retval = LibGio.g_file_move(to_unsafe, destination, flags, cancellable, progress_callback, progress_callback_data, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def move_async(destination : Gio::File, flags : Gio::FileCopyFlags, io_priority : Int32, cancellable : Gio::Cancellable?, progress_callback_closure : GObject::Closure?, ready_callback_closure : GObject::Closure) : Nil
      # g_file_move_async_with_closures: (Method)
      # @destination:
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @progress_callback_closure: (nullable)
      # @ready_callback_closure:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::NullableArrayPlan
      progress_callback_closure = if progress_callback_closure.nil?
                                    Pointer(Void).null
                                  else
                                    progress_callback_closure.to_unsafe
                                  end

      # C call
      LibGio.g_file_move_async_with_closures(to_unsafe, destination, flags, io_priority, cancellable, progress_callback_closure, ready_callback_closure)

      # Return value handling
    end

    def move_finish(result : Gio::AsyncResult) : Bool
      # g_file_move_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_move_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def open_readwrite(cancellable : Gio::Cancellable?) : Gio::FileIOStream
      # g_file_open_readwrite: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_open_readwrite(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileIOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def open_readwrite_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_open_readwrite_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_open_readwrite_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def open_readwrite_finish(res : Gio::AsyncResult) : Gio::FileIOStream
      # g_file_open_readwrite_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_open_readwrite_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileIOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def peek_path : ::Path?
      # g_file_peek_path: (Method)
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGio.g_file_peek_path(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    def poll_mountable(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_poll_mountable: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_poll_mountable(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def poll_mountable_finish(result : Gio::AsyncResult) : Bool
      # g_file_poll_mountable_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_poll_mountable_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def query_default_handler(cancellable : Gio::Cancellable?) : Gio::AppInfo
      # g_file_query_default_handler: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_query_default_handler(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def query_default_handler_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_query_default_handler_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_query_default_handler_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def query_default_handler_finish(result : Gio::AsyncResult) : Gio::AppInfo
      # g_file_query_default_handler_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_query_default_handler_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def query_exists(cancellable : Gio::Cancellable?) : Bool
      # g_file_query_exists: (Method)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_query_exists(to_unsafe, cancellable)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def query_file_type(flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Gio::FileType
      # g_file_query_file_type: (Method)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_query_file_type(to_unsafe, flags, cancellable)

      # Return value handling
      Gio::FileType.new(_retval)
    end

    def query_filesystem_info(attributes : ::String, cancellable : Gio::Cancellable?) : Gio::FileInfo
      # g_file_query_filesystem_info: (Method | Throws)
      # @attributes:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_query_filesystem_info(to_unsafe, attributes, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def query_filesystem_info_async(attributes : ::String, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_query_filesystem_info_async: (Method)
      # @attributes:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_query_filesystem_info_async(to_unsafe, attributes, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def query_filesystem_info_finish(res : Gio::AsyncResult) : Gio::FileInfo
      # g_file_query_filesystem_info_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_query_filesystem_info_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def query_info(attributes : ::String, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Gio::FileInfo
      # g_file_query_info: (Method | Throws)
      # @attributes:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_query_info(to_unsafe, attributes, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def query_info_async(attributes : ::String, flags : Gio::FileQueryInfoFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_query_info_async: (Method)
      # @attributes:
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_query_info_async(to_unsafe, attributes, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def query_info_finish(res : Gio::AsyncResult) : Gio::FileInfo
      # g_file_query_info_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_query_info_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def query_settable_attributes(cancellable : Gio::Cancellable?) : Gio::FileAttributeInfoList
      # g_file_query_settable_attributes: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_query_settable_attributes(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileAttributeInfoList.new(_retval, GICrystal::Transfer::Full)
    end

    def query_writable_namespaces(cancellable : Gio::Cancellable?) : Gio::FileAttributeInfoList
      # g_file_query_writable_namespaces: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_query_writable_namespaces(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileAttributeInfoList.new(_retval, GICrystal::Transfer::Full)
    end

    def read(cancellable : Gio::Cancellable?) : Gio::FileInputStream
      # g_file_read: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_read(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def read_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_read_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_read_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def read_finish(res : Gio::AsyncResult) : Gio::FileInputStream
      # g_file_read_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_read_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def replace(etag : ::String?, make_backup : Bool, flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?) : Gio::FileOutputStream
      # g_file_replace: (Method | Throws)
      # @etag: (nullable)
      # @make_backup:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      etag = if etag.nil?
               Pointer(LibC::Char).null
             else
               etag.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_replace(to_unsafe, etag, make_backup, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def replace_async(etag : ::String?, make_backup : Bool, flags : Gio::FileCreateFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_replace_async: (Method)
      # @etag: (nullable)
      # @make_backup:
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      etag = if etag.nil?
               Pointer(LibC::Char).null
             else
               etag.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_replace_async(to_unsafe, etag, make_backup, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def replace_contents(contents : ::Bytes, etag : ::String?, make_backup : Bool, flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_replace_contents: (Method | Throws)
      # @contents: (array length=length element-type UInt8)
      # @length:
      # @etag: (nullable)
      # @make_backup:
      # @flags:
      # @new_etag: (out) (transfer full) (nullable) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      length = contents.size
      # Generator::ArrayArgPlan
      contents = contents.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      etag = if etag.nil?
               Pointer(LibC::Char).null
             else
               etag.to_unsafe
             end
      # Generator::OutArgUsedInReturnPlan
      new_etag = Pointer(Pointer(LibC::Char)).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_replace_contents(to_unsafe, contents, length, etag, make_backup, flags, new_etag, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def replace_contents_async(contents : ::Bytes, etag : ::String?, make_backup : Bool, flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_replace_contents_async: (Method)
      # @contents: (array length=length element-type UInt8)
      # @length:
      # @etag: (nullable)
      # @make_backup:
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      length = contents.size
      # Generator::ArrayArgPlan
      contents = contents.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      etag = if etag.nil?
               Pointer(LibC::Char).null
             else
               etag.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_replace_contents_async(to_unsafe, contents, length, etag, make_backup, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def replace_contents_bytes_async(contents : GLib::Bytes, etag : ::String?, make_backup : Bool, flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_replace_contents_bytes_async: (Method)
      # @contents:
      # @etag: (nullable)
      # @make_backup:
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      etag = if etag.nil?
               Pointer(LibC::Char).null
             else
               etag.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_replace_contents_bytes_async(to_unsafe, contents, etag, make_backup, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def replace_contents_finish(res : Gio::AsyncResult) : Bool
      # g_file_replace_contents_finish: (Method | Throws)
      # @res:
      # @new_etag: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      new_etag = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_file_replace_contents_finish(to_unsafe, res, new_etag, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def replace_finish(res : Gio::AsyncResult) : Gio::FileOutputStream
      # g_file_replace_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_replace_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def replace_readwrite(etag : ::String?, make_backup : Bool, flags : Gio::FileCreateFlags, cancellable : Gio::Cancellable?) : Gio::FileIOStream
      # g_file_replace_readwrite: (Method | Throws)
      # @etag: (nullable)
      # @make_backup:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      etag = if etag.nil?
               Pointer(LibC::Char).null
             else
               etag.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_replace_readwrite(to_unsafe, etag, make_backup, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileIOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def replace_readwrite_async(etag : ::String?, make_backup : Bool, flags : Gio::FileCreateFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_replace_readwrite_async: (Method)
      # @etag: (nullable)
      # @make_backup:
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      etag = if etag.nil?
               Pointer(LibC::Char).null
             else
               etag.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_replace_readwrite_async(to_unsafe, etag, make_backup, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def replace_readwrite_finish(res : Gio::AsyncResult) : Gio::FileIOStream
      # g_file_replace_readwrite_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_replace_readwrite_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileIOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def resolve_relative_path(relative_path : ::String) : Gio::File
      # g_file_resolve_relative_path: (Method)
      # @relative_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_resolve_relative_path(to_unsafe, relative_path)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def set_attribute(attribute : ::String, type : Gio::FileAttributeType, value_p : Pointer(Void)?, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attribute: (Method | Throws)
      # @attribute:
      # @type:
      # @value_p: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      value_p = if value_p.nil?
                  Pointer(Void).null
                else
                  value_p.to_unsafe
                end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attribute(to_unsafe, attribute, type, value_p, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attribute_byte_string(attribute : ::String, value : ::String, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attribute_byte_string: (Method | Throws)
      # @attribute:
      # @value:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attribute_byte_string(to_unsafe, attribute, value, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attribute_int32(attribute : ::String, value : Int32, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attribute_int32: (Method | Throws)
      # @attribute:
      # @value:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attribute_int32(to_unsafe, attribute, value, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attribute_int64(attribute : ::String, value : Int64, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attribute_int64: (Method | Throws)
      # @attribute:
      # @value:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attribute_int64(to_unsafe, attribute, value, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attribute_string(attribute : ::String, value : ::String, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attribute_string: (Method | Throws)
      # @attribute:
      # @value:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attribute_string(to_unsafe, attribute, value, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attribute_uint32(attribute : ::String, value : UInt32, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attribute_uint32: (Method | Throws)
      # @attribute:
      # @value:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attribute_uint32(to_unsafe, attribute, value, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attribute_uint64(attribute : ::String, value : UInt64, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attribute_uint64: (Method | Throws)
      # @attribute:
      # @value:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attribute_uint64(to_unsafe, attribute, value, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attributes_async(info : Gio::FileInfo, flags : Gio::FileQueryInfoFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_set_attributes_async: (Method)
      # @info:
      # @flags:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_set_attributes_async(to_unsafe, info, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def set_attributes_finish(result : Gio::AsyncResult, info : Gio::FileInfo) : Bool
      # g_file_set_attributes_finish: (Method | Throws)
      # @result:
      # @info: (out) (transfer full)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::TransferFullArgPlan
      GICrystal.ref(info)

      # C call
      _retval = LibGio.g_file_set_attributes_finish(to_unsafe, result, info, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_attributes_from_info(info : Gio::FileInfo, flags : Gio::FileQueryInfoFlags, cancellable : Gio::Cancellable?) : Bool
      # g_file_set_attributes_from_info: (Method | Throws)
      # @info:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_attributes_from_info(to_unsafe, info, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_display_name(display_name : ::String, cancellable : Gio::Cancellable?) : Gio::File
      # g_file_set_display_name: (Method | Throws)
      # @display_name:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_set_display_name(to_unsafe, display_name, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def set_display_name_async(display_name : ::String, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_set_display_name_async: (Method)
      # @display_name:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_set_display_name_async(to_unsafe, display_name, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def display_name_finish=(res : Gio::AsyncResult) : Gio::File
      # g_file_set_display_name_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_set_display_name_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
    end

    def start_mountable(flags : Gio::DriveStartFlags, start_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_start_mountable: (Method)
      # @flags:
      # @start_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      start_operation = if start_operation.nil?
                          Pointer(Void).null
                        else
                          start_operation.to_unsafe
                        end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_start_mountable(to_unsafe, flags, start_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def start_mountable_finish(result : Gio::AsyncResult) : Bool
      # g_file_start_mountable_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_start_mountable_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def stop_mountable(flags : Gio::MountUnmountFlags, mount_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_stop_mountable: (Method)
      # @flags:
      # @mount_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mount_operation = if mount_operation.nil?
                          Pointer(Void).null
                        else
                          mount_operation.to_unsafe
                        end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_stop_mountable(to_unsafe, flags, mount_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def stop_mountable_finish(result : Gio::AsyncResult) : Bool
      # g_file_stop_mountable_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_stop_mountable_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def supports_thread_contexts : Bool
      # g_file_supports_thread_contexts: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_supports_thread_contexts(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def trash(cancellable : Gio::Cancellable?) : Bool
      # g_file_trash: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_trash(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def trash_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_trash_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_trash_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def trash_finish(result : Gio::AsyncResult) : Bool
      # g_file_trash_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_trash_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def unmount_mountable(flags : Gio::MountUnmountFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_unmount_mountable: (Method)
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_unmount_mountable(to_unsafe, flags, cancellable, callback, user_data)

      # Return value handling
    end

    @[Deprecated]
    def unmount_mountable_finish(result : Gio::AsyncResult) : Bool
      # g_file_unmount_mountable_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_unmount_mountable_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def unmount_mountable_with_operation(flags : Gio::MountUnmountFlags, mount_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_unmount_mountable_with_operation: (Method)
      # @flags:
      # @mount_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mount_operation = if mount_operation.nil?
                          Pointer(Void).null
                        else
                          mount_operation.to_unsafe
                        end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_file_unmount_mountable_with_operation(to_unsafe, flags, mount_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def unmount_mountable_with_operation_finish(result : Gio::AsyncResult) : Bool
      # g_file_unmount_mountable_with_operation_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_unmount_mountable_with_operation_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # append_to: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_append_to_vfunc(impl_method_name)
      private def self._vfunc_append_to(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 360).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_append_to(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # append_to: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_append_to_vfunc(impl_method_name)
      private def self._vfunc_unsafe_append_to(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 360).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_append_to = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_append_to(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_append_to : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # append_to_async: (None)
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_append_to_async_vfunc(impl_method_name)
      private def self._vfunc_append_to_async(%this : Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 368).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_append_to_async(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # append_to_async: (None)
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_append_to_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_append_to_async(%this : Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 368).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_append_to_async = Proc(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_append_to_async(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_append_to_async : Proc(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # append_to_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_append_to_finish_vfunc(impl_method_name)
      private def self._vfunc_append_to_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 376).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_append_to_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # append_to_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_append_to_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_append_to_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 376).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_append_to_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_append_to_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_append_to_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # copy: (Throws)
    # @destination:
    # @flags:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_copy_vfunc(impl_method_name)
      private def self._vfunc_copy(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), ) : LibC::Int
        # @destination: 
# @flags: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 

# Generator::BuiltInTypeArgPlan
destination=Gio::AbstractFile.new(lib_destination, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCopyFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::BuiltInTypeArgPlan
progress_callback=Gio::FileProgressCallback.new(lib_progress_callback, GICrystal::Transfer::None) unless lib_progress_callback.null?
# Generator::NullableArrayPlan
progress_callback_data=(lib_progress_callback_data.null? ? nil : lib_progress_callback_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(destination, flags, cancellable, progress_callback, progress_callback_data)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 528).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_copy(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # copy: (Throws)
    # @destination:
    # @flags:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_copy_vfunc(impl_method_name)
      private def self._vfunc_unsafe_copy(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), ) : LibC::Int
# @destination: 
# @flags: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_destination, lib_flags, lib_cancellable, lib_progress_callback, lib_progress_callback_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 528).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_copy = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_copy(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_copy : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), LibC::Int)? = nil
    end

    # copy_async: (None)
    # @destination:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_copy_async_vfunc(impl_method_name)
      private def self._vfunc_copy_async(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @destination: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
destination=Gio::AbstractFile.new(lib_destination, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCopyFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::BuiltInTypeArgPlan
progress_callback=Gio::FileProgressCallback.new(lib_progress_callback, GICrystal::Transfer::None) unless lib_progress_callback.null?
# Generator::NullableArrayPlan
progress_callback_data=(lib_progress_callback_data.null? ? nil : lib_progress_callback_data)
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(destination, flags, io_priority, cancellable, progress_callback, progress_callback_data, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 536).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_copy_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # copy_async: (None)
    # @destination:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_copy_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_copy_async(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @destination: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_destination, lib_flags, lib_io_priority, lib_cancellable, lib_progress_callback, lib_progress_callback_data, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 536).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_copy_async = Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_copy_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_copy_async : Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # copy_finish: (Throws)
    # @res:
    # Returns: (transfer none)
    private macro _register_copy_finish_vfunc(impl_method_name)
      private def self._vfunc_copy_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : LibC::Int
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 544).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_copy_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # copy_finish: (Throws)
    # @res:
    # Returns: (transfer none)
    private macro _register_unsafe_copy_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_copy_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : LibC::Int
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 544).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_copy_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_copy_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_copy_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # create: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_create_vfunc(impl_method_name)
      private def self._vfunc_create(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 384).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # create: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_create_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 384).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # create_async: (None)
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_create_async_vfunc(impl_method_name)
      private def self._vfunc_create_async(%this : Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 392).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_async(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # create_async: (None)
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_create_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_async(%this : Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 392).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_async = Proc(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_async(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_async : Proc(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # create_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_create_finish_vfunc(impl_method_name)
      private def self._vfunc_create_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 400).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # create_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_create_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 400).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # create_readwrite: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_create_readwrite_vfunc(impl_method_name)
      private def self._vfunc_create_readwrite(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 680).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_readwrite(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # create_readwrite: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_create_readwrite_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_readwrite(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 680).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_readwrite = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_readwrite(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_readwrite : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # create_readwrite_async: (None)
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_create_readwrite_async_vfunc(impl_method_name)
      private def self._vfunc_create_readwrite_async(%this : Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 688).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_readwrite_async(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # create_readwrite_async: (None)
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_create_readwrite_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_readwrite_async(%this : Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 688).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_readwrite_async = Proc(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_readwrite_async(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_readwrite_async : Proc(Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # create_readwrite_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_create_readwrite_finish_vfunc(impl_method_name)
      private def self._vfunc_create_readwrite_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 696).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_readwrite_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # create_readwrite_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_create_readwrite_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_readwrite_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 696).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_readwrite_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_readwrite_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_readwrite_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # delete_file: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_delete_file_vfunc(impl_method_name)
      private def self._vfunc_delete_file(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_file(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # delete_file: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_delete_file_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_file(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_file = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_file(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_file : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # delete_file_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_delete_file_async_vfunc(impl_method_name)
      private def self._vfunc_delete_file_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_file_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # delete_file_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_delete_file_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_file_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_file_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_file_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_file_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # delete_file_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_delete_file_finish_vfunc(impl_method_name)
      private def self._vfunc_delete_file_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_file_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # delete_file_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_delete_file_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_file_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_file_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_file_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_file_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # dup: (None)
    # Returns: (transfer full)
    private macro _register_dup_vfunc(impl_method_name)
      private def self._vfunc_dup(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_dup(Pointer(Void))).pointer
        previous_def
      end
    end

    # dup: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_dup_vfunc(impl_method_name)
      private def self._vfunc_unsafe_dup(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_dup = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_dup(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_dup : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # eject_mountable: (None)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_eject_mountable_vfunc(impl_method_name)
      private def self._vfunc_eject_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountUnmountFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 608).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject_mountable(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # eject_mountable: (None)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_eject_mountable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 608).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject_mountable = Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject_mountable(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject_mountable : Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # eject_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_eject_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_eject_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 616).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # eject_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_eject_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 616).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject_mountable_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject_mountable_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # eject_mountable_with_operation: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_eject_mountable_with_operation_vfunc(impl_method_name)
      private def self._vfunc_eject_mountable_with_operation(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountUnmountFlags.new(lib_flags)
# Generator::NullableArrayPlan
mount_operation=(lib_mount_operation.null? ? nil : Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
mount_operation=Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None) unless lib_mount_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, mount_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 784).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject_mountable_with_operation(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # eject_mountable_with_operation: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_eject_mountable_with_operation_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject_mountable_with_operation(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_mount_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 784).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject_mountable_with_operation = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject_mountable_with_operation(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject_mountable_with_operation : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # eject_mountable_with_operation_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_eject_mountable_with_operation_finish_vfunc(impl_method_name)
      private def self._vfunc_eject_mountable_with_operation_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 792).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject_mountable_with_operation_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # eject_mountable_with_operation_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_eject_mountable_with_operation_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject_mountable_with_operation_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 792).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject_mountable_with_operation_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject_mountable_with_operation_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject_mountable_with_operation_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # enumerate_children: (Throws)
    # @attributes:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_enumerate_children_vfunc(impl_method_name)
      private def self._vfunc_enumerate_children(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @attributes: 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_enumerate_children(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # enumerate_children: (Throws)
    # @attributes:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_enumerate_children_vfunc(impl_method_name)
      private def self._vfunc_unsafe_enumerate_children(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @attributes: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_enumerate_children = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_enumerate_children(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_enumerate_children : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # enumerate_children_async: (None)
    # @attributes:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_enumerate_children_async_vfunc(impl_method_name)
      private def self._vfunc_enumerate_children_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @attributes: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_enumerate_children_async(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # enumerate_children_async: (None)
    # @attributes:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_enumerate_children_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_enumerate_children_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @attributes: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_enumerate_children_async = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_enumerate_children_async(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_enumerate_children_async : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # enumerate_children_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_enumerate_children_finish_vfunc(impl_method_name)
      private def self._vfunc_enumerate_children_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_enumerate_children_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # enumerate_children_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_enumerate_children_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_enumerate_children_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_enumerate_children_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_enumerate_children_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_enumerate_children_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # equal: (None)
    # @file2:
    # Returns: (transfer none)
    private macro _register_equal_vfunc(impl_method_name)
      private def self._vfunc_equal(%this : Pointer(Void), lib_file2 :  Pointer(Void), ) : LibC::Int
        # @file2: 

# Generator::BuiltInTypeArgPlan
file2=Gio::AbstractFile.new(lib_file2, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(file2)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_equal(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # equal: (None)
    # @file2:
    # Returns: (transfer none)
    private macro _register_unsafe_equal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_equal(%this : Pointer(Void), lib_file2 :  Pointer(Void), ) : LibC::Int
# @file2: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_file2)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_equal = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_equal(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_equal : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # find_enclosing_mount: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_find_enclosing_mount_vfunc(impl_method_name)
      private def self._vfunc_find_enclosing_mount(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_find_enclosing_mount(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # find_enclosing_mount: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_find_enclosing_mount_vfunc(impl_method_name)
      private def self._vfunc_unsafe_find_enclosing_mount(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_find_enclosing_mount = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_find_enclosing_mount(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_find_enclosing_mount : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # find_enclosing_mount_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_find_enclosing_mount_async_vfunc(impl_method_name)
      private def self._vfunc_find_enclosing_mount_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_find_enclosing_mount_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # find_enclosing_mount_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_find_enclosing_mount_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_find_enclosing_mount_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_find_enclosing_mount_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_find_enclosing_mount_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_find_enclosing_mount_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # find_enclosing_mount_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_find_enclosing_mount_finish_vfunc(impl_method_name)
      private def self._vfunc_find_enclosing_mount_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_find_enclosing_mount_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # find_enclosing_mount_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_find_enclosing_mount_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_find_enclosing_mount_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_find_enclosing_mount_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_find_enclosing_mount_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_find_enclosing_mount_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # get_basename: (None)
    # Returns: (transfer full) (filename) (nullable)
    private macro _register_get_basename_vfunc(impl_method_name)
      private def self._vfunc_get_basename(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_basename(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_basename: (None)
    # Returns: (transfer full) (filename) (nullable)
    private macro _register_unsafe_get_basename_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_basename(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_basename = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_basename(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_basename : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_child_for_display_name: (Throws)
    # @display_name:
    # Returns: (transfer full)
    private macro _register_get_child_for_display_name_vfunc(impl_method_name)
      private def self._vfunc_get_child_for_display_name(%this : Pointer(Void), lib_display_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @display_name: 

# Generator::BuiltInTypeArgPlan
display_name=::String.new(lib_display_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(display_name)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_child_for_display_name(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_child_for_display_name: (Throws)
    # @display_name:
    # Returns: (transfer full)
    private macro _register_unsafe_get_child_for_display_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_child_for_display_name(%this : Pointer(Void), lib_display_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @display_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_display_name)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_child_for_display_name = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_child_for_display_name(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_child_for_display_name : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_parent: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_parent_vfunc(impl_method_name)
      private def self._vfunc_get_parent(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_parent(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_parent: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_parent_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_parent(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_parent = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_parent(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_parent : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_parse_name: (None)
    # Returns: (transfer full)
    private macro _register_get_parse_name_vfunc(impl_method_name)
      private def self._vfunc_get_parse_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_parse_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_parse_name: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_parse_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_parse_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_parse_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_parse_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_parse_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_path: (None)
    # Returns: (transfer full) (filename) (nullable)
    private macro _register_get_path_vfunc(impl_method_name)
      private def self._vfunc_get_path(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_path(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_path: (None)
    # Returns: (transfer full) (filename) (nullable)
    private macro _register_unsafe_get_path_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_path(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_path = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_path(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_path : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_relative_path: (None)
    # @descendant:
    # Returns: (transfer full) (filename) (nullable)
    private macro _register_get_relative_path_vfunc(impl_method_name)
      private def self._vfunc_get_relative_path(%this : Pointer(Void), lib_descendant :  Pointer(Void), ) : Pointer(LibC::Char)
        # @descendant: 

# Generator::BuiltInTypeArgPlan
descendant=Gio::AbstractFile.new(lib_descendant, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(descendant)
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_relative_path(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_relative_path: (None)
    # @descendant:
    # Returns: (transfer full) (filename) (nullable)
    private macro _register_unsafe_get_relative_path_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_relative_path(%this : Pointer(Void), lib_descendant :  Pointer(Void), ) : Pointer(LibC::Char)
# @descendant: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_descendant)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_relative_path = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_relative_path(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_relative_path : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_uri: (None)
    # Returns: (transfer full)
    private macro _register_get_uri_vfunc(impl_method_name)
      private def self._vfunc_get_uri(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_uri(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_uri: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_uri_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_uri(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_uri = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_uri(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_uri : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_uri_scheme: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_uri_scheme_vfunc(impl_method_name)
      private def self._vfunc_get_uri_scheme(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_uri_scheme(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_uri_scheme: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_uri_scheme_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_uri_scheme(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_uri_scheme = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_uri_scheme(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_uri_scheme : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # has_uri_scheme: (None)
    # @uri_scheme:
    # Returns: (transfer none)
    private macro _register_has_uri_scheme_vfunc(impl_method_name)
      private def self._vfunc_has_uri_scheme(%this : Pointer(Void), lib_uri_scheme :  Pointer(LibC::Char), ) : LibC::Int
        # @uri_scheme: 

# Generator::BuiltInTypeArgPlan
uri_scheme=::String.new(lib_uri_scheme)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uri_scheme)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_has_uri_scheme(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # has_uri_scheme: (None)
    # @uri_scheme:
    # Returns: (transfer none)
    private macro _register_unsafe_has_uri_scheme_vfunc(impl_method_name)
      private def self._vfunc_unsafe_has_uri_scheme(%this : Pointer(Void), lib_uri_scheme :  Pointer(LibC::Char), ) : LibC::Int
# @uri_scheme: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uri_scheme)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_has_uri_scheme = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_has_uri_scheme(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_has_uri_scheme : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # hash: (None)
    # Returns: (transfer none)
    private macro _register_hash_vfunc(impl_method_name)
      private def self._vfunc_hash(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_hash(Pointer(Void))).pointer
        previous_def
      end
    end

    # hash: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_hash_vfunc(impl_method_name)
      private def self._vfunc_unsafe_hash(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_hash = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_hash(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_hash : Proc(Pointer(Void), UInt32)? = nil
    end

    # is_native: (None)
    # Returns: (transfer none)
    private macro _register_is_native_vfunc(impl_method_name)
      private def self._vfunc_is_native(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_native(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_native: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_native_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_native(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_native = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_native(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_native : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # make_directory: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_make_directory_vfunc(impl_method_name)
      private def self._vfunc_make_directory(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 480).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_make_directory(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # make_directory: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_make_directory_vfunc(impl_method_name)
      private def self._vfunc_unsafe_make_directory(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 480).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_make_directory = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_make_directory(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_make_directory : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # make_directory_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_make_directory_async_vfunc(impl_method_name)
      private def self._vfunc_make_directory_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_make_directory_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # make_directory_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_make_directory_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_make_directory_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_make_directory_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_make_directory_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_make_directory_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # make_directory_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_make_directory_finish_vfunc(impl_method_name)
      private def self._vfunc_make_directory_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_make_directory_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # make_directory_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_make_directory_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_make_directory_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_make_directory_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_make_directory_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_make_directory_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # make_symbolic_link: (Throws)
    # @symlink_value:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_make_symbolic_link_vfunc(impl_method_name)
      private def self._vfunc_make_symbolic_link(%this : Pointer(Void), lib_symlink_value :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @symlink_value: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
symlink_value=::Path.new(::String.new(lib_symlink_value))
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(symlink_value, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_make_symbolic_link(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # make_symbolic_link: (Throws)
    # @symlink_value:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_make_symbolic_link_vfunc(impl_method_name)
      private def self._vfunc_unsafe_make_symbolic_link(%this : Pointer(Void), lib_symlink_value :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @symlink_value: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_symlink_value, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_make_symbolic_link = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_make_symbolic_link(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_make_symbolic_link : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), LibC::Int)? = nil
    end

    # make_symbolic_link_async: (None)
    # @symlink_value:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_make_symbolic_link_async_vfunc(impl_method_name)
      private def self._vfunc_make_symbolic_link_async(%this : Pointer(Void), lib_symlink_value :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @symlink_value: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
symlink_value=::Path.new(::String.new(lib_symlink_value))
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(symlink_value, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_make_symbolic_link_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # make_symbolic_link_async: (None)
    # @symlink_value:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_make_symbolic_link_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_make_symbolic_link_async(%this : Pointer(Void), lib_symlink_value :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @symlink_value: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_symlink_value, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_make_symbolic_link_async = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_make_symbolic_link_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_make_symbolic_link_async : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # make_symbolic_link_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_make_symbolic_link_finish_vfunc(impl_method_name)
      private def self._vfunc_make_symbolic_link_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 520).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_make_symbolic_link_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # make_symbolic_link_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_make_symbolic_link_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_make_symbolic_link_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 520).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_make_symbolic_link_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_make_symbolic_link_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_make_symbolic_link_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # measure_disk_usage: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_data: (nullable)
    # @disk_usage: (out) (transfer full) (optional)
    # @num_dirs: (out) (transfer full) (optional)
    # @num_files: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_measure_disk_usage_vfunc(impl_method_name)
      private def self._vfunc_measure_disk_usage(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_data :  Pointer(Void), lib_disk_usage :  UInt64, lib_num_dirs :  UInt64, lib_num_files :  UInt64, ) : LibC::Int
        # @flags: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_data: (nullable) 
# @disk_usage: (out) (transfer full) (optional) 
# @num_dirs: (out) (transfer full) (optional) 
# @num_files: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileMeasureFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::BuiltInTypeArgPlan
progress_callback=Gio::FileMeasureProgressCallback.new(lib_progress_callback, GICrystal::Transfer::None) unless lib_progress_callback.null?
# Generator::NullableArrayPlan
progress_data=(lib_progress_data.null? ? nil : lib_progress_data)
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable, progress_callback, progress_data, disk_usage, num_dirs, num_files)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 816).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_measure_disk_usage(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), UInt64, UInt64, UInt64)).pointer
        previous_def
      end
    end

    # measure_disk_usage: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_data: (nullable)
    # @disk_usage: (out) (transfer full) (optional)
    # @num_dirs: (out) (transfer full) (optional)
    # @num_files: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_measure_disk_usage_vfunc(impl_method_name)
      private def self._vfunc_unsafe_measure_disk_usage(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_data :  Pointer(Void), lib_disk_usage :  UInt64, lib_num_dirs :  UInt64, lib_num_files :  UInt64, ) : LibC::Int
# @flags: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_data: (nullable) 
# @disk_usage: (out) (transfer full) (optional) 
# @num_dirs: (out) (transfer full) (optional) 
# @num_files: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable, lib_progress_callback, lib_progress_data, lib_disk_usage, lib_num_dirs, lib_num_files)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 816).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_measure_disk_usage = Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), UInt64, UInt64, UInt64, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_measure_disk_usage(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), UInt64, UInt64, UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_measure_disk_usage : Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), UInt64, UInt64, UInt64, LibC::Int)? = nil
    end

    # measure_disk_usage_finish: (Throws)
    # @result:
    # @disk_usage: (out) (transfer full) (optional)
    # @num_dirs: (out) (transfer full) (optional)
    # @num_files: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_measure_disk_usage_finish_vfunc(impl_method_name)
      private def self._vfunc_measure_disk_usage_finish(%this : Pointer(Void), lib_result :  Pointer(Void), lib_disk_usage :  UInt64, lib_num_dirs :  UInt64, lib_num_files :  UInt64, ) : LibC::Int
        # @result: 
# @disk_usage: (out) (transfer full) (optional) 
# @num_dirs: (out) (transfer full) (optional) 
# @num_files: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result, disk_usage, num_dirs, num_files)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 832).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_measure_disk_usage_finish(Pointer(Void), Pointer(Void), UInt64, UInt64, UInt64)).pointer
        previous_def
      end
    end

    # measure_disk_usage_finish: (Throws)
    # @result:
    # @disk_usage: (out) (transfer full) (optional)
    # @num_dirs: (out) (transfer full) (optional)
    # @num_files: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_measure_disk_usage_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_measure_disk_usage_finish(%this : Pointer(Void), lib_result :  Pointer(Void), lib_disk_usage :  UInt64, lib_num_dirs :  UInt64, lib_num_files :  UInt64, ) : LibC::Int
# @result: 
# @disk_usage: (out) (transfer full) (optional) 
# @num_dirs: (out) (transfer full) (optional) 
# @num_files: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result, lib_disk_usage, lib_num_dirs, lib_num_files)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 832).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_measure_disk_usage_finish = Proc(Pointer(Void), Pointer(Void), UInt64, UInt64, UInt64, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_measure_disk_usage_finish(Pointer(Void), Pointer(Void), UInt64, UInt64, UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_measure_disk_usage_finish : Proc(Pointer(Void), Pointer(Void), UInt64, UInt64, UInt64, LibC::Int)? = nil
    end

    # monitor_dir: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_monitor_dir_vfunc(impl_method_name)
      private def self._vfunc_monitor_dir(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileMonitorFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 640).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_monitor_dir(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # monitor_dir: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_monitor_dir_vfunc(impl_method_name)
      private def self._vfunc_unsafe_monitor_dir(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 640).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_monitor_dir = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_monitor_dir(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_monitor_dir : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # monitor_file: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_monitor_file_vfunc(impl_method_name)
      private def self._vfunc_monitor_file(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::FileMonitorFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 648).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_monitor_file(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # monitor_file: (Throws)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_monitor_file_vfunc(impl_method_name)
      private def self._vfunc_unsafe_monitor_file(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 648).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_monitor_file = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_monitor_file(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_monitor_file : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # mount_enclosing_volume: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_mount_enclosing_volume_vfunc(impl_method_name)
      private def self._vfunc_mount_enclosing_volume(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountMountFlags.new(lib_flags)
# Generator::NullableArrayPlan
mount_operation=(lib_mount_operation.null? ? nil : Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
mount_operation=Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None) unless lib_mount_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, mount_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 624).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_enclosing_volume(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_enclosing_volume: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_mount_enclosing_volume_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_enclosing_volume(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_mount_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 624).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_enclosing_volume = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_enclosing_volume(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_enclosing_volume : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # mount_enclosing_volume_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_mount_enclosing_volume_finish_vfunc(impl_method_name)
      private def self._vfunc_mount_enclosing_volume_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 632).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_enclosing_volume_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_enclosing_volume_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_mount_enclosing_volume_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_enclosing_volume_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 632).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_enclosing_volume_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_enclosing_volume_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_enclosing_volume_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # mount_mountable: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_mount_mountable_vfunc(impl_method_name)
      private def self._vfunc_mount_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountMountFlags.new(lib_flags)
# Generator::NullableArrayPlan
mount_operation=(lib_mount_operation.null? ? nil : Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
mount_operation=Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None) unless lib_mount_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, mount_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 576).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_mountable(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_mountable: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_mount_mountable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_mount_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 576).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_mountable = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_mountable(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_mountable : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # mount_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_mount_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_mount_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 584).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_mount_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 584).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_mountable_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_mountable_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # move: (Throws)
    # @destination:
    # @flags:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_move_vfunc(impl_method_name)
      private def self._vfunc_move(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), ) : LibC::Int
        # @destination: 
# @flags: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 

# Generator::BuiltInTypeArgPlan
destination=Gio::AbstractFile.new(lib_destination, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCopyFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::BuiltInTypeArgPlan
progress_callback=Gio::FileProgressCallback.new(lib_progress_callback, GICrystal::Transfer::None) unless lib_progress_callback.null?
# Generator::NullableArrayPlan
progress_callback_data=(lib_progress_callback_data.null? ? nil : lib_progress_callback_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(destination, flags, cancellable, progress_callback, progress_callback_data)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 552).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_move(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # move: (Throws)
    # @destination:
    # @flags:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_move_vfunc(impl_method_name)
      private def self._vfunc_unsafe_move(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), ) : LibC::Int
# @destination: 
# @flags: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_destination, lib_flags, lib_cancellable, lib_progress_callback, lib_progress_callback_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 552).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_move = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_move(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_move : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), LibC::Int)? = nil
    end

    # move_async: (None)
    # @destination:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_move_async_vfunc(impl_method_name)
      private def self._vfunc_move_async(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @destination: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
destination=Gio::AbstractFile.new(lib_destination, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCopyFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::BuiltInTypeArgPlan
progress_callback=Gio::FileProgressCallback.new(lib_progress_callback, GICrystal::Transfer::None) unless lib_progress_callback.null?
# Generator::NullableArrayPlan
progress_callback_data=(lib_progress_callback_data.null? ? nil : lib_progress_callback_data)
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(destination, flags, io_priority, cancellable, progress_callback, progress_callback_data, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 560).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_move_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # move_async: (None)
    # @destination:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @progress_callback: (nullable)
    # @progress_callback_data: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_move_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_move_async(%this : Pointer(Void), lib_destination :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_progress_callback :  Void*, lib_progress_callback_data :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @destination: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @progress_callback: (nullable) 
# @progress_callback_data: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_destination, lib_flags, lib_io_priority, lib_cancellable, lib_progress_callback, lib_progress_callback_data, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 560).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_move_async = Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_move_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_move_async : Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # move_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_move_finish_vfunc(impl_method_name)
      private def self._vfunc_move_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 568).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_move_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # move_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_move_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_move_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 568).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_move_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_move_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_move_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # open_readwrite: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_open_readwrite_vfunc(impl_method_name)
      private def self._vfunc_open_readwrite(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 656).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_open_readwrite(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # open_readwrite: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_open_readwrite_vfunc(impl_method_name)
      private def self._vfunc_unsafe_open_readwrite(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 656).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_open_readwrite = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_open_readwrite(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_open_readwrite : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # open_readwrite_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_open_readwrite_async_vfunc(impl_method_name)
      private def self._vfunc_open_readwrite_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 664).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_open_readwrite_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # open_readwrite_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_open_readwrite_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_open_readwrite_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 664).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_open_readwrite_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_open_readwrite_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_open_readwrite_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # open_readwrite_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_open_readwrite_finish_vfunc(impl_method_name)
      private def self._vfunc_open_readwrite_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 672).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_open_readwrite_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # open_readwrite_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_open_readwrite_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_open_readwrite_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 672).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_open_readwrite_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_open_readwrite_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_open_readwrite_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # poll_mountable: (None)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_poll_mountable_vfunc(impl_method_name)
      private def self._vfunc_poll_mountable(%this : Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 800).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_poll_mountable(Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # poll_mountable: (None)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_poll_mountable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_poll_mountable(%this : Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 800).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_poll_mountable = Proc(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_poll_mountable(Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_poll_mountable : Proc(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # poll_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_poll_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_poll_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 808).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_poll_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # poll_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_poll_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_poll_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 808).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_poll_mountable_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_poll_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_poll_mountable_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # prefix_matches: (None)
    # @file:
    # Returns: (transfer none)
    private macro _register_prefix_matches_vfunc(impl_method_name)
      private def self._vfunc_prefix_matches(%this : Pointer(Void), lib_file :  Pointer(Void), ) : LibC::Int
        # @file: 

# Generator::BuiltInTypeArgPlan
file=Gio::AbstractFile.new(lib_file, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(file)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_prefix_matches(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # prefix_matches: (None)
    # @file:
    # Returns: (transfer none)
    private macro _register_unsafe_prefix_matches_vfunc(impl_method_name)
      private def self._vfunc_unsafe_prefix_matches(%this : Pointer(Void), lib_file :  Pointer(Void), ) : LibC::Int
# @file: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_file)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_prefix_matches = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_prefix_matches(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_prefix_matches : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # query_exists: (None)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_query_exists_vfunc(impl_method_name)
      private def self._vfunc_query_exists(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 840).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_exists(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_exists: (None)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_query_exists_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_exists(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 840).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_exists = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_exists(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_exists : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # query_filesystem_info: (Throws)
    # @attributes:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_query_filesystem_info_vfunc(impl_method_name)
      private def self._vfunc_query_filesystem_info(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @attributes: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_filesystem_info(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_filesystem_info: (Throws)
    # @attributes:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_query_filesystem_info_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_filesystem_info(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @attributes: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_filesystem_info = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_filesystem_info(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_filesystem_info : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))? = nil
    end

    # query_filesystem_info_async: (None)
    # @attributes:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_query_filesystem_info_async_vfunc(impl_method_name)
      private def self._vfunc_query_filesystem_info_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @attributes: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_filesystem_info_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # query_filesystem_info_async: (None)
    # @attributes:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_query_filesystem_info_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_filesystem_info_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @attributes: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_filesystem_info_async = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_filesystem_info_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_filesystem_info_async : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # query_filesystem_info_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_query_filesystem_info_finish_vfunc(impl_method_name)
      private def self._vfunc_query_filesystem_info_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_filesystem_info_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_filesystem_info_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_query_filesystem_info_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_filesystem_info_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_filesystem_info_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_filesystem_info_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_filesystem_info_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # query_info: (Throws)
    # @attributes:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_query_info_vfunc(impl_method_name)
      private def self._vfunc_query_info(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @attributes: 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_info(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # query_info: (Throws)
    # @attributes:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_query_info_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_info(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @attributes: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_info = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_info(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_info : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # query_info_async: (None)
    # @attributes:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_query_info_async_vfunc(impl_method_name)
      private def self._vfunc_query_info_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @attributes: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_info_async(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # query_info_async: (None)
    # @attributes:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_query_info_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_info_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @attributes: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_info_async = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_info_async(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_info_async : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # query_info_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_query_info_finish_vfunc(impl_method_name)
      private def self._vfunc_query_info_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_info_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_info_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_query_info_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_info_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_info_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_info_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_info_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # query_settable_attributes: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_query_settable_attributes_vfunc(impl_method_name)
      private def self._vfunc_query_settable_attributes(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_settable_attributes(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_settable_attributes: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_query_settable_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_settable_attributes(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_settable_attributes = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_settable_attributes(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_settable_attributes : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # query_writable_namespaces: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_query_writable_namespaces_vfunc(impl_method_name)
      private def self._vfunc_query_writable_namespaces(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_writable_namespaces(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_writable_namespaces: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_query_writable_namespaces_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_writable_namespaces(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_writable_namespaces = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_writable_namespaces(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_writable_namespaces : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # read_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_read_async_vfunc(impl_method_name)
      private def self._vfunc_read_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 344).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_read_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # read_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_read_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_read_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 344).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_read_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_read_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_read_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # read_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_read_finish_vfunc(impl_method_name)
      private def self._vfunc_read_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 352).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_read_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # read_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_read_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_read_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 352).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_read_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_read_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_read_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # read_fn: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_read_fn_vfunc(impl_method_name)
      private def self._vfunc_read_fn(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 336).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_read_fn(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # read_fn: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_read_fn_vfunc(impl_method_name)
      private def self._vfunc_unsafe_read_fn(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 336).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_read_fn = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_read_fn(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_read_fn : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # replace: (Throws)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_replace_vfunc(impl_method_name)
      private def self._vfunc_replace(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @etag: (nullable) 
# @make_backup: 
# @flags: 
# @cancellable: (nullable) 

# Generator::NullableArrayPlan
etag=(lib_etag.null? ? nil : ::String.new(lib_etag))
# Generator::BuiltInTypeArgPlan
etag=::String.new(lib_etag) unless lib_etag.null?
# Generator::BuiltInTypeArgPlan
make_backup=GICrystal.to_bool(lib_make_backup)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(etag, make_backup, flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_replace(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # replace: (Throws)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_replace_vfunc(impl_method_name)
      private def self._vfunc_unsafe_replace(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @etag: (nullable) 
# @make_backup: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_etag, lib_make_backup, lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_replace = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_replace(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_replace : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # replace_async: (None)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_replace_async_vfunc(impl_method_name)
      private def self._vfunc_replace_async(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @etag: (nullable) 
# @make_backup: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::NullableArrayPlan
etag=(lib_etag.null? ? nil : ::String.new(lib_etag))
# Generator::BuiltInTypeArgPlan
etag=::String.new(lib_etag) unless lib_etag.null?
# Generator::BuiltInTypeArgPlan
make_backup=GICrystal.to_bool(lib_make_backup)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(etag, make_backup, flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_replace_async(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # replace_async: (None)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_replace_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_replace_async(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @etag: (nullable) 
# @make_backup: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_etag, lib_make_backup, lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_replace_async = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_replace_async(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_replace_async : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # replace_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_replace_finish_vfunc(impl_method_name)
      private def self._vfunc_replace_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_replace_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # replace_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_replace_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_replace_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_replace_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_replace_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_replace_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # replace_readwrite: (Throws)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_replace_readwrite_vfunc(impl_method_name)
      private def self._vfunc_replace_readwrite(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @etag: (nullable) 
# @make_backup: 
# @flags: 
# @cancellable: (nullable) 

# Generator::NullableArrayPlan
etag=(lib_etag.null? ? nil : ::String.new(lib_etag))
# Generator::BuiltInTypeArgPlan
etag=::String.new(lib_etag) unless lib_etag.null?
# Generator::BuiltInTypeArgPlan
make_backup=GICrystal.to_bool(lib_make_backup)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(etag, make_backup, flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 704).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_replace_readwrite(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # replace_readwrite: (Throws)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_replace_readwrite_vfunc(impl_method_name)
      private def self._vfunc_unsafe_replace_readwrite(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @etag: (nullable) 
# @make_backup: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_etag, lib_make_backup, lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 704).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_replace_readwrite = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_replace_readwrite(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_replace_readwrite : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # replace_readwrite_async: (None)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_replace_readwrite_async_vfunc(impl_method_name)
      private def self._vfunc_replace_readwrite_async(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @etag: (nullable) 
# @make_backup: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::NullableArrayPlan
etag=(lib_etag.null? ? nil : ::String.new(lib_etag))
# Generator::BuiltInTypeArgPlan
etag=::String.new(lib_etag) unless lib_etag.null?
# Generator::BuiltInTypeArgPlan
make_backup=GICrystal.to_bool(lib_make_backup)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileCreateFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(etag, make_backup, flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 712).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_replace_readwrite_async(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # replace_readwrite_async: (None)
    # @etag: (nullable)
    # @make_backup:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_replace_readwrite_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_replace_readwrite_async(%this : Pointer(Void), lib_etag :  Pointer(LibC::Char), lib_make_backup :  LibC::Int, lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @etag: (nullable) 
# @make_backup: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_etag, lib_make_backup, lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 712).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_replace_readwrite_async = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_replace_readwrite_async(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_replace_readwrite_async : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # replace_readwrite_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_replace_readwrite_finish_vfunc(impl_method_name)
      private def self._vfunc_replace_readwrite_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 720).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_replace_readwrite_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # replace_readwrite_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_replace_readwrite_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_replace_readwrite_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 720).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_replace_readwrite_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_replace_readwrite_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_replace_readwrite_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # resolve_relative_path: (None)
    # @relative_path:
    # Returns: (transfer full)
    private macro _register_resolve_relative_path_vfunc(impl_method_name)
      private def self._vfunc_resolve_relative_path(%this : Pointer(Void), lib_relative_path :  Pointer(LibC::Char), ) : Pointer(Void)
        # @relative_path: 

# Generator::BuiltInTypeArgPlan
relative_path=::Path.new(::String.new(lib_relative_path))


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(relative_path)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_resolve_relative_path(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # resolve_relative_path: (None)
    # @relative_path:
    # Returns: (transfer full)
    private macro _register_unsafe_resolve_relative_path_vfunc(impl_method_name)
      private def self._vfunc_unsafe_resolve_relative_path(%this : Pointer(Void), lib_relative_path :  Pointer(LibC::Char), ) : Pointer(Void)
# @relative_path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_relative_path)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_resolve_relative_path = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_resolve_relative_path(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_resolve_relative_path : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # set_attribute: (Throws)
    # @attribute:
    # @type:
    # @value_p: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_set_attribute_vfunc(impl_method_name)
      private def self._vfunc_set_attribute(%this : Pointer(Void), lib_attribute :  Pointer(LibC::Char), lib_type :  UInt32, lib_value_p :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @attribute: 
# @type: 
# @value_p: (nullable) 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
attribute=::String.new(lib_attribute)
# Generator::BuiltInTypeArgPlan
type=Gio::FileAttributeType.new(lib_type)
# Generator::NullableArrayPlan
value_p=(lib_value_p.null? ? nil : lib_value_p)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attribute, type, value_p, flags, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 304).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_attribute(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # set_attribute: (Throws)
    # @attribute:
    # @type:
    # @value_p: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_attribute_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_attribute(%this : Pointer(Void), lib_attribute :  Pointer(LibC::Char), lib_type :  UInt32, lib_value_p :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @attribute: 
# @type: 
# @value_p: (nullable) 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attribute, lib_type, lib_value_p, lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 304).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_attribute = Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), UInt32, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_attribute(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_attribute : Proc(Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), UInt32, Pointer(Void), LibC::Int)? = nil
    end

    # set_attributes_async: (None)
    # @info:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_set_attributes_async_vfunc(impl_method_name)
      private def self._vfunc_set_attributes_async(%this : Pointer(Void), lib_info :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @info: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
info=Gio::FileInfo.new(lib_info, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(info, flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 320).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_attributes_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # set_attributes_async: (None)
    # @info:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_attributes_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_attributes_async(%this : Pointer(Void), lib_info :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @info: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_info, lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 320).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_attributes_async = Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_attributes_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_attributes_async : Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # set_attributes_finish: (Throws)
    # @result:
    # @info: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_set_attributes_finish_vfunc(impl_method_name)
      private def self._vfunc_set_attributes_finish(%this : Pointer(Void), lib_result :  Pointer(Void), lib_info :  Pointer(Void), ) : LibC::Int
        # @result: 
# @info: (out) (transfer full) 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)
# Generator::TransferFullArgPlan
# Generator::BuiltInTypeArgPlan
info=Gio::FileInfo.new(lib_info, GICrystal::Transfer::Full)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result, info)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 328).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_attributes_finish(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_attributes_finish: (Throws)
    # @result:
    # @info: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_set_attributes_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_attributes_finish(%this : Pointer(Void), lib_result :  Pointer(Void), lib_info :  Pointer(Void), ) : LibC::Int
# @result: 
# @info: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result, lib_info)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 328).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_attributes_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_attributes_finish(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_attributes_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # set_attributes_from_info: (Throws)
    # @info:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_set_attributes_from_info_vfunc(impl_method_name)
      private def self._vfunc_set_attributes_from_info(%this : Pointer(Void), lib_info :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @info: 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
info=Gio::FileInfo.new(lib_info, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::FileQueryInfoFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(info, flags, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 312).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_attributes_from_info(Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # set_attributes_from_info: (Throws)
    # @info:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_attributes_from_info_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_attributes_from_info(%this : Pointer(Void), lib_info :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @info: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_info, lib_flags, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 312).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_attributes_from_info = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_attributes_from_info(Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_attributes_from_info : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), LibC::Int)? = nil
    end

    # set_display_name: (Throws)
    # @display_name:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_set_display_name_vfunc(impl_method_name)
      private def self._vfunc_set_display_name(%this : Pointer(Void), lib_display_name :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @display_name: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
display_name=::String.new(lib_display_name)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(display_name, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_display_name(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_display_name: (Throws)
    # @display_name:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_set_display_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_display_name(%this : Pointer(Void), lib_display_name :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @display_name: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_display_name, lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_display_name = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_display_name(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_display_name : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))? = nil
    end

    # set_display_name_async: (None)
    # @display_name:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_set_display_name_async_vfunc(impl_method_name)
      private def self._vfunc_set_display_name_async(%this : Pointer(Void), lib_display_name :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @display_name: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
display_name=::String.new(lib_display_name)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(display_name, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_display_name_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # set_display_name_async: (None)
    # @display_name:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_display_name_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_display_name_async(%this : Pointer(Void), lib_display_name :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @display_name: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_display_name, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_display_name_async = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_display_name_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_display_name_async : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # set_display_name_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_set_display_name_finish_vfunc(impl_method_name)
      private def self._vfunc_set_display_name_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
        # @res: 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_display_name_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_display_name_finish: (Throws)
    # @res:
    # Returns: (transfer full)
    private macro _register_unsafe_set_display_name_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_display_name_finish(%this : Pointer(Void), lib_res :  Pointer(Void), ) : Pointer(Void)
# @res: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_display_name_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_display_name_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_display_name_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # start_mountable: (None)
    # @flags:
    # @start_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_start_mountable_vfunc(impl_method_name)
      private def self._vfunc_start_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_start_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @start_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::DriveStartFlags.new(lib_flags)
# Generator::NullableArrayPlan
start_operation=(lib_start_operation.null? ? nil : Gio::MountOperation.new(lib_start_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
start_operation=Gio::MountOperation.new(lib_start_operation, GICrystal::Transfer::None) unless lib_start_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, start_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 728).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_start_mountable(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # start_mountable: (None)
    # @flags:
    # @start_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_start_mountable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_start_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_start_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @start_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_start_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 728).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_start_mountable = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_start_mountable(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_start_mountable : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # start_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_start_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_start_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 736).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_start_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # start_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_start_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_start_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 736).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_start_mountable_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_start_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_start_mountable_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # stop_mountable: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_stop_mountable_vfunc(impl_method_name)
      private def self._vfunc_stop_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountUnmountFlags.new(lib_flags)
# Generator::NullableArrayPlan
mount_operation=(lib_mount_operation.null? ? nil : Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
mount_operation=Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None) unless lib_mount_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, mount_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 744).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_stop_mountable(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # stop_mountable: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_stop_mountable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_stop_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_mount_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 744).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_stop_mountable = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_stop_mountable(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_stop_mountable : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # stop_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_stop_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_stop_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 752).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_stop_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # stop_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_stop_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_stop_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 752).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_stop_mountable_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_stop_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_stop_mountable_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # trash: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_trash_vfunc(impl_method_name)
      private def self._vfunc_trash(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 456).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_trash(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # trash: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_trash_vfunc(impl_method_name)
      private def self._vfunc_unsafe_trash(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 456).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_trash = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_trash(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_trash : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # trash_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_trash_async_vfunc(impl_method_name)
      private def self._vfunc_trash_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_trash_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # trash_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_trash_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_trash_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_trash_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_trash_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_trash_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # trash_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_trash_finish_vfunc(impl_method_name)
      private def self._vfunc_trash_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_trash_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # trash_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_trash_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_trash_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_trash_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_trash_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_trash_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # unmount_mountable: (None)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unmount_mountable_vfunc(impl_method_name)
      private def self._vfunc_unmount_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountUnmountFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 592).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unmount_mountable(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # unmount_mountable: (None)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_unmount_mountable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unmount_mountable(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 592).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unmount_mountable = Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unmount_mountable(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unmount_mountable : Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # unmount_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unmount_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_unmount_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 600).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unmount_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # unmount_mountable_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_unmount_mountable_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unmount_mountable_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 600).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unmount_mountable_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unmount_mountable_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unmount_mountable_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # unmount_mountable_with_operation: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unmount_mountable_with_operation_vfunc(impl_method_name)
      private def self._vfunc_unmount_mountable_with_operation(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountUnmountFlags.new(lib_flags)
# Generator::NullableArrayPlan
mount_operation=(lib_mount_operation.null? ? nil : Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
mount_operation=Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None) unless lib_mount_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, mount_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 768).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unmount_mountable_with_operation(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # unmount_mountable_with_operation: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_unmount_mountable_with_operation_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unmount_mountable_with_operation(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_mount_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 768).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unmount_mountable_with_operation = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unmount_mountable_with_operation(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unmount_mountable_with_operation : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # unmount_mountable_with_operation_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unmount_mountable_with_operation_finish_vfunc(impl_method_name)
      private def self._vfunc_unmount_mountable_with_operation_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 776).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unmount_mountable_with_operation_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # unmount_mountable_with_operation_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_unmount_mountable_with_operation_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unmount_mountable_with_operation_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__File(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 776).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unmount_mountable_with_operation_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unmount_mountable_with_operation_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unmount_mountable_with_operation_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractFile.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractFile < GObject::Object
    include File

    GICrystal.declare_new_method(Gio::AbstractFile, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_file_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractFile.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
