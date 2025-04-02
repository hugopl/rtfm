# Dependencies
require "../g_lib-2.0/g_lib.cr"
require "../g_module-2.0/g_module.cr"
require "../g_object-2.0/g_object.cr"

# C lib declaration
require "./lib_gio.cr"

# Wrappers
require "./action.cr"
require "./action_entry.cr"
require "./action_group.cr"
require "./action_map.cr"
require "./app_info.cr"
require "./app_info_monitor.cr"
require "./app_launch_context.cr"
require "./application.cr"
require "./application_command_line.cr"
require "./async_initable.cr"
require "./async_result.cr"
require "./buffered_input_stream.cr"
require "./buffered_output_stream.cr"
require "./bytes_icon.cr"
require "./cancellable.cr"
require "./charset_converter.cr"
require "./converter.cr"
require "./converter_input_stream.cr"
require "./converter_output_stream.cr"
require "./credentials.cr"
require "./d_bus_action_group.cr"
require "./d_bus_annotation_info.cr"
require "./d_bus_arg_info.cr"
require "./d_bus_auth_observer.cr"
require "./d_bus_connection.cr"
require "./d_bus_error_entry.cr"
require "./d_bus_interface.cr"
require "./d_bus_interface_info.cr"
require "./d_bus_interface_skeleton.cr"
require "./d_bus_interface_v_table.cr"
require "./d_bus_menu_model.cr"
require "./d_bus_message.cr"
require "./d_bus_method_info.cr"
require "./d_bus_method_invocation.cr"
require "./d_bus_node_info.cr"
require "./d_bus_object.cr"
require "./d_bus_object_manager.cr"
require "./d_bus_object_manager_client.cr"
require "./d_bus_object_manager_server.cr"
require "./d_bus_object_proxy.cr"
require "./d_bus_object_skeleton.cr"
require "./d_bus_property_info.cr"
require "./d_bus_proxy.cr"
require "./d_bus_server.cr"
require "./d_bus_signal_info.cr"
require "./d_bus_subtree_v_table.cr"
require "./data_input_stream.cr"
require "./data_output_stream.cr"
require "./datagram_based.cr"
require "./debug_controller.cr"
require "./debug_controller_d_bus.cr"
require "./desktop_app_info.cr"
require "./desktop_app_info_lookup.cr"
require "./drive.cr"
require "./dtls_client_connection.cr"
require "./dtls_connection.cr"
require "./dtls_server_connection.cr"
require "./emblem.cr"
require "./emblemed_icon.cr"
require "./file.cr"
require "./file_attribute_info.cr"
require "./file_attribute_info_list.cr"
require "./file_attribute_matcher.cr"
require "./file_descriptor_based.cr"
require "./file_enumerator.cr"
require "./file_icon.cr"
require "./file_info.cr"
require "./file_input_stream.cr"
require "./file_io_stream.cr"
require "./file_monitor.cr"
require "./file_output_stream.cr"
require "./filename_completer.cr"
require "./filter_input_stream.cr"
require "./filter_output_stream.cr"
require "./icon.cr"
require "./inet_address.cr"
require "./inet_address_mask.cr"
require "./inet_socket_address.cr"
require "./initable.cr"
require "./input_message.cr"
require "./input_stream.cr"
require "./input_vector.cr"
require "./io_extension.cr"
require "./io_extension_point.cr"
require "./io_module.cr"
require "./io_module_scope.cr"
require "./io_scheduler_job.cr"
require "./io_stream.cr"
require "./io_stream_adapter.cr"
require "./list_model.cr"
require "./list_store.cr"
require "./loadable_icon.cr"
require "./memory_input_stream.cr"
require "./memory_monitor.cr"
require "./memory_output_stream.cr"
require "./menu.cr"
require "./menu_attribute_iter.cr"
require "./menu_item.cr"
require "./menu_link_iter.cr"
require "./menu_model.cr"
require "./mount.cr"
require "./mount_operation.cr"
require "./native_socket_address.cr"
require "./native_volume_monitor.cr"
require "./network_address.cr"
require "./network_monitor.cr"
require "./network_service.cr"
require "./notification.cr"
require "./output_message.cr"
require "./output_stream.cr"
require "./output_vector.cr"
require "./permission.cr"
require "./pollable_input_stream.cr"
require "./pollable_output_stream.cr"
require "./power_profile_monitor.cr"
require "./property_action.cr"
require "./proxy.cr"
require "./proxy_address.cr"
require "./proxy_address_enumerator.cr"
require "./proxy_resolver.cr"
require "./remote_action_group.cr"
require "./resolver.cr"
require "./resource.cr"
require "./seekable.cr"
require "./settings.cr"
require "./settings_backend.cr"
require "./settings_schema.cr"
require "./settings_schema_key.cr"
require "./settings_schema_source.cr"
require "./simple_action.cr"
require "./simple_action_group.cr"
require "./simple_async_result.cr"
require "./simple_io_stream.cr"
require "./simple_permission.cr"
require "./simple_proxy_resolver.cr"
require "./socket.cr"
require "./socket_address.cr"
require "./socket_address_enumerator.cr"
require "./socket_client.cr"
require "./socket_connectable.cr"
require "./socket_connection.cr"
require "./socket_control_message.cr"
require "./socket_listener.cr"
require "./socket_service.cr"
require "./srv_target.cr"
require "./subprocess.cr"
require "./subprocess_launcher.cr"
require "./task.cr"
require "./tcp_connection.cr"
require "./tcp_wrapper_connection.cr"
require "./test_d_bus.cr"
require "./themed_icon.cr"
require "./threaded_resolver.cr"
require "./threaded_socket_service.cr"
require "./tls_backend.cr"
require "./tls_certificate.cr"
require "./tls_client_connection.cr"
require "./tls_connection.cr"
require "./tls_database.cr"
require "./tls_file_database.cr"
require "./tls_interaction.cr"
require "./tls_password.cr"
require "./tls_server_connection.cr"
require "./unix_connection.cr"
require "./unix_credentials_message.cr"
require "./unix_fd_list.cr"
require "./unix_fd_message.cr"
require "./unix_input_stream.cr"
require "./unix_mount_entry.cr"
require "./unix_mount_monitor.cr"
require "./unix_mount_point.cr"
require "./unix_output_stream.cr"
require "./unix_socket_address.cr"
require "./vfs.cr"
require "./volume.cr"
require "./volume_monitor.cr"
require "./zlib_compressor.cr"
require "./zlib_decompressor.cr"

module Gio
  DBUS_METHOD_INVOCATION_HANDLED                    = true
  DBUS_METHOD_INVOCATION_UNHANDLED                  = false
  DEBUG_CONTROLLER_EXTENSION_POINT_NAME             = "gio-debug-controller"
  DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME      = "gio-desktop-app-info-lookup"
  DRIVE_IDENTIFIER_KIND_UNIX_DEVICE                 = "unix-device"
  FILE_ATTRIBUTE_ACCESS_CAN_DELETE                  = "access::can-delete"
  FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE                 = "access::can-execute"
  FILE_ATTRIBUTE_ACCESS_CAN_READ                    = "access::can-read"
  FILE_ATTRIBUTE_ACCESS_CAN_RENAME                  = "access::can-rename"
  FILE_ATTRIBUTE_ACCESS_CAN_TRASH                   = "access::can-trash"
  FILE_ATTRIBUTE_ACCESS_CAN_WRITE                   = "access::can-write"
  FILE_ATTRIBUTE_DOS_IS_ARCHIVE                     = "dos::is-archive"
  FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT                  = "dos::is-mountpoint"
  FILE_ATTRIBUTE_DOS_IS_SYSTEM                      = "dos::is-system"
  FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG              = "dos::reparse-point-tag"
  FILE_ATTRIBUTE_ETAG_VALUE                         = "etag::value"
  FILE_ATTRIBUTE_FILESYSTEM_FREE                    = "filesystem::free"
  FILE_ATTRIBUTE_FILESYSTEM_READONLY                = "filesystem::readonly"
  FILE_ATTRIBUTE_FILESYSTEM_REMOTE                  = "filesystem::remote"
  FILE_ATTRIBUTE_FILESYSTEM_SIZE                    = "filesystem::size"
  FILE_ATTRIBUTE_FILESYSTEM_TYPE                    = "filesystem::type"
  FILE_ATTRIBUTE_FILESYSTEM_USED                    = "filesystem::used"
  FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW             = "filesystem::use-preview"
  FILE_ATTRIBUTE_GVFS_BACKEND                       = "gvfs::backend"
  FILE_ATTRIBUTE_ID_FILE                            = "id::file"
  FILE_ATTRIBUTE_ID_FILESYSTEM                      = "id::filesystem"
  FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT                = "mountable::can-eject"
  FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT                = "mountable::can-mount"
  FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL                 = "mountable::can-poll"
  FILE_ATTRIBUTE_MOUNTABLE_CAN_START                = "mountable::can-start"
  FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED       = "mountable::can-start-degraded"
  FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP                 = "mountable::can-stop"
  FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT              = "mountable::can-unmount"
  FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI                  = "mountable::hal-udi"
  FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = "mountable::is-media-check-automatic"
  FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE          = "mountable::start-stop-type"
  FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE              = "mountable::unix-device"
  FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE         = "mountable::unix-device-file"
  FILE_ATTRIBUTE_OWNER_GROUP                        = "owner::group"
  FILE_ATTRIBUTE_OWNER_USER                         = "owner::user"
  FILE_ATTRIBUTE_OWNER_USER_REAL                    = "owner::user-real"
  FILE_ATTRIBUTE_PREVIEW_ICON                       = "preview::icon"
  FILE_ATTRIBUTE_RECENT_MODIFIED                    = "recent::modified"
  FILE_ATTRIBUTE_SELINUX_CONTEXT                    = "selinux::context"
  FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE            = "standard::allocated-size"
  FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE              = "standard::content-type"
  FILE_ATTRIBUTE_STANDARD_COPY_NAME                 = "standard::copy-name"
  FILE_ATTRIBUTE_STANDARD_DESCRIPTION               = "standard::description"
  FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME              = "standard::display-name"
  FILE_ATTRIBUTE_STANDARD_EDIT_NAME                 = "standard::edit-name"
  FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE         = "standard::fast-content-type"
  FILE_ATTRIBUTE_STANDARD_ICON                      = "standard::icon"
  FILE_ATTRIBUTE_STANDARD_IS_BACKUP                 = "standard::is-backup"
  FILE_ATTRIBUTE_STANDARD_IS_HIDDEN                 = "standard::is-hidden"
  FILE_ATTRIBUTE_STANDARD_IS_SYMLINK                = "standard::is-symlink"
  FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL                = "standard::is-virtual"
  FILE_ATTRIBUTE_STANDARD_IS_VOLATILE               = "standard::is-volatile"
  FILE_ATTRIBUTE_STANDARD_NAME                      = "standard::name"
  FILE_ATTRIBUTE_STANDARD_SIZE                      = "standard::size"
  FILE_ATTRIBUTE_STANDARD_SORT_ORDER                = "standard::sort-order"
  FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON             = "standard::symbolic-icon"
  FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET            = "standard::symlink-target"
  FILE_ATTRIBUTE_STANDARD_TARGET_URI                = "standard::target-uri"
  FILE_ATTRIBUTE_STANDARD_TYPE                      = "standard::type"
  FILE_ATTRIBUTE_THUMBNAILING_FAILED                = "thumbnail::failed"
  FILE_ATTRIBUTE_THUMBNAILING_FAILED_LARGE          = "thumbnail::failed-large"
  FILE_ATTRIBUTE_THUMBNAILING_FAILED_NORMAL         = "thumbnail::failed-normal"
  FILE_ATTRIBUTE_THUMBNAILING_FAILED_XLARGE         = "thumbnail::failed-xlarge"
  FILE_ATTRIBUTE_THUMBNAILING_FAILED_XXLARGE        = "thumbnail::failed-xxlarge"
  FILE_ATTRIBUTE_THUMBNAIL_IS_VALID                 = "thumbnail::is-valid"
  FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_LARGE           = "thumbnail::is-valid-large"
  FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_NORMAL          = "thumbnail::is-valid-normal"
  FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XLARGE          = "thumbnail::is-valid-xlarge"
  FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XXLARGE         = "thumbnail::is-valid-xxlarge"
  FILE_ATTRIBUTE_THUMBNAIL_PATH                     = "thumbnail::path"
  FILE_ATTRIBUTE_THUMBNAIL_PATH_LARGE               = "thumbnail::path-large"
  FILE_ATTRIBUTE_THUMBNAIL_PATH_NORMAL              = "thumbnail::path-normal"
  FILE_ATTRIBUTE_THUMBNAIL_PATH_XLARGE              = "thumbnail::path-xlarge"
  FILE_ATTRIBUTE_THUMBNAIL_PATH_XXLARGE             = "thumbnail::path-xxlarge"
  FILE_ATTRIBUTE_TIME_ACCESS                        = "time::access"
  FILE_ATTRIBUTE_TIME_ACCESS_NSEC                   = "time::access-nsec"
  FILE_ATTRIBUTE_TIME_ACCESS_USEC                   = "time::access-usec"
  FILE_ATTRIBUTE_TIME_CHANGED                       = "time::changed"
  FILE_ATTRIBUTE_TIME_CHANGED_NSEC                  = "time::changed-nsec"
  FILE_ATTRIBUTE_TIME_CHANGED_USEC                  = "time::changed-usec"
  FILE_ATTRIBUTE_TIME_CREATED                       = "time::created"
  FILE_ATTRIBUTE_TIME_CREATED_NSEC                  = "time::created-nsec"
  FILE_ATTRIBUTE_TIME_CREATED_USEC                  = "time::created-usec"
  FILE_ATTRIBUTE_TIME_MODIFIED                      = "time::modified"
  FILE_ATTRIBUTE_TIME_MODIFIED_NSEC                 = "time::modified-nsec"
  FILE_ATTRIBUTE_TIME_MODIFIED_USEC                 = "time::modified-usec"
  FILE_ATTRIBUTE_TRASH_DELETION_DATE                = "trash::deletion-date"
  FILE_ATTRIBUTE_TRASH_ITEM_COUNT                   = "trash::item-count"
  FILE_ATTRIBUTE_TRASH_ORIG_PATH                    = "trash::orig-path"
  FILE_ATTRIBUTE_UNIX_BLOCKS                        = "unix::blocks"
  FILE_ATTRIBUTE_UNIX_BLOCK_SIZE                    = "unix::block-size"
  FILE_ATTRIBUTE_UNIX_DEVICE                        = "unix::device"
  FILE_ATTRIBUTE_UNIX_GID                           = "unix::gid"
  FILE_ATTRIBUTE_UNIX_INODE                         = "unix::inode"
  FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT                 = "unix::is-mountpoint"
  FILE_ATTRIBUTE_UNIX_MODE                          = "unix::mode"
  FILE_ATTRIBUTE_UNIX_NLINK                         = "unix::nlink"
  FILE_ATTRIBUTE_UNIX_RDEV                          = "unix::rdev"
  FILE_ATTRIBUTE_UNIX_UID                           = "unix::uid"
  MEMORY_MONITOR_EXTENSION_POINT_NAME               = "gio-memory-monitor"
  MENU_ATTRIBUTE_ACTION                             = "action"
  MENU_ATTRIBUTE_ACTION_NAMESPACE                   = "action-namespace"
  MENU_ATTRIBUTE_ICON                               = "icon"
  MENU_ATTRIBUTE_LABEL                              = "label"
  MENU_ATTRIBUTE_TARGET                             = "target"
  MENU_EXPORTER_MAX_SECTION_SIZE                    = 1000
  MENU_LINK_SECTION                                 = "section"
  MENU_LINK_SUBMENU                                 = "submenu"
  NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME        = "gio-native-volume-monitor"
  NETWORK_MONITOR_EXTENSION_POINT_NAME              = "gio-network-monitor"
  POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME        = "gio-power-profile-monitor"
  PROXY_EXTENSION_POINT_NAME                        = "gio-proxy"
  PROXY_RESOLVER_EXTENSION_POINT_NAME               = "gio-proxy-resolver"
  SETTINGS_BACKEND_EXTENSION_POINT_NAME             = "gsettings-backend"
  TLS_BACKEND_EXTENSION_POINT_NAME                  = "gio-tls-backend"
  TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT          = "1.3.6.1.5.5.7.3.2"
  TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER          = "1.3.6.1.5.5.7.3.1"
  VFS_EXTENSION_POINT_NAME                          = "gio-vfs"
  VOLUME_IDENTIFIER_KIND_CLASS                      = "class"
  VOLUME_IDENTIFIER_KIND_HAL_UDI                    = "hal-udi"
  VOLUME_IDENTIFIER_KIND_LABEL                      = "label"
  VOLUME_IDENTIFIER_KIND_NFS_MOUNT                  = "nfs-mount"
  VOLUME_IDENTIFIER_KIND_UNIX_DEVICE                = "unix-device"
  VOLUME_IDENTIFIER_KIND_UUID                       = "uuid"
  VOLUME_MONITOR_EXTENSION_POINT_NAME               = "gio-volume-monitor"

  # Callbacks

  alias AsyncReadyCallback = Proc(GObject::Object?, Gio::AsyncResult, Nil)

  alias BusAcquiredCallback = Proc(Gio::DBusConnection, ::String, Nil)

  alias BusNameAcquiredCallback = Proc(Gio::DBusConnection, ::String, Nil)

  alias BusNameAppearedCallback = Proc(Gio::DBusConnection, ::String, ::String, Nil)

  alias BusNameLostCallback = Proc(Gio::DBusConnection, ::String, Nil)

  alias BusNameVanishedCallback = Proc(Gio::DBusConnection, ::String, Nil)

  alias CancellableSourceFunc = Proc(Gio::Cancellable?, Bool)

  alias DBusInterfaceGetPropertyFunc = Proc(Gio::DBusConnection, ::String?, ::String, ::String, ::String, GLib::Error, GLib::Variant)

  alias DBusInterfaceMethodCallFunc = Proc(Gio::DBusConnection, ::String?, ::String, ::String?, ::String, GLib::Variant, Gio::DBusMethodInvocation, Nil)

  alias DBusInterfaceSetPropertyFunc = Proc(Gio::DBusConnection, ::String?, ::String, ::String, ::String, GLib::Variant, GLib::Error, Bool)

  alias DBusMessageFilterFunction = Proc(Gio::DBusConnection, Gio::DBusMessage, Bool, Gio::DBusMessage)

  alias DBusProxyTypeFunc = Proc(Gio::DBusObjectManagerClient, ::String, ::String?, UInt64)

  alias DBusSignalCallback = Proc(Gio::DBusConnection, ::String?, ::String, ::String, ::String, GLib::Variant, Nil)

  alias DBusSubtreeDispatchFunc = Proc(Gio::DBusConnection, ::String, ::String, ::String, ::String, Pointer(Void), Gio::DBusInterfaceVTable)

  alias DBusSubtreeEnumerateFunc = Proc(Gio::DBusConnection, ::String, ::String, Enumerable(::String))

  alias DBusSubtreeIntrospectFunc = Proc(Gio::DBusConnection, ::String, ::String, ::String, Enumerable(Gio::DBusInterfaceInfo))

  alias DatagramBasedSourceFunc = Proc(Gio::DatagramBased, GLib::IOCondition, Bool)

  alias DesktopAppLaunchCallback = Proc(Gio::DesktopAppInfo, Int32, Nil)

  alias FileMeasureProgressCallback = Proc(Bool, UInt64, UInt64, UInt64, Nil)

  alias FileProgressCallback = Proc(Int64, Int64, Nil)

  alias FileReadMoreCallback = Proc(::String, Int64, Bool)

  alias IOSchedulerJobFunc = Proc(Gio::IOSchedulerJob, Gio::Cancellable?, Bool)

  alias PollableSourceFunc = Proc(GObject::Object, Bool)

  alias ReallocFunc = Proc(Pointer(Void), UInt64, Pointer(Void))

  alias SettingsBindGetMapping = Proc(GObject::Value, GLib::Variant, Bool)

  alias SettingsBindSetMapping = Proc(GObject::Value, GLib::VariantType, GLib::Variant)

  alias SettingsGetMapping = Proc(GLib::Variant, Pointer(Void), Bool)

  alias SimpleAsyncThreadFunc = Proc(Gio::SimpleAsyncResult, GObject::Object, Gio::Cancellable?, Nil)

  alias SocketSourceFunc = Proc(Gio::Socket, GLib::IOCondition, Bool)

  alias TaskThreadFunc = Proc(Gio::Task, GObject::Object, Pointer(Void), Gio::Cancellable?, Nil)

  alias VfsFileLookupFunc = Proc(Gio::Vfs, ::String, Gio::File)

  # Base class for all errors in this module.
  class GioError < GLib::Error
  end

  # Enums

  enum BusType : Int32
    Starter = -1
    None    =  0
    System  =  1
    Session =  2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_bus_type_get_type
    end
  end

  enum ConverterResult : UInt32
    Error     = 0
    Converted = 1
    Finished  = 2
    Flushed   = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_converter_result_get_type
    end
  end

  enum CredentialsType : UInt32
    Invalid             = 0
    LinuxUcred          = 1
    FreebsdCmsgcred     = 2
    OpenbsdSockpeercred = 3
    SolarisUcred        = 4
    NetbsdUnpcbid       = 5
    AppleXucred         = 6
    Win32Pid            = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_credentials_type_get_type
    end
  end

  enum DBusMessageByteOrder : UInt32
    BigEndian    =  66
    LittleEndian = 108

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_message_byte_order_get_type
    end
  end

  enum DBusMessageHeaderField : UInt32
    Invalid     = 0
    Path        = 1
    Interface   = 2
    Member      = 3
    ErrorName   = 4
    ReplySerial = 5
    Destination = 6
    Sender      = 7
    Signature   = 8
    NumUnixFds  = 9

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_message_header_field_get_type
    end
  end

  enum DBusMessageType : UInt32
    Invalid      = 0
    MethodCall   = 1
    MethodReturn = 2
    Error        = 3
    Signal       = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_message_type_get_type
    end
  end

  enum DataStreamByteOrder : UInt32
    BigEndian    = 0
    LittleEndian = 1
    HostEndian   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_data_stream_byte_order_get_type
    end
  end

  enum DataStreamNewlineType : UInt32
    Lf   = 0
    Cr   = 1
    CrLf = 2
    Any  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_data_stream_newline_type_get_type
    end
  end

  enum DriveStartStopType : UInt32
    Unknown   = 0
    Shutdown  = 1
    Network   = 2
    Multidisk = 3
    Password  = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_drive_start_stop_type_get_type
    end
  end

  enum EmblemOrigin : UInt32
    Unknown      = 0
    Device       = 1
    Livemetadata = 2
    Tag          = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_emblem_origin_get_type
    end
  end

  enum FileAttributeStatus : UInt32
    Unset        = 0
    Set          = 1
    ErrorSetting = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_attribute_status_get_type
    end
  end

  enum FileAttributeType : UInt32
    Invalid    = 0
    String     = 1
    ByteString = 2
    Boolean    = 3
    Uint32     = 4
    Int32      = 5
    Uint64     = 6
    Int64      = 7
    Object     = 8
    Stringv    = 9

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_attribute_type_get_type
    end
  end

  enum FileMonitorEvent : UInt32
    Changed          =  0
    ChangesDoneHint  =  1
    Deleted          =  2
    Created          =  3
    AttributeChanged =  4
    PreUnmount       =  5
    Unmounted        =  6
    Moved            =  7
    Renamed          =  8
    MovedIn          =  9
    MovedOut         = 10

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_monitor_event_get_type
    end
  end

  enum FileType : UInt32
    Unknown      = 0
    Regular      = 1
    Directory    = 2
    SymbolicLink = 3
    Special      = 4
    Shortcut     = 5
    Mountable    = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_type_get_type
    end
  end

  enum FilesystemPreviewType : UInt32
    IfAlways = 0
    IfLocal  = 1
    Never    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_filesystem_preview_type_get_type
    end
  end

  enum IOModuleScopeFlags : UInt32
    None            = 0
    BlockDuplicates = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_io_module_scope_flags_get_type
    end
  end

  enum MemoryMonitorWarningLevel : UInt32
    Low      =  50
    Medium   = 100
    Critical = 255

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_memory_monitor_warning_level_get_type
    end
  end

  enum MountOperationResult : UInt32
    Handled   = 0
    Aborted   = 1
    Unhandled = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_mount_operation_result_get_type
    end
  end

  enum NetworkConnectivity : UInt32
    Local   = 1
    Limited = 2
    Portal  = 3
    Full    = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_network_connectivity_get_type
    end
  end

  enum NotificationPriority : UInt32
    Normal = 0
    Low    = 1
    High   = 2
    Urgent = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_notification_priority_get_type
    end
  end

  enum PasswordSave : UInt32
    Never       = 0
    ForSession  = 1
    Permanently = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_password_save_get_type
    end
  end

  enum PollableReturn : Int32
    Failed     =   0
    Ok         =   1
    WouldBlock = -27

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_pollable_return_get_type
    end
  end

  enum ResolverRecordType : UInt32
    Srv = 1
    Mx  = 2
    Txt = 3
    Soa = 4
    Ns  = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_resolver_record_type_get_type
    end
  end

  enum SocketClientEvent : UInt32
    Resolving        = 0
    Resolved         = 1
    Connecting       = 2
    Connected        = 3
    ProxyNegotiating = 4
    ProxyNegotiated  = 5
    TlsHandshaking   = 6
    TlsHandshaked    = 7
    Complete         = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_socket_client_event_get_type
    end
  end

  enum SocketFamily : UInt32
    Invalid =  0
    Unix    =  1
    Ipv4    =  2
    Ipv6    = 10

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_socket_family_get_type
    end
  end

  enum SocketListenerEvent : UInt32
    Binding   = 0
    Bound     = 1
    Listening = 2
    Listened  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_socket_listener_event_get_type
    end
  end

  enum SocketProtocol : Int32
    Unknown =  -1
    Default =   0
    Tcp     =   6
    Udp     =  17
    Sctp    = 132

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_socket_protocol_get_type
    end
  end

  enum SocketType : UInt32
    Invalid   = 0
    Stream    = 1
    Datagram  = 2
    Seqpacket = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_socket_type_get_type
    end
  end

  enum TlsAuthenticationMode : UInt32
    None      = 0
    Requested = 1
    Required  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_authentication_mode_get_type
    end
  end

  enum TlsCertificateRequestFlags : UInt32
    None = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_certificate_request_flags_get_type
    end
  end

  enum TlsChannelBindingType : UInt32
    Unique         = 0
    ServerEndPoint = 1
    Exporter       = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_channel_binding_type_get_type
    end
  end

  enum TlsDatabaseLookupFlags : UInt32
    None    = 0
    Keypair = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_database_lookup_flags_get_type
    end
  end

  enum TlsInteractionResult : UInt32
    Unhandled = 0
    Handled   = 1
    Failed    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_interaction_result_get_type
    end
  end

  enum TlsProtocolVersion : UInt32
    Unknown =   0
    Ssl30   =   1
    Tls10   =   2
    Tls11   =   3
    Tls12   =   4
    Tls13   =   5
    Dtls10  = 201
    Dtls12  = 202

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_protocol_version_get_type
    end
  end

  enum TlsRehandshakeMode : UInt32
    Never    = 0
    Safely   = 1
    Unsafely = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_rehandshake_mode_get_type
    end
  end

  enum UnixSocketAddressType : UInt32
    Invalid        = 0
    Anonymous      = 1
    Path           = 2
    Abstract       = 3
    AbstractPadded = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_unix_socket_address_type_get_type
    end
  end

  enum ZlibCompressorFormat : UInt32
    Zlib = 0
    Gzip = 1
    Raw  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_zlib_compressor_format_get_type
    end
  end

  # Flags

  @[Flags]
  enum AppInfoCreateFlags : UInt32
    NeedsTerminal               = 1
    SupportsUris                = 2
    SupportsStartupNotification = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_app_info_create_flags_get_type
    end
  end

  @[Flags]
  enum ApplicationFlags : UInt32
    FlagsNone          =   0
    DefaultFlags       =   0
    IsService          =   1
    IsLauncher         =   2
    HandlesOpen        =   4
    HandlesCommandLine =   8
    SendEnvironment    =  16
    NonUnique          =  32
    CanOverrideAppId   =  64
    AllowReplacement   = 128
    Replace            = 256

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_application_flags_get_type
    end
  end

  @[Flags]
  enum AskPasswordFlags : UInt32
    NeedPassword       =  1
    NeedUsername       =  2
    NeedDomain         =  4
    SavingSupported    =  8
    AnonymousSupported = 16
    Tcrypt             = 32

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_ask_password_flags_get_type
    end
  end

  @[Flags]
  enum BusNameOwnerFlags : UInt32
    AllowReplacement = 1
    Replace          = 2
    DoNotQueue       = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_bus_name_owner_flags_get_type
    end
  end

  @[Flags]
  enum BusNameWatcherFlags : UInt32
    AutoStart = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_bus_name_watcher_flags_get_type
    end
  end

  @[Flags]
  enum ConverterFlags : UInt32
    InputAtEnd = 1
    Flush      = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_converter_flags_get_type
    end
  end

  @[Flags]
  enum DBusCallFlags : UInt32
    NoAutoStart                   = 1
    AllowInteractiveAuthorization = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_call_flags_get_type
    end
  end

  @[Flags]
  enum DBusCapabilityFlags : UInt32
    UnixFdPassing = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_capability_flags_get_type
    end
  end

  @[Flags]
  enum DBusConnectionFlags : UInt32
    AuthenticationClient          =  1
    AuthenticationServer          =  2
    AuthenticationAllowAnonymous  =  4
    MessageBusConnection          =  8
    DelayMessageProcessing        = 16
    AuthenticationRequireSameUser = 32
    CrossNamespace                = 64

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_connection_flags_get_type
    end
  end

  @[Flags]
  enum DBusInterfaceSkeletonFlags : UInt32
    HandleMethodInvocationsInThread = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_interface_skeleton_flags_get_type
    end
  end

  @[Flags]
  enum DBusMessageFlags : UInt32
    NoReplyExpected               = 1
    NoAutoStart                   = 2
    AllowInteractiveAuthorization = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_message_flags_get_type
    end
  end

  @[Flags]
  enum DBusObjectManagerClientFlags : UInt32
    DoNotAutoStart = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_object_manager_client_flags_get_type
    end
  end

  @[Flags]
  enum DBusPropertyInfoFlags : UInt32
    Readable = 1
    Writable = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_property_info_flags_get_type
    end
  end

  @[Flags]
  enum DBusProxyFlags : UInt32
    DoNotLoadProperties          =  1
    DoNotConnectSignals          =  2
    DoNotAutoStart               =  4
    GetInvalidatedProperties     =  8
    DoNotAutoStartAtConstruction = 16
    NoMatchRule                  = 32

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_proxy_flags_get_type
    end
  end

  @[Flags]
  enum DBusSendMessageFlags : UInt32
    PreserveSerial = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_send_message_flags_get_type
    end
  end

  @[Flags]
  enum DBusServerFlags : UInt32
    RunInThread                   = 1
    AuthenticationAllowAnonymous  = 2
    AuthenticationRequireSameUser = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_server_flags_get_type
    end
  end

  @[Flags]
  enum DBusSignalFlags : UInt32
    NoMatchRule        = 1
    MatchArg0Namespace = 2
    MatchArg0Path      = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_signal_flags_get_type
    end
  end

  @[Flags]
  enum DBusSubtreeFlags : UInt32
    DispatchToUnenumeratedNodes = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_subtree_flags_get_type
    end
  end

  enum DriveStartFlags : UInt32
    None = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_drive_start_flags_get_type
    end
  end

  @[Flags]
  enum FileAttributeInfoFlags : UInt32
    CopyWithFile  = 1
    CopyWhenMoved = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_attribute_info_flags_get_type
    end
  end

  @[Flags]
  enum FileCopyFlags : UInt32
    Overwrite                 =  1
    Backup                    =  2
    NofollowSymlinks          =  4
    AllMetadata               =  8
    NoFallbackForMove         = 16
    TargetDefaultPerms        = 32
    TargetDefaultModifiedTime = 64

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_copy_flags_get_type
    end
  end

  @[Flags]
  enum FileCreateFlags : UInt32
    Private            = 1
    ReplaceDestination = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_create_flags_get_type
    end
  end

  @[Flags]
  enum FileMeasureFlags : UInt32
    ReportAnyError = 2
    ApparentSize   = 4
    NoXdev         = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_measure_flags_get_type
    end
  end

  @[Flags]
  enum FileMonitorFlags : UInt32
    WatchMounts    = 1
    SendMoved      = 2
    WatchHardLinks = 4
    WatchMoves     = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_monitor_flags_get_type
    end
  end

  @[Flags]
  enum FileQueryInfoFlags : UInt32
    NofollowSymlinks = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_query_info_flags_get_type
    end
  end

  @[Flags]
  enum IOStreamSpliceFlags : UInt32
    CloseStream1 = 1
    CloseStream2 = 2
    WaitForBoth  = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_io_stream_splice_flags_get_type
    end
  end

  enum MountMountFlags : UInt32
    None = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_mount_mount_flags_get_type
    end
  end

  @[Flags]
  enum MountUnmountFlags : UInt32
    Force = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_mount_unmount_flags_get_type
    end
  end

  @[Flags]
  enum OutputStreamSpliceFlags : UInt32
    CloseSource = 1
    CloseTarget = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_output_stream_splice_flags_get_type
    end
  end

  @[Flags]
  enum ResolverNameLookupFlags : UInt32
    Default  = 0
    Ipv4Only = 1
    Ipv6Only = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_resolver_name_lookup_flags_get_type
    end
  end

  @[Flags]
  enum ResourceFlags : UInt32
    Compressed = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_resource_flags_get_type
    end
  end

  enum ResourceLookupFlags : UInt32
    None = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_resource_lookup_flags_get_type
    end
  end

  @[Flags]
  enum SettingsBindFlags : UInt32
    Default       =  0
    Get           =  1
    Set           =  2
    NoSensitivity =  4
    GetNoChanges  =  8
    InvertBoolean = 16

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_settings_bind_flags_get_type
    end
  end

  @[Flags]
  enum SocketMsgFlags : UInt32
    Oob       = 1
    Peek      = 2
    Dontroute = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_socket_msg_flags_get_type
    end
  end

  @[Flags]
  enum SubprocessFlags : UInt32
    StdinPipe          =   1
    StdinInherit       =   2
    StdoutPipe         =   4
    StdoutSilence      =   8
    StderrPipe         =  16
    StderrSilence      =  32
    StderrMerge        =  64
    InheritFds         = 128
    SearchPathFromEnvp = 256

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_subprocess_flags_get_type
    end
  end

  enum TestDBusFlags : UInt32
    None = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_test_dbus_flags_get_type
    end
  end

  @[Flags]
  enum TlsCertificateFlags : UInt32
    NoFlags      =   0
    UnknownCa    =   1
    BadIdentity  =   2
    NotActivated =   4
    Expired      =   8
    Revoked      =  16
    Insecure     =  32
    GenericError =  64
    ValidateAll  = 127

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_certificate_flags_get_type
    end
  end

  enum TlsDatabaseVerifyFlags : UInt32
    None = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_database_verify_flags_get_type
    end
  end

  @[Flags]
  enum TlsPasswordFlags : UInt32
    Retry                 =  2
    ManyTries             =  4
    FinalTry              =  8
    Pkcs11User            = 16
    Pkcs11SecurityOfficer = 32
    Pkcs11ContextSpecific = 64

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_tls_password_flags_get_type
    end
  end

  def self.action_name_is_valid(action_name : ::String) : Bool
    # g_action_name_is_valid: (None)
    # @action_name:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_action_name_is_valid(action_name)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def action_parse_detailed_name(detailed_name : ::String) : Bool
    # g_action_parse_detailed_name: (Throws)
    # @detailed_name:
    # @action_name: (out) (transfer full) (optional)
    # @target_value: (out) (transfer full) (nullable) (optional)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::OutArgUsedInReturnPlan
    action_name = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
    target_value = Pointer(Pointer(Void)).null
    # C call
    _retval = LibGio.g_action_parse_detailed_name(detailed_name, action_name, target_value, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.action_print_detailed_name(action_name : ::String, target_value : _?) : ::String
    # g_action_print_detailed_name: (None)
    # @action_name:
    # @target_value: (nullable)
    # Returns: (transfer full)

    # Generator::HandmadeArgPlan
    target_value = if target_value.nil?
                     Pointer(Void).null
                   elsif !target_value.is_a?(GLib::Variant)
                     GLib::Variant.new(target_value).to_unsafe
                   else
                     target_value.to_unsafe
                   end

    # C call
    _retval = LibGio.g_action_print_detailed_name(action_name, target_value)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def app_info_create_from_commandline(commandline : ::String, application_name : ::String?, flags : Gio::AppInfoCreateFlags) : Gio::AppInfo
    # g_app_info_create_from_commandline: (Throws)
    # @commandline:
    # @application_name: (nullable)
    # @flags:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    application_name = if application_name.nil?
                         Pointer(LibC::Char).null
                       else
                         application_name.to_unsafe
                       end

    # C call
    _retval = LibGio.g_app_info_create_from_commandline(commandline, application_name, flags, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
  end

  def self.app_info_get_all : GLib::List
    # g_app_info_get_all: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_app_info_get_all

    # Return value handling
    GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
  end

  def self.app_info_get_all_for_type(content_type : ::String) : GLib::List
    # g_app_info_get_all_for_type: (None)
    # @content_type:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_app_info_get_all_for_type(content_type)

    # Return value handling
    GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
  end

  def self.app_info_get_default_for_type(content_type : ::String, must_support_uris : Bool) : Gio::AppInfo?
    # g_app_info_get_default_for_type: (None)
    # @content_type:
    # @must_support_uris:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGio.g_app_info_get_default_for_type(content_type, must_support_uris)

    # Return value handling
    Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.app_info_get_default_for_type_async(content_type : ::String, must_support_uris : Bool, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # g_app_info_get_default_for_type_async: (None)
    # @content_type:
    # @must_support_uris:
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
    LibGio.g_app_info_get_default_for_type_async(content_type, must_support_uris, cancellable, callback, user_data)

    # Return value handling
  end

  def app_info_get_default_for_type_finish(result : Gio::AsyncResult) : Gio::AppInfo
    # g_app_info_get_default_for_type_finish: (Throws)
    # @result:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_app_info_get_default_for_type_finish(result, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
  end

  def self.app_info_get_default_for_uri_scheme(uri_scheme : ::String) : Gio::AppInfo?
    # g_app_info_get_default_for_uri_scheme: (None)
    # @uri_scheme:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGio.g_app_info_get_default_for_uri_scheme(uri_scheme)

    # Return value handling
    Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.app_info_get_default_for_uri_scheme_async(uri_scheme : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # g_app_info_get_default_for_uri_scheme_async: (None)
    # @uri_scheme:
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
    LibGio.g_app_info_get_default_for_uri_scheme_async(uri_scheme, cancellable, callback, user_data)

    # Return value handling
  end

  def app_info_get_default_for_uri_scheme_finish(result : Gio::AsyncResult) : Gio::AppInfo
    # g_app_info_get_default_for_uri_scheme_finish: (Throws)
    # @result:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_app_info_get_default_for_uri_scheme_finish(result, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
  end

  def self.app_info_get_fallback_for_type(content_type : ::String) : GLib::List
    # g_app_info_get_fallback_for_type: (None)
    # @content_type:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_app_info_get_fallback_for_type(content_type)

    # Return value handling
    GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
  end

  def self.app_info_get_recommended_for_type(content_type : ::String) : GLib::List
    # g_app_info_get_recommended_for_type: (None)
    # @content_type:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_app_info_get_recommended_for_type(content_type)

    # Return value handling
    GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
  end

  def app_info_launch_default_for_uri(uri : ::String, context : Gio::AppLaunchContext?) : Bool
    # g_app_info_launch_default_for_uri: (Throws)
    # @uri:
    # @context: (nullable)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    context = if context.nil?
                Pointer(Void).null
              else
                context.to_unsafe
              end

    # C call
    _retval = LibGio.g_app_info_launch_default_for_uri(uri, context, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.app_info_launch_default_for_uri_async(uri : ::String, context : Gio::AppLaunchContext?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # g_app_info_launch_default_for_uri_async: (None)
    # @uri:
    # @context: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    context = if context.nil?
                Pointer(Void).null
              else
                context.to_unsafe
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
    LibGio.g_app_info_launch_default_for_uri_async(uri, context, cancellable, callback, user_data)

    # Return value handling
  end

  def app_info_launch_default_for_uri_finish(result : Gio::AsyncResult) : Bool
    # g_app_info_launch_default_for_uri_finish: (Throws)
    # @result:
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_app_info_launch_default_for_uri_finish(result, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.app_info_reset_type_associations(content_type : ::String) : Nil
    # g_app_info_reset_type_associations: (None)
    # @content_type:
    # Returns: (transfer none)

    # C call
    LibGio.g_app_info_reset_type_associations(content_type)

    # Return value handling
  end

  @[Deprecated]
  def self.async_initable_newv_async(object_type : UInt64, n_parameters : UInt32, parameters : GObject::Parameter, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # g_async_initable_newv_async: (None)
    # @object_type:
    # @n_parameters:
    # @parameters:
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
    LibGio.g_async_initable_newv_async(object_type, n_parameters, parameters, io_priority, cancellable, callback, user_data)

    # Return value handling
  end

  def self.bus_get(bus_type : Gio::BusType, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # g_bus_get: (None)
    # @bus_type:
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
    LibGio.g_bus_get(bus_type, cancellable, callback, user_data)

    # Return value handling
  end

  def bus_get_finish(res : Gio::AsyncResult) : Gio::DBusConnection
    # g_bus_get_finish: (Throws)
    # @res:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_bus_get_finish(res, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::DBusConnection.new(_retval, GICrystal::Transfer::Full)
  end

  def bus_get_sync(bus_type : Gio::BusType, cancellable : Gio::Cancellable?) : Gio::DBusConnection
    # g_bus_get_sync: (Throws)
    # @bus_type:
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
    _retval = LibGio.g_bus_get_sync(bus_type, cancellable, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::DBusConnection.new(_retval, GICrystal::Transfer::Full)
  end

  def self.bus_own_name_on_connection(connection : Gio::DBusConnection, name : ::String, flags : Gio::BusNameOwnerFlags, name_acquired_closure : GObject::Closure?, name_lost_closure : GObject::Closure?) : UInt32
    # g_bus_own_name_on_connection_with_closures: (None)
    # @connection:
    # @name:
    # @flags:
    # @name_acquired_closure: (nullable)
    # @name_lost_closure: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    name_acquired_closure = if name_acquired_closure.nil?
                              Pointer(Void).null
                            else
                              name_acquired_closure.to_unsafe
                            end
    # Generator::NullableArrayPlan
    name_lost_closure = if name_lost_closure.nil?
                          Pointer(Void).null
                        else
                          name_lost_closure.to_unsafe
                        end

    # C call
    _retval = LibGio.g_bus_own_name_on_connection_with_closures(connection, name, flags, name_acquired_closure, name_lost_closure)

    # Return value handling
    _retval
  end

  def self.bus_own_name(bus_type : Gio::BusType, name : ::String, flags : Gio::BusNameOwnerFlags, bus_acquired_closure : GObject::Closure?, name_acquired_closure : GObject::Closure?, name_lost_closure : GObject::Closure?) : UInt32
    # g_bus_own_name_with_closures: (None)
    # @bus_type:
    # @name:
    # @flags:
    # @bus_acquired_closure: (nullable)
    # @name_acquired_closure: (nullable)
    # @name_lost_closure: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    bus_acquired_closure = if bus_acquired_closure.nil?
                             Pointer(Void).null
                           else
                             bus_acquired_closure.to_unsafe
                           end
    # Generator::NullableArrayPlan
    name_acquired_closure = if name_acquired_closure.nil?
                              Pointer(Void).null
                            else
                              name_acquired_closure.to_unsafe
                            end
    # Generator::NullableArrayPlan
    name_lost_closure = if name_lost_closure.nil?
                          Pointer(Void).null
                        else
                          name_lost_closure.to_unsafe
                        end

    # C call
    _retval = LibGio.g_bus_own_name_with_closures(bus_type, name, flags, bus_acquired_closure, name_acquired_closure, name_lost_closure)

    # Return value handling
    _retval
  end

  def self.bus_unown_name(owner_id : UInt32) : Nil
    # g_bus_unown_name: (None)
    # @owner_id:
    # Returns: (transfer none)

    # C call
    LibGio.g_bus_unown_name(owner_id)

    # Return value handling
  end

  def self.bus_unwatch_name(watcher_id : UInt32) : Nil
    # g_bus_unwatch_name: (None)
    # @watcher_id:
    # Returns: (transfer none)

    # C call
    LibGio.g_bus_unwatch_name(watcher_id)

    # Return value handling
  end

  def self.bus_watch_name_on_connection(connection : Gio::DBusConnection, name : ::String, flags : Gio::BusNameWatcherFlags, name_appeared_closure : GObject::Closure?, name_vanished_closure : GObject::Closure?) : UInt32
    # g_bus_watch_name_on_connection_with_closures: (None)
    # @connection:
    # @name:
    # @flags:
    # @name_appeared_closure: (nullable)
    # @name_vanished_closure: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    name_appeared_closure = if name_appeared_closure.nil?
                              Pointer(Void).null
                            else
                              name_appeared_closure.to_unsafe
                            end
    # Generator::NullableArrayPlan
    name_vanished_closure = if name_vanished_closure.nil?
                              Pointer(Void).null
                            else
                              name_vanished_closure.to_unsafe
                            end

    # C call
    _retval = LibGio.g_bus_watch_name_on_connection_with_closures(connection, name, flags, name_appeared_closure, name_vanished_closure)

    # Return value handling
    _retval
  end

  def self.bus_watch_name(bus_type : Gio::BusType, name : ::String, flags : Gio::BusNameWatcherFlags, name_appeared_closure : GObject::Closure?, name_vanished_closure : GObject::Closure?) : UInt32
    # g_bus_watch_name_with_closures: (None)
    # @bus_type:
    # @name:
    # @flags:
    # @name_appeared_closure: (nullable)
    # @name_vanished_closure: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    name_appeared_closure = if name_appeared_closure.nil?
                              Pointer(Void).null
                            else
                              name_appeared_closure.to_unsafe
                            end
    # Generator::NullableArrayPlan
    name_vanished_closure = if name_vanished_closure.nil?
                              Pointer(Void).null
                            else
                              name_vanished_closure.to_unsafe
                            end

    # C call
    _retval = LibGio.g_bus_watch_name_with_closures(bus_type, name, flags, name_appeared_closure, name_vanished_closure)

    # Return value handling
    _retval
  end

  def self.content_type_can_be_executable(type : ::String) : Bool
    # g_content_type_can_be_executable: (None)
    # @type:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_content_type_can_be_executable(type)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.content_type_equals(type1 : ::String, type2 : ::String) : Bool
    # g_content_type_equals: (None)
    # @type1:
    # @type2:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_content_type_equals(type1, type2)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.content_type_from_mime_type(mime_type : ::String) : ::String?
    # g_content_type_from_mime_type: (None)
    # @mime_type:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGio.g_content_type_from_mime_type(mime_type)

    # Return value handling
    GICrystal.transfer_full(_retval) unless _retval.null?
  end

  def self.content_type_get_description(type : ::String) : ::String
    # g_content_type_get_description: (None)
    # @type:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_content_type_get_description(type)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.content_type_get_generic_icon_name(type : ::String) : ::String?
    # g_content_type_get_generic_icon_name: (None)
    # @type:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGio.g_content_type_get_generic_icon_name(type)

    # Return value handling
    GICrystal.transfer_full(_retval) unless _retval.null?
  end

  def self.content_type_get_icon(type : ::String) : Gio::Icon
    # g_content_type_get_icon: (None)
    # @type:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_content_type_get_icon(type)

    # Return value handling
    Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
  end

  def self.content_type_get_mime_dirs : Enumerable(::String)
    # g_content_type_get_mime_dirs: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibGio.g_content_type_get_mime_dirs

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.content_type_get_mime_type(type : ::String) : ::String?
    # g_content_type_get_mime_type: (None)
    # @type:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGio.g_content_type_get_mime_type(type)

    # Return value handling
    GICrystal.transfer_full(_retval) unless _retval.null?
  end

  def self.content_type_get_symbolic_icon(type : ::String) : Gio::Icon
    # g_content_type_get_symbolic_icon: (None)
    # @type:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_content_type_get_symbolic_icon(type)

    # Return value handling
    Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
  end

  def self.content_type_guess(filename : ::String?, data : ::Bytes?) : ::String
    # g_content_type_guess: (None)
    # @filename: (nullable)
    # @data: (nullable) (array length=data_size element-type UInt8)
    # @data_size:
    # @result_uncertain: (out) (transfer full) (optional)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    filename = if filename.nil?
                 Pointer(LibC::Char).null
               else
                 filename.to_unsafe
               end
    # Generator::ArrayLengthArgPlan
    data_size = data.try(&.size) || 0
    # Generator::NullableArrayPlan
    data = if data.nil?
             Pointer(UInt8).null
           else
             data.to_unsafe
           end
    # Generator::OutArgUsedInReturnPlan
    result_uncertain = Pointer(LibC::Int).null
    # C call
    _retval = LibGio.g_content_type_guess(filename, data, data_size, result_uncertain)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.content_type_guess_for_tree(root : Gio::File) : Enumerable(::String)
    # g_content_type_guess_for_tree: (None)
    # @root:
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibGio.g_content_type_guess_for_tree(root)

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
  end

  def self.content_type_is_a(type : ::String, supertype : ::String) : Bool
    # g_content_type_is_a: (None)
    # @type:
    # @supertype:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_content_type_is_a(type, supertype)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.content_type_is_mime_type(type : ::String, mime_type : ::String) : Bool
    # g_content_type_is_mime_type: (None)
    # @type:
    # @mime_type:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_content_type_is_mime_type(type, mime_type)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.content_type_is_unknown(type : ::String) : Bool
    # g_content_type_is_unknown: (None)
    # @type:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_content_type_is_unknown(type)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.content_type_set_mime_dirs(dirs : Enumerable(::String)?) : Nil
    # g_content_type_set_mime_dirs: (None)
    # @dirs: (nullable) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    dirs = if dirs.nil?
             Pointer(Pointer(LibC::Char)).null
           else
             dirs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
           end

    # C call
    LibGio.g_content_type_set_mime_dirs(dirs)

    # Return value handling
  end

  def self.content_type_set_mime_dirs(*dirs : ::String)
    self.content_type_set_mime_dirs(dirs)
  end

  def self.content_types_get_registered : GLib::List
    # g_content_types_get_registered: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_content_types_get_registered

    # Return value handling
    GLib::List(::String).new(_retval, GICrystal::Transfer::Full)
  end

  def self.dbus_address_escape_value(string : ::String) : ::String
    # g_dbus_address_escape_value: (None)
    # @string:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_dbus_address_escape_value(string)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def dbus_address_get_for_bus_sync(bus_type : Gio::BusType, cancellable : Gio::Cancellable?) : ::String
    # g_dbus_address_get_for_bus_sync: (Throws)
    # @bus_type:
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
    _retval = LibGio.g_dbus_address_get_for_bus_sync(bus_type, cancellable, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.dbus_address_get_stream(address : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # g_dbus_address_get_stream: (None)
    # @address:
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
    LibGio.g_dbus_address_get_stream(address, cancellable, callback, user_data)

    # Return value handling
  end

  def dbus_address_get_stream_finish(res : Gio::AsyncResult) : Gio::IOStream
    # g_dbus_address_get_stream_finish: (Throws)
    # @res:
    # @out_guid: (out) (transfer full) (nullable) (optional)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::OutArgUsedInReturnPlan
    out_guid = Pointer(Pointer(LibC::Char)).null
    # C call
    _retval = LibGio.g_dbus_address_get_stream_finish(res, out_guid, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::IOStream.new(_retval, GICrystal::Transfer::Full)
  end

  def dbus_address_get_stream_sync(address : ::String, cancellable : Gio::Cancellable?) : Gio::IOStream
    # g_dbus_address_get_stream_sync: (Throws)
    # @address:
    # @out_guid: (out) (transfer full) (nullable) (optional)
    # @cancellable: (nullable)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::OutArgUsedInReturnPlan
    out_guid = Pointer(Pointer(LibC::Char)).null # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end

    # C call
    _retval = LibGio.g_dbus_address_get_stream_sync(address, out_guid, cancellable, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::IOStream.new(_retval, GICrystal::Transfer::Full)
  end

  def self.dbus_annotation_info_lookup(annotations : Enumerable(Gio::DBusAnnotationInfo)?, name : ::String) : ::String?
    # g_dbus_annotation_info_lookup: (None)
    # @annotations: (nullable) (array zero-terminated=1 element-type Interface)
    # @name:
    # Returns: (transfer none) (nullable)

    # Generator::NullableArrayPlan
    annotations = if annotations.nil?
                    Pointer(Pointer(LibGio::DBusAnnotationInfo)).null
                  else
                    annotations.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGio::DBusAnnotationInfo)))
                  end

    # C call
    _retval = LibGio.g_dbus_annotation_info_lookup(annotations, name)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.dbus_error_encode_gerror(error : GLib::Error) : ::String
    # g_dbus_error_encode_gerror: (None)
    # @error:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_dbus_error_encode_gerror(error)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.dbus_error_get_remote_error(error : GLib::Error) : ::String?
    # g_dbus_error_get_remote_error: (None)
    # @error:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGio.g_dbus_error_get_remote_error(error)

    # Return value handling
    GICrystal.transfer_full(_retval) unless _retval.null?
  end

  def self.dbus_error_is_remote_error(error : GLib::Error) : Bool
    # g_dbus_error_is_remote_error: (None)
    # @error:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_error_is_remote_error(error)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_error_new_for_dbus_error(dbus_error_name : ::String, dbus_error_message : ::String) : GLib::Error
    # g_dbus_error_new_for_dbus_error: (None)
    # @dbus_error_name:
    # @dbus_error_message:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_dbus_error_new_for_dbus_error(dbus_error_name, dbus_error_message)

    # Return value handling
    Gio.gerror_to_crystal(_retval, GICrystal::Transfer::Full)
  end

  def self.dbus_error_quark : UInt32
    # g_dbus_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_error_quark

    # Return value handling
    _retval
  end

  def self.dbus_error_register_error(error_domain : UInt32, error_code : Int32, dbus_error_name : ::String) : Bool
    # g_dbus_error_register_error: (None)
    # @error_domain:
    # @error_code:
    # @dbus_error_name:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_error_register_error(error_domain, error_code, dbus_error_name)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_error_register_error_domain(error_domain_quark_name : ::String, quark_volatile : Pointer(UInt64), entries : Enumerable(Gio::DBusErrorEntry)) : Nil
    # g_dbus_error_register_error_domain: (None)
    # @error_domain_quark_name:
    # @quark_volatile:
    # @entries: (array length=num_entries element-type Interface)
    # @num_entries:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    num_entries = entries.size
    # Generator::ArrayArgPlan
    entries = entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::DBusErrorEntry))

    # C call
    LibGio.g_dbus_error_register_error_domain(error_domain_quark_name, quark_volatile, entries, num_entries)

    # Return value handling
  end

  def self.dbus_error_strip_remote_error(error : GLib::Error) : Bool
    # g_dbus_error_strip_remote_error: (None)
    # @error:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_error_strip_remote_error(error)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_error_unregister_error(error_domain : UInt32, error_code : Int32, dbus_error_name : ::String) : Bool
    # g_dbus_error_unregister_error: (None)
    # @error_domain:
    # @error_code:
    # @dbus_error_name:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_error_unregister_error(error_domain, error_code, dbus_error_name)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_escape_object_path(s : ::String) : ::String
    # g_dbus_escape_object_path: (None)
    # @s:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_dbus_escape_object_path(s)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.dbus_escape_object_path_bytestring(bytes : ::Bytes) : ::String
    # g_dbus_escape_object_path_bytestring: (None)
    # @bytes: (array zero-terminated=1 element-type UInt8)
    # Returns: (transfer full)

    # Generator::ArrayArgPlan
    bytes = bytes.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGio.g_dbus_escape_object_path_bytestring(bytes)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.dbus_escape_object_path_bytestring(*bytes : UInt8)
    self.dbus_escape_object_path_bytestring(bytes)
  end

  def self.dbus_generate_guid : ::String
    # g_dbus_generate_guid: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_dbus_generate_guid

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.dbus_gvalue_to_gvariant(gvalue : _, type : GLib::VariantType) : GLib::Variant
    # g_dbus_gvalue_to_gvariant: (None)
    # @gvalue:
    # @type:
    # Returns: (transfer full)

    # Generator::HandmadeArgPlan
    gvalue = if !gvalue.is_a?(GObject::Value)
               GObject::Value.new(gvalue).to_unsafe
             else
               gvalue.to_unsafe
             end

    # C call
    _retval = LibGio.g_dbus_gvalue_to_gvariant(gvalue, type)

    # Return value handling
    GLib::Variant.new(_retval, GICrystal::Transfer::Full)
  end

  def self.dbus_gvariant_to_gvalue(value : _) : GObject::Value
    # g_dbus_gvariant_to_gvalue: (None)
    # @value:
    # @out_gvalue: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GLib::Variant)
              GLib::Variant.new(value).to_unsafe
            else
              value.to_unsafe
            end
    # Generator::CallerAllocatesPlan
    out_gvalue = GObject::Value.new
    # C call
    LibGio.g_dbus_gvariant_to_gvalue(value, out_gvalue)

    # Return value handling
    out_gvalue
  end

  def self.dbus_is_address(string : ::String) : Bool
    # g_dbus_is_address: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_is_address(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_is_error_name(string : ::String) : Bool
    # g_dbus_is_error_name: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_is_error_name(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_is_guid(string : ::String) : Bool
    # g_dbus_is_guid: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_is_guid(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_is_interface_name(string : ::String) : Bool
    # g_dbus_is_interface_name: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_is_interface_name(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_is_member_name(string : ::String) : Bool
    # g_dbus_is_member_name: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_is_member_name(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_is_name(string : ::String) : Bool
    # g_dbus_is_name: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_is_name(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def dbus_is_supported_address(string : ::String) : Bool
    # g_dbus_is_supported_address: (Throws)
    # @string:
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_dbus_is_supported_address(string, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_is_unique_name(string : ::String) : Bool
    # g_dbus_is_unique_name: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_dbus_is_unique_name(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dbus_unescape_object_path(s : ::String) : ::Bytes?
    # g_dbus_unescape_object_path: (None)
    # @s:
    # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type UInt8)

    # C call
    _retval = LibGio.g_dbus_unescape_object_path(s)

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def dtls_client_connection_new(base_socket : Gio::DatagramBased, server_identity : Gio::SocketConnectable?) : Gio::DtlsClientConnection
    # g_dtls_client_connection_new: (Throws)
    # @base_socket:
    # @server_identity: (nullable)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    server_identity = if server_identity.nil?
                        Pointer(Void).null
                      else
                        server_identity.to_unsafe
                      end

    # C call
    _retval = LibGio.g_dtls_client_connection_new(base_socket, server_identity, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractDtlsClientConnection.new(_retval, GICrystal::Transfer::Full)
  end

  def dtls_server_connection_new(base_socket : Gio::DatagramBased, certificate : Gio::TlsCertificate?) : Gio::DtlsServerConnection
    # g_dtls_server_connection_new: (Throws)
    # @base_socket:
    # @certificate: (nullable)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    certificate = if certificate.nil?
                    Pointer(Void).null
                  else
                    certificate.to_unsafe
                  end

    # C call
    _retval = LibGio.g_dtls_server_connection_new(base_socket, certificate, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractDtlsServerConnection.new(_retval, GICrystal::Transfer::Full)
  end

  def self.file_new_build_filenamev(args : Enumerable(::String)) : Gio::File
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

  def self.file_new_build_filenamev(*args : ::String)
    self.file_new_build_filenamev(args)
  end

  def self.file_new_for_commandline_arg(arg : ::String) : Gio::File
    # g_file_new_for_commandline_arg: (None)
    # @arg:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_file_new_for_commandline_arg(arg)

    # Return value handling
    Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
  end

  def self.file_new_for_commandline_arg_and_cwd(arg : ::String, cwd : ::String) : Gio::File
    # g_file_new_for_commandline_arg_and_cwd: (None)
    # @arg:
    # @cwd:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_file_new_for_commandline_arg_and_cwd(arg, cwd)

    # Return value handling
    Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
  end

  def self.file_new_for_path(path : ::String) : Gio::File
    # g_file_new_for_path: (None)
    # @path:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_file_new_for_path(path)

    # Return value handling
    Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
  end

  def self.file_new_for_uri(uri : ::String) : Gio::File
    # g_file_new_for_uri: (None)
    # @uri:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_file_new_for_uri(uri)

    # Return value handling
    Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
  end

  def file_new_tmp(tmpl : ::String?, iostream : Gio::FileIOStream) : Gio::File
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

  def self.file_new_tmp_async(tmpl : ::String?, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
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

  def self.file_new_tmp_dir_async(tmpl : ::String?, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
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

  def file_new_tmp_dir_finish(result : Gio::AsyncResult) : Gio::File
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

  def file_new_tmp_finish(result : Gio::AsyncResult, iostream : Gio::FileIOStream) : Gio::File
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

  def self.file_parse_name(parse_name : ::String) : Gio::File
    # g_file_parse_name: (None)
    # @parse_name:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_file_parse_name(parse_name)

    # Return value handling
    Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full)
  end

  def self.icon_deserialize(value : _) : Gio::Icon?
    # g_icon_deserialize: (None)
    # @value:
    # Returns: (transfer full) (nullable)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GLib::Variant)
              GLib::Variant.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGio.g_icon_deserialize(value)

    # Return value handling
    Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def icon_new_for_string(str : ::String) : Gio::Icon
    # g_icon_new_for_string: (Throws)
    # @str:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_icon_new_for_string(str, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
  end

  @[Deprecated]
  def initable_newv(object_type : UInt64, parameters : Enumerable(GObject::Parameter), cancellable : Gio::Cancellable?) : GObject::Object
    # g_initable_newv: (Throws)
    # @object_type:
    # @n_parameters:
    # @parameters: (array length=n_parameters element-type Interface)
    # @cancellable: (nullable)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::ArrayLengthArgPlan
    n_parameters = parameters.size
    # Generator::ArrayArgPlan
    parameters = parameters.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::Parameter))
    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end

    # C call
    _retval = LibGio.g_initable_newv(object_type, n_parameters, parameters, cancellable, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GObject::Object.new(_retval, GICrystal::Transfer::Full)
  end

  def self.io_error_from_errno(err_no : Int32) : Gio::IOErrorEnum
    # g_io_error_from_errno: (None)
    # @err_no:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_io_error_from_errno(err_no)

    # Return value handling
    Gio::IOErrorEnum.new(_retval)
  end

  def self.io_error_from_file_error(file_error : GLib::FileError) : Gio::IOErrorEnum
    # g_io_error_from_file_error: (None)
    # @file_error:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_io_error_from_file_error(file_error)

    # Return value handling
    Gio::IOErrorEnum.new(_retval)
  end

  def self.io_error_quark : UInt32
    # g_io_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_io_error_quark

    # Return value handling
    _retval
  end

  def self.io_extension_point_implement(extension_point_name : ::String, type : UInt64, extension_name : ::String, priority : Int32) : Gio::IOExtension
    # g_io_extension_point_implement: (None)
    # @extension_point_name:
    # @type:
    # @extension_name:
    # @priority:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_io_extension_point_implement(extension_point_name, type, extension_name, priority)

    # Return value handling
    Gio::IOExtension.new(_retval, GICrystal::Transfer::None)
  end

  def self.io_extension_point_lookup(name : ::String) : Gio::IOExtensionPoint
    # g_io_extension_point_lookup: (None)
    # @name:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_io_extension_point_lookup(name)

    # Return value handling
    Gio::IOExtensionPoint.new(_retval, GICrystal::Transfer::None)
  end

  def self.io_extension_point_register(name : ::String) : Gio::IOExtensionPoint
    # g_io_extension_point_register: (None)
    # @name:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_io_extension_point_register(name)

    # Return value handling
    Gio::IOExtensionPoint.new(_retval, GICrystal::Transfer::None)
  end

  def self.io_modules_load_all_in_directory(dirname : ::String) : GLib::List
    # g_io_modules_load_all_in_directory: (None)
    # @dirname:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_io_modules_load_all_in_directory(dirname)

    # Return value handling
    GLib::List(Gio::IOModule).new(_retval, GICrystal::Transfer::Full)
  end

  def self.io_modules_load_all_in_directory_with_scope(dirname : ::String, scope : Gio::IOModuleScope) : GLib::List
    # g_io_modules_load_all_in_directory_with_scope: (None)
    # @dirname:
    # @scope:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_io_modules_load_all_in_directory_with_scope(dirname, scope)

    # Return value handling
    GLib::List(Gio::IOModule).new(_retval, GICrystal::Transfer::Full)
  end

  def self.io_modules_scan_all_in_directory(dirname : ::String) : Nil
    # g_io_modules_scan_all_in_directory: (None)
    # @dirname:
    # Returns: (transfer none)

    # C call
    LibGio.g_io_modules_scan_all_in_directory(dirname)

    # Return value handling
  end

  def self.io_modules_scan_all_in_directory_with_scope(dirname : ::String, scope : Gio::IOModuleScope) : Nil
    # g_io_modules_scan_all_in_directory_with_scope: (None)
    # @dirname:
    # @scope:
    # Returns: (transfer none)

    # C call
    LibGio.g_io_modules_scan_all_in_directory_with_scope(dirname, scope)

    # Return value handling
  end

  @[Deprecated]
  def self.io_scheduler_cancel_all_jobs : Nil
    # g_io_scheduler_cancel_all_jobs: (None)
    # Returns: (transfer none)

    # C call
    LibGio.g_io_scheduler_cancel_all_jobs

    # Return value handling
  end

  @[Deprecated]
  def self.io_scheduler_push_job(job_func : Gio::IOSchedulerJobFunc, user_data : Pointer(Void)?, notify : GLib::DestroyNotify?, io_priority : Int32, cancellable : Gio::Cancellable?) : Nil
    # g_io_scheduler_push_job: (None)
    # @job_func:
    # @user_data: (nullable)
    # @notify: (nullable)
    # @io_priority:
    # @cancellable: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end
    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end

    # C call
    LibGio.g_io_scheduler_push_job(job_func, user_data, notify, io_priority, cancellable)

    # Return value handling
  end

  def self.keyfile_settings_backend_new(filename : ::String, root_path : ::String, root_group : ::String?) : Gio::SettingsBackend
    # g_keyfile_settings_backend_new: (None)
    # @filename:
    # @root_path:
    # @root_group: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    root_group = if root_group.nil?
                   Pointer(LibC::Char).null
                 else
                   root_group.to_unsafe
                 end

    # C call
    _retval = LibGio.g_keyfile_settings_backend_new(filename, root_path, root_group)

    # Return value handling
    Gio::SettingsBackend.new(_retval, GICrystal::Transfer::Full)
  end

  def self.memory_monitor_dup_default : Gio::MemoryMonitor
    # g_memory_monitor_dup_default: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_memory_monitor_dup_default

    # Return value handling
    Gio::AbstractMemoryMonitor.new(_retval, GICrystal::Transfer::Full)
  end

  def self.memory_settings_backend_new : Gio::SettingsBackend
    # g_memory_settings_backend_new: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_memory_settings_backend_new

    # Return value handling
    Gio::SettingsBackend.new(_retval, GICrystal::Transfer::Full)
  end

  def self.network_monitor_get_default : Gio::NetworkMonitor
    # g_network_monitor_get_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_network_monitor_get_default

    # Return value handling
    Gio::AbstractNetworkMonitor.new(_retval, GICrystal::Transfer::None)
  end

  def self.networking_init : Nil
    # g_networking_init: (None)
    # Returns: (transfer none)

    # C call
    LibGio.g_networking_init

    # Return value handling
  end

  def self.null_settings_backend_new : Gio::SettingsBackend
    # g_null_settings_backend_new: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_null_settings_backend_new

    # Return value handling
    Gio::SettingsBackend.new(_retval, GICrystal::Transfer::Full)
  end

  def self.pollable_source_new(pollable_stream : GObject::Object) : GLib::Source
    # g_pollable_source_new: (None)
    # @pollable_stream:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_pollable_source_new(pollable_stream)

    # Return value handling
    GLib::Source.new(_retval, GICrystal::Transfer::Full)
  end

  def self.pollable_source_new_full(pollable_stream : GObject::Object, child_source : GLib::Source?, cancellable : Gio::Cancellable?) : GLib::Source
    # g_pollable_source_new_full: (None)
    # @pollable_stream:
    # @child_source: (nullable)
    # @cancellable: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    child_source = if child_source.nil?
                     Pointer(Void).null
                   else
                     child_source.to_unsafe
                   end
    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end

    # C call
    _retval = LibGio.g_pollable_source_new_full(pollable_stream, child_source, cancellable)

    # Return value handling
    GLib::Source.new(_retval, GICrystal::Transfer::Full)
  end

  def pollable_stream_read(stream : Gio::InputStream, buffer : ::Bytes, blocking : Bool, cancellable : Gio::Cancellable?) : Int64
    # g_pollable_stream_read: (Throws)
    # @stream:
    # @buffer: (array length=count element-type UInt8)
    # @count:
    # @blocking:
    # @cancellable: (nullable)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::ArrayLengthArgPlan
    count = buffer.size
    # Generator::ArrayArgPlan
    buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end

    # C call
    _retval = LibGio.g_pollable_stream_read(stream, buffer, count, blocking, cancellable, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    _retval
  end

  def pollable_stream_write(stream : Gio::OutputStream, buffer : ::Bytes, blocking : Bool, cancellable : Gio::Cancellable?) : Int64
    # g_pollable_stream_write: (Throws)
    # @stream:
    # @buffer: (array length=count element-type UInt8)
    # @count:
    # @blocking:
    # @cancellable: (nullable)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::ArrayLengthArgPlan
    count = buffer.size
    # Generator::ArrayArgPlan
    buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end

    # C call
    _retval = LibGio.g_pollable_stream_write(stream, buffer, count, blocking, cancellable, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    _retval
  end

  def pollable_stream_write_all(stream : Gio::OutputStream, buffer : ::Bytes, blocking : Bool, bytes_written : UInt64, cancellable : Gio::Cancellable?) : Bool
    # g_pollable_stream_write_all: (Throws)
    # @stream:
    # @buffer: (array length=count element-type UInt8)
    # @count:
    # @blocking:
    # @bytes_written: (out) (transfer full)
    # @cancellable: (nullable)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::ArrayLengthArgPlan
    count = buffer.size
    # Generator::ArrayArgPlan
    buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end

    # C call
    _retval = LibGio.g_pollable_stream_write_all(stream, buffer, count, blocking, bytes_written, cancellable, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.power_profile_monitor_dup_default : Gio::PowerProfileMonitor
    # g_power_profile_monitor_dup_default: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_power_profile_monitor_dup_default

    # Return value handling
    Gio::AbstractPowerProfileMonitor.new(_retval, GICrystal::Transfer::Full)
  end

  def self.proxy_get_default_for_protocol(protocol : ::String) : Gio::Proxy?
    # g_proxy_get_default_for_protocol: (None)
    # @protocol:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGio.g_proxy_get_default_for_protocol(protocol)

    # Return value handling
    Gio::AbstractProxy.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.proxy_resolver_get_default : Gio::ProxyResolver
    # g_proxy_resolver_get_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_proxy_resolver_get_default

    # Return value handling
    Gio::AbstractProxyResolver.new(_retval, GICrystal::Transfer::None)
  end

  def self.resolver_error_quark : UInt32
    # g_resolver_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_resolver_error_quark

    # Return value handling
    _retval
  end

  def self.resource_error_quark : UInt32
    # g_resource_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_resource_error_quark

    # Return value handling
    _retval
  end

  def resource_load(filename : ::String) : Gio::Resource
    # g_resource_load: (Throws)
    # @filename:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_resource_load(filename, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::Resource.new(_retval, GICrystal::Transfer::Full)
  end

  def resources_enumerate_children(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : Enumerable(::String)
    # g_resources_enumerate_children: (Throws)
    # @path:
    # @lookup_flags:
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_resources_enumerate_children(path, lookup_flags, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
  end

  def resources_get_info(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : Bool
    # g_resources_get_info: (Throws)
    # @path:
    # @lookup_flags:
    # @size: (out) (transfer full) (optional)
    # @flags: (out) (transfer full) (optional)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::OutArgUsedInReturnPlan
    size = Pointer(UInt64).null # Generator::OutArgUsedInReturnPlan
    flags = Pointer(UInt32).null
    # C call
    _retval = LibGio.g_resources_get_info(path, lookup_flags, size, flags, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.resources_has_children(path : ::String) : Bool
    # g_resources_has_children: (None)
    # @path:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_resources_has_children(path)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def resources_lookup_data(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : GLib::Bytes
    # g_resources_lookup_data: (Throws)
    # @path:
    # @lookup_flags:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_resources_lookup_data(path, lookup_flags, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
  end

  def resources_open_stream(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : Gio::InputStream
    # g_resources_open_stream: (Throws)
    # @path:
    # @lookup_flags:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_resources_open_stream(path, lookup_flags, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
  end

  def self.resources_register(resource : Gio::Resource) : Nil
    # g_resources_register: (None)
    # @resource:
    # Returns: (transfer none)

    # C call
    LibGio.g_resources_register(resource)

    # Return value handling
  end

  def self.resources_unregister(resource : Gio::Resource) : Nil
    # g_resources_unregister: (None)
    # @resource:
    # Returns: (transfer none)

    # C call
    LibGio.g_resources_unregister(resource)

    # Return value handling
  end

  def self.settings_schema_source_get_default : Gio::SettingsSchemaSource?
    # g_settings_schema_source_get_default: (None)
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGio.g_settings_schema_source_get_default

    # Return value handling
    Gio::SettingsSchemaSource.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  @[Deprecated]
  def self.simple_async_report_gerror_in_idle(object : GObject::Object?, callback : Gio::AsyncReadyCallback?, user_data : Pointer(Void)?, error : GLib::Error) : Nil
    # g_simple_async_report_gerror_in_idle: (None)
    # @object: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # @error:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    object = if object.nil?
               Pointer(Void).null
             else
               object.to_unsafe
             end
    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibGio.g_simple_async_report_gerror_in_idle(object, callback, user_data, error)

    # Return value handling
  end

  def self.tls_backend_get_default : Gio::TlsBackend
    # g_tls_backend_get_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_tls_backend_get_default

    # Return value handling
    Gio::AbstractTlsBackend.new(_retval, GICrystal::Transfer::None)
  end

  def self.tls_channel_binding_error_quark : UInt32
    # g_tls_channel_binding_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_tls_channel_binding_error_quark

    # Return value handling
    _retval
  end

  def tls_client_connection_new(base_io_stream : Gio::IOStream, server_identity : Gio::SocketConnectable?) : Gio::TlsClientConnection
    # g_tls_client_connection_new: (Throws)
    # @base_io_stream:
    # @server_identity: (nullable)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    server_identity = if server_identity.nil?
                        Pointer(Void).null
                      else
                        server_identity.to_unsafe
                      end

    # C call
    _retval = LibGio.g_tls_client_connection_new(base_io_stream, server_identity, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractTlsClientConnection.new(_retval, GICrystal::Transfer::Full)
  end

  def self.tls_error_quark : UInt32
    # g_tls_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_tls_error_quark

    # Return value handling
    _retval
  end

  def tls_file_database_new(anchors : ::String) : Gio::TlsFileDatabase
    # g_tls_file_database_new: (Throws)
    # @anchors:
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGio.g_tls_file_database_new(anchors, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractTlsFileDatabase.new(_retval, GICrystal::Transfer::Full)
  end

  def tls_server_connection_new(base_io_stream : Gio::IOStream, certificate : Gio::TlsCertificate?) : Gio::TlsServerConnection
    # g_tls_server_connection_new: (Throws)
    # @base_io_stream:
    # @certificate: (nullable)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    certificate = if certificate.nil?
                    Pointer(Void).null
                  else
                    certificate.to_unsafe
                  end

    # C call
    _retval = LibGio.g_tls_server_connection_new(base_io_stream, certificate, pointerof(_error))

    # Error check
    Gio.raise_gerror(_error) unless _error.null?

    # Return value handling
    Gio::AbstractTlsServerConnection.new(_retval, GICrystal::Transfer::Full)
  end

  def self.unix_is_mount_path_system_internal(mount_path : ::String) : Bool
    # g_unix_is_mount_path_system_internal: (None)
    # @mount_path:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_is_mount_path_system_internal(mount_path)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.unix_is_system_device_path(device_path : ::String) : Bool
    # g_unix_is_system_device_path: (None)
    # @device_path:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_is_system_device_path(device_path)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.unix_is_system_fs_type(fs_type : ::String) : Bool
    # g_unix_is_system_fs_type: (None)
    # @fs_type:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_is_system_fs_type(fs_type)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.unix_mount_at(mount_path : ::String) : Gio::UnixMountEntry?
    # g_unix_mount_at: (None)
    # @mount_path:
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full) (nullable)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mount_at(mount_path, time_read)

    # Return value handling
    Gio::UnixMountEntry.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  @[Deprecated]
  def self.unix_mount_compare(mount1 : Gio::UnixMountEntry, mount2 : Gio::UnixMountEntry) : Int32
    # g_unix_mount_compare: (None)
    # @mount1:
    # @mount2:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_compare(mount1, mount2)

    # Return value handling
    _retval
  end

  @[Deprecated]
  def self.unix_mount_copy(mount_entry : Gio::UnixMountEntry) : Gio::UnixMountEntry
    # g_unix_mount_copy: (None)
    # @mount_entry:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_unix_mount_copy(mount_entry)

    # Return value handling
    Gio::UnixMountEntry.new(_retval, GICrystal::Transfer::Full)
  end

  def self.unix_mount_entries_changed_since(time : UInt64) : Bool
    # g_unix_mount_entries_changed_since: (None)
    # @time:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_entries_changed_since(time)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.unix_mount_entries_get : GLib::List
    # g_unix_mount_entries_get: (None)
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mount_entries_get(time_read)

    # Return value handling
    GLib::List(Gio::UnixMountEntry).new(_retval, GICrystal::Transfer::Full)
  end

  def self.unix_mount_entries_get_from_file(table_path : ::String) : UInt64
    # g_unix_mount_entries_get_from_file: (None)
    # @table_path:
    # @time_read_out: (out) (caller-allocates) (optional)
    # @n_entries_out: (out) (transfer full) (caller-allocates) (optional)
    # Returns: (transfer full) (nullable) (array length=n_entries_out element-type Interface)

    # Generator::OutArgUsedInReturnPlan
    time_read_out = Pointer(UInt64).null # Generator::CallerAllocatesPlan
    time_read_out = UInt64.new           # Generator::OutArgUsedInReturnPlan
    n_entries_out = 0_u64                # Generator::CallerAllocatesPlan
    n_entries_out = UInt64.new
    # C call
    _retval = LibGio.g_unix_mount_entries_get_from_file(table_path, time_read_out, pointerof(n_entries_out))

    # Return value handling
    time_read_out unless _retval.null?
  end

  def self.unix_mount_entry_at(mount_path : ::String) : Gio::UnixMountEntry?
    # g_unix_mount_entry_at: (None)
    # @mount_path:
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full) (nullable)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mount_entry_at(mount_path, time_read)

    # Return value handling
    Gio::UnixMountEntry.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.unix_mount_entry_for(file_path : ::String) : Gio::UnixMountEntry?
    # g_unix_mount_entry_for: (None)
    # @file_path:
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full) (nullable)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mount_entry_for(file_path, time_read)

    # Return value handling
    Gio::UnixMountEntry.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  @[Deprecated]
  def self.unix_mount_for(file_path : ::String) : Gio::UnixMountEntry?
    # g_unix_mount_for: (None)
    # @file_path:
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full) (nullable)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mount_for(file_path, time_read)

    # Return value handling
    Gio::UnixMountEntry.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  @[Deprecated]
  def self.unix_mount_free(mount_entry : Gio::UnixMountEntry) : Nil
    # g_unix_mount_free: (None)
    # @mount_entry:
    # Returns: (transfer none)

    # C call
    LibGio.g_unix_mount_free(mount_entry)

    # Return value handling
  end

  @[Deprecated]
  def self.unix_mount_get_device_path(mount_entry : Gio::UnixMountEntry) : ::Path
    # g_unix_mount_get_device_path: (None)
    # @mount_entry:
    # Returns: (transfer none) (filename)

    # C call
    _retval = LibGio.g_unix_mount_get_device_path(mount_entry)

    # Return value handling
    ::Path.new(::String.new(_retval))
  end

  @[Deprecated]
  def self.unix_mount_get_fs_type(mount_entry : Gio::UnixMountEntry) : ::String
    # g_unix_mount_get_fs_type: (None)
    # @mount_entry:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_get_fs_type(mount_entry)

    # Return value handling
    ::String.new(_retval)
  end

  @[Deprecated]
  def self.unix_mount_get_mount_path(mount_entry : Gio::UnixMountEntry) : ::Path
    # g_unix_mount_get_mount_path: (None)
    # @mount_entry:
    # Returns: (transfer none) (filename)

    # C call
    _retval = LibGio.g_unix_mount_get_mount_path(mount_entry)

    # Return value handling
    ::Path.new(::String.new(_retval))
  end

  @[Deprecated]
  def self.unix_mount_get_options(mount_entry : Gio::UnixMountEntry) : ::String?
    # g_unix_mount_get_options: (None)
    # @mount_entry:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGio.g_unix_mount_get_options(mount_entry)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  @[Deprecated]
  def self.unix_mount_get_root_path(mount_entry : Gio::UnixMountEntry) : ::String?
    # g_unix_mount_get_root_path: (None)
    # @mount_entry:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGio.g_unix_mount_get_root_path(mount_entry)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  @[Deprecated]
  def self.unix_mount_guess_can_eject(mount_entry : Gio::UnixMountEntry) : Bool
    # g_unix_mount_guess_can_eject: (None)
    # @mount_entry:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_guess_can_eject(mount_entry)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.unix_mount_guess_icon(mount_entry : Gio::UnixMountEntry) : Gio::Icon
    # g_unix_mount_guess_icon: (None)
    # @mount_entry:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_unix_mount_guess_icon(mount_entry)

    # Return value handling
    Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
  end

  @[Deprecated]
  def self.unix_mount_guess_name(mount_entry : Gio::UnixMountEntry) : ::String
    # g_unix_mount_guess_name: (None)
    # @mount_entry:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_unix_mount_guess_name(mount_entry)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  @[Deprecated]
  def self.unix_mount_guess_should_display(mount_entry : Gio::UnixMountEntry) : Bool
    # g_unix_mount_guess_should_display: (None)
    # @mount_entry:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_guess_should_display(mount_entry)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.unix_mount_guess_symbolic_icon(mount_entry : Gio::UnixMountEntry) : Gio::Icon
    # g_unix_mount_guess_symbolic_icon: (None)
    # @mount_entry:
    # Returns: (transfer full)

    # C call
    _retval = LibGio.g_unix_mount_guess_symbolic_icon(mount_entry)

    # Return value handling
    Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
  end

  @[Deprecated]
  def self.unix_mount_is_readonly(mount_entry : Gio::UnixMountEntry) : Bool
    # g_unix_mount_is_readonly: (None)
    # @mount_entry:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_is_readonly(mount_entry)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.unix_mount_is_system_internal(mount_entry : Gio::UnixMountEntry) : Bool
    # g_unix_mount_is_system_internal: (None)
    # @mount_entry:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_is_system_internal(mount_entry)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.unix_mount_point_at(mount_path : ::String) : Gio::UnixMountPoint?
    # g_unix_mount_point_at: (None)
    # @mount_path:
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full) (nullable)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mount_point_at(mount_path, time_read)

    # Return value handling
    Gio::UnixMountPoint.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.unix_mount_points_changed_since(time : UInt64) : Bool
    # g_unix_mount_points_changed_since: (None)
    # @time:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mount_points_changed_since(time)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.unix_mount_points_get : GLib::List
    # g_unix_mount_points_get: (None)
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mount_points_get(time_read)

    # Return value handling
    GLib::List(Gio::UnixMountPoint).new(_retval, GICrystal::Transfer::Full)
  end

  def self.unix_mount_points_get_from_file(table_path : ::String) : UInt64
    # g_unix_mount_points_get_from_file: (None)
    # @table_path:
    # @time_read_out: (out) (caller-allocates) (optional)
    # @n_points_out: (out) (transfer full) (caller-allocates) (optional)
    # Returns: (transfer full) (nullable) (array length=n_points_out element-type Interface)

    # Generator::OutArgUsedInReturnPlan
    time_read_out = Pointer(UInt64).null # Generator::CallerAllocatesPlan
    time_read_out = UInt64.new           # Generator::OutArgUsedInReturnPlan
    n_points_out = 0_u64                 # Generator::CallerAllocatesPlan
    n_points_out = UInt64.new
    # C call
    _retval = LibGio.g_unix_mount_points_get_from_file(table_path, time_read_out, pointerof(n_points_out))

    # Return value handling
    time_read_out unless _retval.null?
  end

  @[Deprecated]
  def self.unix_mounts_changed_since(time : UInt64) : Bool
    # g_unix_mounts_changed_since: (None)
    # @time:
    # Returns: (transfer none)

    # C call
    _retval = LibGio.g_unix_mounts_changed_since(time)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.unix_mounts_get : GLib::List
    # g_unix_mounts_get: (None)
    # @time_read: (out) (transfer full) (optional)
    # Returns: (transfer full)

    # Generator::OutArgUsedInReturnPlan
    time_read = Pointer(UInt64).null
    # C call
    _retval = LibGio.g_unix_mounts_get(time_read)

    # Return value handling
    GLib::List(Gio::UnixMountEntry).new(_retval, GICrystal::Transfer::Full)
  end

  @[Deprecated]
  def self.unix_mounts_get_from_file(table_path : ::String) : UInt64
    # g_unix_mounts_get_from_file: (None)
    # @table_path:
    # @time_read_out: (out) (caller-allocates) (optional)
    # @n_entries_out: (out) (transfer full) (caller-allocates) (optional)
    # Returns: (transfer full) (nullable) (array length=n_entries_out element-type Interface)

    # Generator::OutArgUsedInReturnPlan
    time_read_out = Pointer(UInt64).null # Generator::CallerAllocatesPlan
    time_read_out = UInt64.new           # Generator::OutArgUsedInReturnPlan
    n_entries_out = 0_u64                # Generator::CallerAllocatesPlan
    n_entries_out = UInt64.new
    # C call
    _retval = LibGio.g_unix_mounts_get_from_file(table_path, time_read_out, pointerof(n_entries_out))

    # Return value handling
    time_read_out unless _retval.null?
  end

  # Errors

  class DBusError < GioError
    class Failed < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoMemory < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ServiceUnknown < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NameHasNoOwner < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoReply < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class IoError < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadAddress < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotSupported < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class LimitsExceeded < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AccessDenied < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 9, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AuthFailed < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 10, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoServer < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 11, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Timeout < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 12, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoNetwork < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 13, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AddressInUse < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 14, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Disconnected < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 15, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidArgs < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 16, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FileNotFound < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 17, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FileExists < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 18, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownMethod < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 19, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TimedOut < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 20, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MatchRuleNotFound < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 21, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MatchRuleInvalid < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 22, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnExecFailed < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 23, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnForkFailed < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 24, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnChildExited < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 25, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnChildSignaled < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 26, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnFailed < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 27, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnSetupFailed < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 28, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnConfigInvalid < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 29, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnServiceInvalid < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 30, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnServiceNotFound < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 31, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnPermissionsInvalid < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 32, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnFileInvalid < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 33, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SpawnNoMemory < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 34, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnixProcessIdUnknown < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 35, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidSignature < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 36, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidFileContent < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 37, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SelinuxSecurityContextUnknown < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 38, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AdtAuditDataUnknown < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 39, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ObjectPathInUse < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 40, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownObject < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 41, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownInterface < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 42, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownProperty < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 43, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class PropertyReadOnly < DBusError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-dbus-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 44, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class IOErrorEnum < GioError
    class Failed < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotFound < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Exists < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class IsDirectory < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotDirectory < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotEmpty < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotRegularFile < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotSymbolicLink < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotMountableFile < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FilenameTooLong < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 9, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidFilename < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 10, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManyLinks < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 11, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoSpace < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 12, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidArgument < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 13, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class PermissionDenied < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 14, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotSupported < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 15, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotMounted < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 16, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AlreadyMounted < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 17, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Closed < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 18, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Cancelled < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 19, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Pending < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 20, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ReadOnly < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 21, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CantCreateBackup < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 22, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class WrongEtag < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 23, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TimedOut < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 24, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class WouldRecurse < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 25, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Busy < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 26, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class WouldBlock < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 27, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class HostNotFound < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 28, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class WouldMerge < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 29, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FailedHandled < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 30, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManyOpenFiles < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 31, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotInitialized < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 32, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AddressInUse < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 33, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class PartialInput < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 34, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidData < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 35, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class DbusError < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 36, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class HostUnreachable < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 37, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NetworkUnreachable < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 38, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ConnectionRefused < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 39, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ProxyFailed < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 40, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ProxyAuthFailed < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 41, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ProxyNeedAuth < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 42, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ProxyNotAllowed < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 43, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BrokenPipe < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 44, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ConnectionClosed < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 44, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotConnected < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 45, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MessageTooLarge < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 46, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoSuchDevice < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 47, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class DestinationUnset < IOErrorEnum
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 48, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class ResolverError < GioError
    class NotFound < ResolverError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-resolver-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TemporaryFailure < ResolverError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-resolver-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Internal < ResolverError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-resolver-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class ResourceError < GioError
    class NotFound < ResourceError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-resource-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Internal < ResourceError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-resource-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class TlsChannelBindingError < GioError
    class NotImplemented < TlsChannelBindingError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-channel-binding-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidState < TlsChannelBindingError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-channel-binding-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotAvailable < TlsChannelBindingError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-channel-binding-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotSupported < TlsChannelBindingError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-channel-binding-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class GeneralError < TlsChannelBindingError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-channel-binding-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class TlsError < GioError
    class Unavailable < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Misc < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadCertificate < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotTls < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Handshake < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CertificateRequired < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Eof < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InappropriateFallback < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadCertificatePassword < TlsError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-tls-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    error_domain = error.value.domain
    error_code = error.value.code

    if error_domain == LibGLib.g_quark_try_string("g-dbus-error-quark")
      return DBusError::Failed.new(error, transfer) if error_code == 0
      return DBusError::NoMemory.new(error, transfer) if error_code == 1
      return DBusError::ServiceUnknown.new(error, transfer) if error_code == 2
      return DBusError::NameHasNoOwner.new(error, transfer) if error_code == 3
      return DBusError::NoReply.new(error, transfer) if error_code == 4
      return DBusError::IoError.new(error, transfer) if error_code == 5
      return DBusError::BadAddress.new(error, transfer) if error_code == 6
      return DBusError::NotSupported.new(error, transfer) if error_code == 7
      return DBusError::LimitsExceeded.new(error, transfer) if error_code == 8
      return DBusError::AccessDenied.new(error, transfer) if error_code == 9
      return DBusError::AuthFailed.new(error, transfer) if error_code == 10
      return DBusError::NoServer.new(error, transfer) if error_code == 11
      return DBusError::Timeout.new(error, transfer) if error_code == 12
      return DBusError::NoNetwork.new(error, transfer) if error_code == 13
      return DBusError::AddressInUse.new(error, transfer) if error_code == 14
      return DBusError::Disconnected.new(error, transfer) if error_code == 15
      return DBusError::InvalidArgs.new(error, transfer) if error_code == 16
      return DBusError::FileNotFound.new(error, transfer) if error_code == 17
      return DBusError::FileExists.new(error, transfer) if error_code == 18
      return DBusError::UnknownMethod.new(error, transfer) if error_code == 19
      return DBusError::TimedOut.new(error, transfer) if error_code == 20
      return DBusError::MatchRuleNotFound.new(error, transfer) if error_code == 21
      return DBusError::MatchRuleInvalid.new(error, transfer) if error_code == 22
      return DBusError::SpawnExecFailed.new(error, transfer) if error_code == 23
      return DBusError::SpawnForkFailed.new(error, transfer) if error_code == 24
      return DBusError::SpawnChildExited.new(error, transfer) if error_code == 25
      return DBusError::SpawnChildSignaled.new(error, transfer) if error_code == 26
      return DBusError::SpawnFailed.new(error, transfer) if error_code == 27
      return DBusError::SpawnSetupFailed.new(error, transfer) if error_code == 28
      return DBusError::SpawnConfigInvalid.new(error, transfer) if error_code == 29
      return DBusError::SpawnServiceInvalid.new(error, transfer) if error_code == 30
      return DBusError::SpawnServiceNotFound.new(error, transfer) if error_code == 31
      return DBusError::SpawnPermissionsInvalid.new(error, transfer) if error_code == 32
      return DBusError::SpawnFileInvalid.new(error, transfer) if error_code == 33
      return DBusError::SpawnNoMemory.new(error, transfer) if error_code == 34
      return DBusError::UnixProcessIdUnknown.new(error, transfer) if error_code == 35
      return DBusError::InvalidSignature.new(error, transfer) if error_code == 36
      return DBusError::InvalidFileContent.new(error, transfer) if error_code == 37
      return DBusError::SelinuxSecurityContextUnknown.new(error, transfer) if error_code == 38
      return DBusError::AdtAuditDataUnknown.new(error, transfer) if error_code == 39
      return DBusError::ObjectPathInUse.new(error, transfer) if error_code == 40
      return DBusError::UnknownObject.new(error, transfer) if error_code == 41
      return DBusError::UnknownInterface.new(error, transfer) if error_code == 42
      return DBusError::UnknownProperty.new(error, transfer) if error_code == 43
      return DBusError::PropertyReadOnly.new(error, transfer) if error_code == 44
    end

    if error_domain == LibGLib.g_quark_try_string("g-io-error-quark")
      return IOErrorEnum::Failed.new(error, transfer) if error_code == 0
      return IOErrorEnum::NotFound.new(error, transfer) if error_code == 1
      return IOErrorEnum::Exists.new(error, transfer) if error_code == 2
      return IOErrorEnum::IsDirectory.new(error, transfer) if error_code == 3
      return IOErrorEnum::NotDirectory.new(error, transfer) if error_code == 4
      return IOErrorEnum::NotEmpty.new(error, transfer) if error_code == 5
      return IOErrorEnum::NotRegularFile.new(error, transfer) if error_code == 6
      return IOErrorEnum::NotSymbolicLink.new(error, transfer) if error_code == 7
      return IOErrorEnum::NotMountableFile.new(error, transfer) if error_code == 8
      return IOErrorEnum::FilenameTooLong.new(error, transfer) if error_code == 9
      return IOErrorEnum::InvalidFilename.new(error, transfer) if error_code == 10
      return IOErrorEnum::TooManyLinks.new(error, transfer) if error_code == 11
      return IOErrorEnum::NoSpace.new(error, transfer) if error_code == 12
      return IOErrorEnum::InvalidArgument.new(error, transfer) if error_code == 13
      return IOErrorEnum::PermissionDenied.new(error, transfer) if error_code == 14
      return IOErrorEnum::NotSupported.new(error, transfer) if error_code == 15
      return IOErrorEnum::NotMounted.new(error, transfer) if error_code == 16
      return IOErrorEnum::AlreadyMounted.new(error, transfer) if error_code == 17
      return IOErrorEnum::Closed.new(error, transfer) if error_code == 18
      return IOErrorEnum::Cancelled.new(error, transfer) if error_code == 19
      return IOErrorEnum::Pending.new(error, transfer) if error_code == 20
      return IOErrorEnum::ReadOnly.new(error, transfer) if error_code == 21
      return IOErrorEnum::CantCreateBackup.new(error, transfer) if error_code == 22
      return IOErrorEnum::WrongEtag.new(error, transfer) if error_code == 23
      return IOErrorEnum::TimedOut.new(error, transfer) if error_code == 24
      return IOErrorEnum::WouldRecurse.new(error, transfer) if error_code == 25
      return IOErrorEnum::Busy.new(error, transfer) if error_code == 26
      return IOErrorEnum::WouldBlock.new(error, transfer) if error_code == 27
      return IOErrorEnum::HostNotFound.new(error, transfer) if error_code == 28
      return IOErrorEnum::WouldMerge.new(error, transfer) if error_code == 29
      return IOErrorEnum::FailedHandled.new(error, transfer) if error_code == 30
      return IOErrorEnum::TooManyOpenFiles.new(error, transfer) if error_code == 31
      return IOErrorEnum::NotInitialized.new(error, transfer) if error_code == 32
      return IOErrorEnum::AddressInUse.new(error, transfer) if error_code == 33
      return IOErrorEnum::PartialInput.new(error, transfer) if error_code == 34
      return IOErrorEnum::InvalidData.new(error, transfer) if error_code == 35
      return IOErrorEnum::DbusError.new(error, transfer) if error_code == 36
      return IOErrorEnum::HostUnreachable.new(error, transfer) if error_code == 37
      return IOErrorEnum::NetworkUnreachable.new(error, transfer) if error_code == 38
      return IOErrorEnum::ConnectionRefused.new(error, transfer) if error_code == 39
      return IOErrorEnum::ProxyFailed.new(error, transfer) if error_code == 40
      return IOErrorEnum::ProxyAuthFailed.new(error, transfer) if error_code == 41
      return IOErrorEnum::ProxyNeedAuth.new(error, transfer) if error_code == 42
      return IOErrorEnum::ProxyNotAllowed.new(error, transfer) if error_code == 43
      return IOErrorEnum::BrokenPipe.new(error, transfer) if error_code == 44
      return IOErrorEnum::ConnectionClosed.new(error, transfer) if error_code == 44
      return IOErrorEnum::NotConnected.new(error, transfer) if error_code == 45
      return IOErrorEnum::MessageTooLarge.new(error, transfer) if error_code == 46
      return IOErrorEnum::NoSuchDevice.new(error, transfer) if error_code == 47
      return IOErrorEnum::DestinationUnset.new(error, transfer) if error_code == 48
    end

    if error_domain == LibGLib.g_quark_try_string("g-resolver-error-quark")
      return ResolverError::NotFound.new(error, transfer) if error_code == 0
      return ResolverError::TemporaryFailure.new(error, transfer) if error_code == 1
      return ResolverError::Internal.new(error, transfer) if error_code == 2
    end

    if error_domain == LibGLib.g_quark_try_string("g-resource-error-quark")
      return ResourceError::NotFound.new(error, transfer) if error_code == 0
      return ResourceError::Internal.new(error, transfer) if error_code == 1
    end

    if error_domain == LibGLib.g_quark_try_string("g-tls-channel-binding-error-quark")
      return TlsChannelBindingError::NotImplemented.new(error, transfer) if error_code == 0
      return TlsChannelBindingError::InvalidState.new(error, transfer) if error_code == 1
      return TlsChannelBindingError::NotAvailable.new(error, transfer) if error_code == 2
      return TlsChannelBindingError::NotSupported.new(error, transfer) if error_code == 3
      return TlsChannelBindingError::GeneralError.new(error, transfer) if error_code == 4
    end

    if error_domain == LibGLib.g_quark_try_string("g-tls-error-quark")
      return TlsError::Unavailable.new(error, transfer) if error_code == 0
      return TlsError::Misc.new(error, transfer) if error_code == 1
      return TlsError::BadCertificate.new(error, transfer) if error_code == 2
      return TlsError::NotTls.new(error, transfer) if error_code == 3
      return TlsError::Handshake.new(error, transfer) if error_code == 4
      return TlsError::CertificateRequired.new(error, transfer) if error_code == 5
      return TlsError::Eof.new(error, transfer) if error_code == 6
      return TlsError::InappropriateFallback.new(error, transfer) if error_code == 7
      return TlsError::BadCertificatePassword.new(error, transfer) if error_code == 8
    end

    GLib.gerror_to_crystal?(error, transfer)
    GModule.gerror_to_crystal?(error, transfer)
    GObject.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../bindings/gio/application.cr"
require "../../bindings/gio/resource.cr"
require "../../bindings/gio/list_model"
