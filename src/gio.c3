
///START MODULE gio
module gio;

import glib;

import gmodule;

import gobject;


enum AppInfoCreateFlags : int (inline int s) {
  NEEDS_TERMINAL = 1,
  NONE = 0,
  SUPPORTS_STARTUP_NOTIFICATION = 4,
  SUPPORTS_URIS = 2,
}

enum ApplicationFlags : int (inline int s) {
  ALLOW_REPLACEMENT = 128,
  CAN_OVERRIDE_APP_ID = 64,
  DEFAULT_FLAGS = 0,
  FLAGS_NONE = 0,
  HANDLES_COMMAND_LINE = 8,
  HANDLES_OPEN = 4,
  IS_LAUNCHER = 2,
  IS_SERVICE = 1,
  NON_UNIQUE = 32,
  REPLACE = 256,
  SEND_ENVIRONMENT = 16,
}

enum AskPasswordFlags : int (inline int s) {
  ANONYMOUS_SUPPORTED = 16,
  NEED_DOMAIN = 4,
  NEED_PASSWORD = 1,
  NEED_USERNAME = 2,
  SAVING_SUPPORTED = 8,
  TCRYPT = 32,
}

enum BusNameOwnerFlags : int (inline int s) {
  ALLOW_REPLACEMENT = 1,
  DO_NOT_QUEUE = 4,
  NONE = 0,
  REPLACE = 2,
}

enum BusNameWatcherFlags : int (inline int s) {
  AUTO_START = 1,
  NONE = 0,
}

enum ConverterFlags : int (inline int s) {
  FLUSH = 2,
  INPUT_AT_END = 1,
  NONE = 0,
}

enum DBusCallFlags : int (inline int s) {
  ALLOW_INTERACTIVE_AUTHORIZATION = 2,
  NONE = 0,
  NO_AUTO_START = 1,
}

enum DBusCapabilityFlags : int (inline int s) {
  NONE = 0,
  UNIX_FD_PASSING = 1,
}

enum DBusConnectionFlags : int (inline int s) {
  AUTHENTICATION_ALLOW_ANONYMOUS = 4,
  AUTHENTICATION_CLIENT = 1,
  AUTHENTICATION_REQUIRE_SAME_USER = 32,
  AUTHENTICATION_SERVER = 2,
  CROSS_NAMESPACE = 64,
  DELAY_MESSAGE_PROCESSING = 16,
  MESSAGE_BUS_CONNECTION = 8,
  NONE = 0,
}

enum DBusInterfaceSkeletonFlags : int (inline int s) {
  HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1,
  NONE = 0,
}

enum DBusMessageFlags : int (inline int s) {
  ALLOW_INTERACTIVE_AUTHORIZATION = 4,
  NONE = 0,
  NO_AUTO_START = 2,
  NO_REPLY_EXPECTED = 1,
}

enum DBusObjectManagerClientFlags : int (inline int s) {
  DO_NOT_AUTO_START = 1,
  NONE = 0,
}

enum DBusPropertyInfoFlags : int (inline int s) {
  NONE = 0,
  READABLE = 1,
  WRITABLE = 2,
}

enum DBusProxyFlags : int (inline int s) {
  DO_NOT_AUTO_START = 4,
  DO_NOT_AUTO_START_AT_CONSTRUCTION = 16,
  DO_NOT_CONNECT_SIGNALS = 2,
  DO_NOT_LOAD_PROPERTIES = 1,
  GET_INVALIDATED_PROPERTIES = 8,
  NONE = 0,
  NO_MATCH_RULE = 32,
}

enum DBusSendMessageFlags : int (inline int s) {
  NONE = 0,
  PRESERVE_SERIAL = 1,
}

enum DBusServerFlags : int (inline int s) {
  AUTHENTICATION_ALLOW_ANONYMOUS = 2,
  AUTHENTICATION_REQUIRE_SAME_USER = 4,
  NONE = 0,
  RUN_IN_THREAD = 1,
}

enum DBusSignalFlags : int (inline int s) {
  MATCH_ARG0_NAMESPACE = 2,
  MATCH_ARG0_PATH = 4,
  NONE = 0,
  NO_MATCH_RULE = 1,
}

enum DBusSubtreeFlags : int (inline int s) {
  DISPATCH_TO_UNENUMERATED_NODES = 1,
  NONE = 0,
}

enum DriveStartFlags : int (inline int s) {
  NONE = 0,
}

enum FileAttributeInfoFlags : int (inline int s) {
  COPY_WHEN_MOVED = 2,
  COPY_WITH_FILE = 1,
  NONE = 0,
}

enum FileCopyFlags : int (inline int s) {
  ALL_METADATA = 8,
  BACKUP = 2,
  NOFOLLOW_SYMLINKS = 4,
  NONE = 0,
  NO_FALLBACK_FOR_MOVE = 16,
  OVERWRITE = 1,
  TARGET_DEFAULT_MODIFIED_TIME = 64,
  TARGET_DEFAULT_PERMS = 32,
}

enum FileCreateFlags : int (inline int s) {
  NONE = 0,
  PRIVATE = 1,
  REPLACE_DESTINATION = 2,
}

enum FileMeasureFlags : int (inline int s) {
  APPARENT_SIZE = 4,
  NONE = 0,
  NO_XDEV = 8,
  REPORT_ANY_ERROR = 2,
}

enum FileMonitorFlags : int (inline int s) {
  NONE = 0,
  SEND_MOVED = 2,
  WATCH_HARD_LINKS = 4,
  WATCH_MOUNTS = 1,
  WATCH_MOVES = 8,
}

enum FileQueryInfoFlags : int (inline int s) {
  NOFOLLOW_SYMLINKS = 1,
  NONE = 0,
}

enum IOStreamSpliceFlags : int (inline int s) {
  CLOSE_STREAM1 = 1,
  CLOSE_STREAM2 = 2,
  NONE = 0,
  WAIT_FOR_BOTH = 4,
}

enum MountMountFlags : int (inline int s) {
  NONE = 0,
}

enum MountUnmountFlags : int (inline int s) {
  FORCE = 1,
  NONE = 0,
}

enum OutputStreamSpliceFlags : int (inline int s) {
  CLOSE_SOURCE = 1,
  CLOSE_TARGET = 2,
  NONE = 0,
}

enum ResolverNameLookupFlags : int (inline int s) {
  DEFAULT = 0,
  IPV4_ONLY = 1,
  IPV6_ONLY = 2,
}

enum ResourceFlags : int (inline int s) {
  COMPRESSED = 1,
  NONE = 0,
}

enum ResourceLookupFlags : int (inline int s) {
  NONE = 0,
}

enum SettingsBindFlags : int (inline int s) {
  DEFAULT = 0,
  GET = 1,
  GET_NO_CHANGES = 8,
  INVERT_BOOLEAN = 16,
  NO_SENSITIVITY = 4,
  SET = 2,
}

enum SocketMsgFlags : int (inline int s) {
  DONTROUTE = 4,
  NONE = 0,
  OOB = 1,
  PEEK = 2,
}

enum SubprocessFlags : int (inline int s) {
  INHERIT_FDS = 128,
  NONE = 0,
  SEARCH_PATH_FROM_ENVP = 256,
  STDERR_MERGE = 64,
  STDERR_PIPE = 16,
  STDERR_SILENCE = 32,
  STDIN_INHERIT = 2,
  STDIN_PIPE = 1,
  STDOUT_PIPE = 4,
  STDOUT_SILENCE = 8,
}

enum TestDBusFlags : int (inline int s) {
  NONE = 0,
}

enum TlsCertificateFlags : int (inline int s) {
  BAD_IDENTITY = 2,
  EXPIRED = 8,
  GENERIC_ERROR = 64,
  INSECURE = 32,
  NOT_ACTIVATED = 4,
  NO_FLAGS = 0,
  REVOKED = 16,
  UNKNOWN_CA = 1,
  VALIDATE_ALL = 127,
}

enum TlsDatabaseVerifyFlags : int (inline int s) {
  NONE = 0,
}

enum TlsPasswordFlags : int (inline int s) {
  FINAL_TRY = 8,
  MANY_TRIES = 4,
  NONE = 0,
  PKCS11_CONTEXT_SPECIFIC = 64,
  PKCS11_SECURITY_OFFICER = 32,
  PKCS11_USER = 16,
  RETRY = 2,
}

enum BusType : int (inline int s) {
  NONE = 0,
  SESSION = 2,
  STARTER = -1,
  SYSTEM = 1,
}

enum ConverterResult : int (inline int s) {
  CONVERTED = 1,
  ERROR = 0,
  FINISHED = 2,
  FLUSHED = 3,
}

enum CredentialsType : int (inline int s) {
  APPLE_XUCRED = 6,
  FREEBSD_CMSGCRED = 2,
  INVALID = 0,
  LINUX_UCRED = 1,
  NETBSD_UNPCBID = 5,
  OPENBSD_SOCKPEERCRED = 3,
  SOLARIS_UCRED = 4,
  WIN32_PID = 7,
}

enum DBusError : int (inline int s) {
  ACCESS_DENIED = 9,
  ADDRESS_IN_USE = 14,
  ADT_AUDIT_DATA_UNKNOWN = 39,
  AUTH_FAILED = 10,
  BAD_ADDRESS = 6,
  DISCONNECTED = 15,
  FAILED = 0,
  FILE_EXISTS = 18,
  FILE_NOT_FOUND = 17,
  INVALID_ARGS = 16,
  INVALID_FILE_CONTENT = 37,
  INVALID_SIGNATURE = 36,
  IO_ERROR = 5,
  LIMITS_EXCEEDED = 8,
  MATCH_RULE_INVALID = 22,
  MATCH_RULE_NOT_FOUND = 21,
  NAME_HAS_NO_OWNER = 3,
  NOT_SUPPORTED = 7,
  NO_MEMORY = 1,
  NO_NETWORK = 13,
  NO_REPLY = 4,
  NO_SERVER = 11,
  OBJECT_PATH_IN_USE = 40,
  PROPERTY_READ_ONLY = 44,
  SELINUX_SECURITY_CONTEXT_UNKNOWN = 38,
  SERVICE_UNKNOWN = 2,
  SPAWN_CHILD_EXITED = 25,
  SPAWN_CHILD_SIGNALED = 26,
  SPAWN_CONFIG_INVALID = 29,
  SPAWN_EXEC_FAILED = 23,
  SPAWN_FAILED = 27,
  SPAWN_FILE_INVALID = 33,
  SPAWN_FORK_FAILED = 24,
  SPAWN_NO_MEMORY = 34,
  SPAWN_PERMISSIONS_INVALID = 32,
  SPAWN_SERVICE_INVALID = 30,
  SPAWN_SERVICE_NOT_FOUND = 31,
  SPAWN_SETUP_FAILED = 28,
  TIMED_OUT = 20,
  TIMEOUT = 12,
  UNIX_PROCESS_ID_UNKNOWN = 35,
  UNKNOWN_INTERFACE = 42,
  UNKNOWN_METHOD = 19,
  UNKNOWN_OBJECT = 41,
  UNKNOWN_PROPERTY = 43,
}

enum DBusMessageByteOrder : int (inline int s) {
  BIG_ENDIAN = 66,
  LITTLE_ENDIAN = 108,
}

enum DBusMessageHeaderField : int (inline int s) {
  DESTINATION = 6,
  ERROR_NAME = 4,
  INTERFACE = 2,
  INVALID = 0,
  MEMBER = 3,
  NUM_UNIX_FDS = 9,
  PATH = 1,
  REPLY_SERIAL = 5,
  SENDER = 7,
  SIGNATURE = 8,
}

enum DBusMessageType : int (inline int s) {
  ERROR = 3,
  INVALID = 0,
  METHOD_CALL = 1,
  METHOD_RETURN = 2,
  SIGNAL = 4,
}

enum DataStreamByteOrder : int (inline int s) {
  BIG_ENDIAN = 0,
  HOST_ENDIAN = 2,
  LITTLE_ENDIAN = 1,
}

enum DataStreamNewlineType : int (inline int s) {
  ANY = 3,
  CR = 1,
  CR_LF = 2,
  LF = 0,
}

enum DriveStartStopType : int (inline int s) {
  MULTIDISK = 3,
  NETWORK = 2,
  PASSWORD = 4,
  SHUTDOWN = 1,
  UNKNOWN = 0,
}

enum EmblemOrigin : int (inline int s) {
  DEVICE = 1,
  LIVEMETADATA = 2,
  TAG = 3,
  UNKNOWN = 0,
}

enum FileAttributeStatus : int (inline int s) {
  ERROR_SETTING = 2,
  SET = 1,
  UNSET = 0,
}

enum FileAttributeType : int (inline int s) {
  BOOLEAN = 3,
  BYTE_STRING = 2,
  INT32 = 5,
  INT64 = 7,
  INVALID = 0,
  OBJECT = 8,
  STRING = 1,
  STRINGV = 9,
  UINT32 = 4,
  UINT64 = 6,
}

enum FileMonitorEvent : int (inline int s) {
  ATTRIBUTE_CHANGED = 4,
  CHANGED = 0,
  CHANGES_DONE_HINT = 1,
  CREATED = 3,
  DELETED = 2,
  MOVED = 7,
  MOVED_IN = 9,
  MOVED_OUT = 10,
  PRE_UNMOUNT = 5,
  RENAMED = 8,
  UNMOUNTED = 6,
}

enum FileType : int (inline int s) {
  DIRECTORY = 2,
  MOUNTABLE = 6,
  REGULAR = 1,
  SHORTCUT = 5,
  SPECIAL = 4,
  SYMBOLIC_LINK = 3,
  UNKNOWN = 0,
}

enum FilesystemPreviewType : int (inline int s) {
  IF_ALWAYS = 0,
  IF_LOCAL = 1,
  NEVER = 2,
}

enum IOErrorEnum : int (inline int s) {
  ADDRESS_IN_USE = 33,
  ALREADY_MOUNTED = 17,
  BROKEN_PIPE = 44,
  BUSY = 26,
  CANCELLED = 19,
  CANT_CREATE_BACKUP = 22,
  CLOSED = 18,
  CONNECTION_CLOSED = 44,
  CONNECTION_REFUSED = 39,
  DBUS_ERROR = 36,
  DESTINATION_UNSET = 48,
  EXISTS = 2,
  FAILED = 0,
  FAILED_HANDLED = 30,
  FILENAME_TOO_LONG = 9,
  HOST_NOT_FOUND = 28,
  HOST_UNREACHABLE = 37,
  INVALID_ARGUMENT = 13,
  INVALID_DATA = 35,
  INVALID_FILENAME = 10,
  IS_DIRECTORY = 3,
  MESSAGE_TOO_LARGE = 46,
  NETWORK_UNREACHABLE = 38,
  NOT_CONNECTED = 45,
  NOT_DIRECTORY = 4,
  NOT_EMPTY = 5,
  NOT_FOUND = 1,
  NOT_INITIALIZED = 32,
  NOT_MOUNTABLE_FILE = 8,
  NOT_MOUNTED = 16,
  NOT_REGULAR_FILE = 6,
  NOT_SUPPORTED = 15,
  NOT_SYMBOLIC_LINK = 7,
  NO_SPACE = 12,
  NO_SUCH_DEVICE = 47,
  PARTIAL_INPUT = 34,
  PENDING = 20,
  PERMISSION_DENIED = 14,
  PROXY_AUTH_FAILED = 41,
  PROXY_FAILED = 40,
  PROXY_NEED_AUTH = 42,
  PROXY_NOT_ALLOWED = 43,
  READ_ONLY = 21,
  TIMED_OUT = 24,
  TOO_MANY_LINKS = 11,
  TOO_MANY_OPEN_FILES = 31,
  WOULD_BLOCK = 27,
  WOULD_MERGE = 29,
  WOULD_RECURSE = 25,
  WRONG_ETAG = 23,
}

enum IOModuleScopeFlags : int (inline int s) {
  BLOCK_DUPLICATES = 1,
  NONE = 0,
}

enum MemoryMonitorWarningLevel : int (inline int s) {
  CRITICAL = 255,
  LOW = 50,
  MEDIUM = 100,
}

enum MountOperationResult : int (inline int s) {
  ABORTED = 1,
  HANDLED = 0,
  UNHANDLED = 2,
}

enum NetworkConnectivity : int (inline int s) {
  FULL = 4,
  LIMITED = 2,
  LOCAL = 1,
  PORTAL = 3,
}

enum NotificationPriority : int (inline int s) {
  HIGH = 2,
  LOW = 1,
  NORMAL = 0,
  URGENT = 3,
}

enum PasswordSave : int (inline int s) {
  FOR_SESSION = 1,
  NEVER = 0,
  PERMANENTLY = 2,
}

enum PollableReturn : int (inline int s) {
  FAILED = 0,
  OK = 1,
  WOULD_BLOCK = -27,
}

enum ResolverError : int (inline int s) {
  INTERNAL = 2,
  NOT_FOUND = 0,
  TEMPORARY_FAILURE = 1,
}

enum ResolverRecordType : int (inline int s) {
  MX = 2,
  NS = 5,
  SOA = 4,
  SRV = 1,
  TXT = 3,
}

enum ResourceError : int (inline int s) {
  INTERNAL = 1,
  NOT_FOUND = 0,
}

enum SocketClientEvent : int (inline int s) {
  COMPLETE = 8,
  CONNECTED = 3,
  CONNECTING = 2,
  PROXY_NEGOTIATED = 5,
  PROXY_NEGOTIATING = 4,
  RESOLVED = 1,
  RESOLVING = 0,
  TLS_HANDSHAKED = 7,
  TLS_HANDSHAKING = 6,
}

enum SocketFamily : int (inline int s) {
  INVALID = 0,
  IPV4 = 2,
  IPV6 = 10,
  UNIX = 1,
}

enum SocketListenerEvent : int (inline int s) {
  BINDING = 0,
  BOUND = 1,
  LISTENED = 3,
  LISTENING = 2,
}

enum SocketProtocol : int (inline int s) {
  DEFAULT = 0,
  SCTP = 132,
  TCP = 6,
  UDP = 17,
  UNKNOWN = -1,
}

enum SocketType : int (inline int s) {
  DATAGRAM = 2,
  INVALID = 0,
  SEQPACKET = 3,
  STREAM = 1,
}

enum TlsAuthenticationMode : int (inline int s) {
  NONE = 0,
  REQUESTED = 1,
  REQUIRED = 2,
}

enum TlsCertificateRequestFlags : int (inline int s) {
  NONE = 0,
}

enum TlsChannelBindingError : int (inline int s) {
  GENERAL_ERROR = 4,
  INVALID_STATE = 1,
  NOT_AVAILABLE = 2,
  NOT_IMPLEMENTED = 0,
  NOT_SUPPORTED = 3,
}

enum TlsChannelBindingType : int (inline int s) {
  EXPORTER = 2,
  SERVER_END_POINT = 1,
  UNIQUE = 0,
}

enum TlsDatabaseLookupFlags : int (inline int s) {
  KEYPAIR = 1,
  NONE = 0,
}

enum TlsError : int (inline int s) {
  BAD_CERTIFICATE = 2,
  BAD_CERTIFICATE_PASSWORD = 8,
  CERTIFICATE_REQUIRED = 5,
  EOF = 6,
  HANDSHAKE = 4,
  INAPPROPRIATE_FALLBACK = 7,
  MISC = 1,
  NOT_TLS = 3,
  UNAVAILABLE = 0,
}

enum TlsInteractionResult : int (inline int s) {
  FAILED = 2,
  HANDLED = 1,
  UNHANDLED = 0,
}

enum TlsProtocolVersion : int (inline int s) {
  DTLS_1_0 = 201,
  DTLS_1_2 = 202,
  SSL_3_0 = 1,
  TLS_1_0 = 2,
  TLS_1_1 = 3,
  TLS_1_2 = 4,
  TLS_1_3 = 5,
  UNKNOWN = 0,
}

enum TlsRehandshakeMode : int (inline int s) {
  NEVER = 0,
  SAFELY = 1,
  UNSAFELY = 2,
}

enum UnixSocketAddressType : int (inline int s) {
  ABSTRACT = 3,
  ABSTRACT_PADDED = 4,
  ANONYMOUS = 1,
  INVALID = 0,
  PATH = 2,
}

enum ZlibCompressorFormat : int (inline int s) {
  GZIP = 1,
  RAW = 2,
  ZLIB = 0,
}



distinct ActionEntry = void*;

distinct ActionGroupInterface = void*;

distinct ActionInterface = void*;

distinct ActionMapInterface = void*;

distinct AppInfoIface = void*;

distinct AppLaunchContextClass = void*;

distinct AppLaunchContextPrivate = void*;

distinct ApplicationClass = void*;

distinct ApplicationCommandLineClass = void*;

distinct ApplicationCommandLinePrivate = void*;

distinct ApplicationPrivate = void*;

distinct AsyncInitableIface = void*;

distinct AsyncResultIface = void*;

distinct BufferedInputStreamClass = void*;

distinct BufferedInputStreamPrivate = void*;

distinct BufferedOutputStreamClass = void*;

distinct BufferedOutputStreamPrivate = void*;

distinct CancellableClass = void*;

distinct CancellablePrivate = void*;

distinct CharsetConverterClass = void*;

distinct ConverterIface = void*;

distinct ConverterInputStreamClass = void*;

distinct ConverterInputStreamPrivate = void*;

distinct ConverterOutputStreamClass = void*;

distinct ConverterOutputStreamPrivate = void*;

distinct CredentialsClass = void*;

distinct DBusAnnotationInfo = void*;

distinct DBusArgInfo = void*;

distinct DBusErrorEntry = void*;

distinct DBusInterfaceIface = void*;

distinct DBusInterfaceInfo = void*;

distinct DBusInterfaceSkeletonClass = void*;

distinct DBusInterfaceSkeletonPrivate = void*;

distinct DBusInterfaceVTable = void*;

distinct DBusMethodInfo = void*;

distinct DBusNodeInfo = void*;

distinct DBusObjectIface = void*;

distinct DBusObjectManagerClientClass = void*;

distinct DBusObjectManagerClientPrivate = void*;

distinct DBusObjectManagerIface = void*;

distinct DBusObjectManagerServerClass = void*;

distinct DBusObjectManagerServerPrivate = void*;

distinct DBusObjectProxyClass = void*;

distinct DBusObjectProxyPrivate = void*;

distinct DBusObjectSkeletonClass = void*;

distinct DBusObjectSkeletonPrivate = void*;

distinct DBusPropertyInfo = void*;

distinct DBusProxyClass = void*;

distinct DBusProxyPrivate = void*;

distinct DBusSignalInfo = void*;

distinct DBusSubtreeVTable = void*;

distinct DataInputStreamClass = void*;

distinct DataInputStreamPrivate = void*;

distinct DataOutputStreamClass = void*;

distinct DataOutputStreamPrivate = void*;

distinct DatagramBasedInterface = void*;

distinct DebugControllerDBusClass = void*;

distinct DebugControllerInterface = void*;

distinct DesktopAppInfoClass = void*;

distinct DesktopAppInfoLookupIface = void*;

distinct DriveIface = void*;

distinct DtlsClientConnectionInterface = void*;

distinct DtlsConnectionInterface = void*;

distinct DtlsServerConnectionInterface = void*;

distinct EmblemClass = void*;

distinct EmblemedIconClass = void*;

distinct EmblemedIconPrivate = void*;

distinct FileAttributeInfo = void*;

distinct FileAttributeInfoList = void*;

distinct FileAttributeMatcher = void*;

distinct FileDescriptorBasedIface = void*;

distinct FileEnumeratorClass = void*;

distinct FileEnumeratorPrivate = void*;

distinct FileIOStreamClass = void*;

distinct FileIOStreamPrivate = void*;

distinct FileIconClass = void*;

distinct FileIface = void*;

distinct FileInfoClass = void*;

distinct FileInputStreamClass = void*;

distinct FileInputStreamPrivate = void*;

distinct FileMonitorClass = void*;

distinct FileMonitorPrivate = void*;

distinct FileOutputStreamClass = void*;

distinct FileOutputStreamPrivate = void*;

distinct FilenameCompleterClass = void*;

distinct FilterInputStreamClass = void*;

distinct FilterOutputStreamClass = void*;

distinct IOExtension = void*;

distinct IOExtensionPoint = void*;

distinct IOModuleClass = void*;

distinct IOModuleScope = void*;

distinct IOSchedulerJob = void*;

distinct IOStreamAdapter = void*;

distinct IOStreamClass = void*;

distinct IOStreamPrivate = void*;

distinct IconIface = void*;

distinct InetAddressClass = void*;

distinct InetAddressMaskClass = void*;

distinct InetAddressMaskPrivate = void*;

distinct InetAddressPrivate = void*;

distinct InetSocketAddressClass = void*;

distinct InetSocketAddressPrivate = void*;

distinct InitableIface = void*;

distinct InputMessage = void*;

distinct InputStreamClass = void*;

distinct InputStreamPrivate = void*;

distinct InputVector = void*;

distinct ListModelInterface = void*;

distinct ListStoreClass = void*;

distinct LoadableIconIface = void*;

distinct MemoryInputStreamClass = void*;

distinct MemoryInputStreamPrivate = void*;

distinct MemoryMonitorInterface = void*;

distinct MemoryOutputStreamClass = void*;

distinct MemoryOutputStreamPrivate = void*;

distinct MenuAttributeIterClass = void*;

distinct MenuAttributeIterPrivate = void*;

distinct MenuLinkIterClass = void*;

distinct MenuLinkIterPrivate = void*;

distinct MenuModelClass = void*;

distinct MenuModelPrivate = void*;

distinct MountIface = void*;

distinct MountOperationClass = void*;

distinct MountOperationPrivate = void*;

distinct NativeSocketAddressClass = void*;

distinct NativeSocketAddressPrivate = void*;

distinct NativeVolumeMonitorClass = void*;

distinct NetworkAddressClass = void*;

distinct NetworkAddressPrivate = void*;

distinct NetworkMonitorInterface = void*;

distinct NetworkServiceClass = void*;

distinct NetworkServicePrivate = void*;

distinct OutputMessage = void*;

distinct OutputStreamClass = void*;

distinct OutputStreamPrivate = void*;

distinct OutputVector = void*;

distinct PermissionClass = void*;

distinct PermissionPrivate = void*;

distinct PollableInputStreamInterface = void*;

distinct PollableOutputStreamInterface = void*;

distinct PowerProfileMonitorInterface = void*;

distinct ProxyAddressClass = void*;

distinct ProxyAddressEnumeratorClass = void*;

distinct ProxyAddressEnumeratorPrivate = void*;

distinct ProxyAddressPrivate = void*;

distinct ProxyInterface = void*;

distinct ProxyResolverInterface = void*;

distinct RemoteActionGroupInterface = void*;

distinct ResolverClass = void*;

distinct ResolverPrivate = void*;

distinct Resource = void*;

distinct SeekableIface = void*;

distinct SettingsBackendClass = void*;

distinct SettingsBackendPrivate = void*;

distinct SettingsClass = void*;

distinct SettingsPrivate = void*;

distinct SettingsSchema = void*;

distinct SettingsSchemaKey = void*;

distinct SettingsSchemaSource = void*;

distinct SimpleActionGroupClass = void*;

distinct SimpleActionGroupPrivate = void*;

distinct SimpleAsyncResultClass = void*;

distinct SimpleProxyResolverClass = void*;

distinct SimpleProxyResolverPrivate = void*;

distinct SocketAddressClass = void*;

distinct SocketAddressEnumeratorClass = void*;

distinct SocketClass = void*;

distinct SocketClientClass = void*;

distinct SocketClientPrivate = void*;

distinct SocketConnectableIface = void*;

distinct SocketConnectionClass = void*;

distinct SocketConnectionPrivate = void*;

distinct SocketControlMessageClass = void*;

distinct SocketControlMessagePrivate = void*;

distinct SocketListenerClass = void*;

distinct SocketListenerPrivate = void*;

distinct SocketPrivate = void*;

distinct SocketServiceClass = void*;

distinct SocketServicePrivate = void*;

distinct SrvTarget = void*;

distinct StaticResource = void*;

distinct TaskClass = void*;

distinct TcpConnectionClass = void*;

distinct TcpConnectionPrivate = void*;

distinct TcpWrapperConnectionClass = void*;

distinct TcpWrapperConnectionPrivate = void*;

distinct ThemedIconClass = void*;

distinct ThreadedResolverClass = void*;

distinct ThreadedSocketServiceClass = void*;

distinct ThreadedSocketServicePrivate = void*;

distinct TlsBackendInterface = void*;

distinct TlsCertificateClass = void*;

distinct TlsCertificatePrivate = void*;

distinct TlsClientConnectionInterface = void*;

distinct TlsConnectionClass = void*;

distinct TlsConnectionPrivate = void*;

distinct TlsDatabaseClass = void*;

distinct TlsDatabasePrivate = void*;

distinct TlsFileDatabaseInterface = void*;

distinct TlsInteractionClass = void*;

distinct TlsInteractionPrivate = void*;

distinct TlsPasswordClass = void*;

distinct TlsPasswordPrivate = void*;

distinct TlsServerConnectionInterface = void*;

distinct UnixConnectionClass = void*;

distinct UnixConnectionPrivate = void*;

distinct UnixCredentialsMessageClass = void*;

distinct UnixCredentialsMessagePrivate = void*;

distinct UnixFDListClass = void*;

distinct UnixFDListPrivate = void*;

distinct UnixFDMessageClass = void*;

distinct UnixFDMessagePrivate = void*;

distinct UnixInputStreamClass = void*;

distinct UnixInputStreamPrivate = void*;

distinct UnixMountEntry = void*;

distinct UnixMountMonitorClass = void*;

distinct UnixMountPoint = void*;

distinct UnixOutputStreamClass = void*;

distinct UnixOutputStreamPrivate = void*;

distinct UnixSocketAddressClass = void*;

distinct UnixSocketAddressPrivate = void*;

distinct VfsClass = void*;

distinct VolumeIface = void*;

distinct VolumeMonitorClass = void*;

distinct ZlibCompressorClass = void*;

distinct ZlibDecompressorClass = void*;


def AsyncReadyCallback = fn void(gobject::Object* source_object, AsyncResult* res, void* data);

def BusAcquiredCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def BusNameAcquiredCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def BusNameAppearedCallback = fn void(DBusConnection* connection, ZString name, ZString name_owner, void* user_data);

def BusNameLostCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def BusNameVanishedCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def CancellableSourceFunc = fn bool(Cancellable* cancellable, void* data);

def DBusInterfaceGetPropertyFunc = fn glib::Variant*(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString property_name, glib::Error* error, void* user_data);

def DBusInterfaceMethodCallFunc = fn void(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, DBusMethodInvocation* invocation, void* user_data);

def DBusInterfaceSetPropertyFunc = fn bool(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString property_name, glib::Variant* value, glib::Error* error, void* user_data);

def DBusMessageFilterFunction = fn DBusMessage*(DBusConnection* connection, DBusMessage* message, bool incoming, void* user_data);

def DBusProxyTypeFunc = fn usz(DBusObjectManagerClient* manager, ZString object_path, ZString interface_name, void* data);

def DBusSignalCallback = fn void(DBusConnection* connection, ZString sender_name, ZString object_path, ZString interface_name, ZString signal_name, glib::Variant* parameters, void* user_data);

def DBusSubtreeDispatchFunc = fn DBusInterfaceVTable*(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString node, void* out_user_data, void* user_data);

def DBusSubtreeEnumerateFunc = fn ZString(DBusConnection* connection, ZString sender, ZString object_path, void* user_data);

def DBusSubtreeIntrospectFunc = fn DBusInterfaceInfo*(DBusConnection* connection, ZString sender, ZString object_path, ZString node, void* user_data);

def DatagramBasedSourceFunc = fn bool(DatagramBased* datagram_based, glib::IOCondition condition, void* data);

def DesktopAppLaunchCallback = fn void(DesktopAppInfo* appinfo, glib::Pid pid, void* user_data);

def FileMeasureProgressCallback = fn void(bool reporting, ulong current_size, ulong num_dirs, ulong num_files, void* data);

def FileProgressCallback = fn void(long current_num_bytes, long total_num_bytes, void* data);

def FileReadMoreCallback = fn bool(ZString file_contents, long file_size, void* callback_data);

def IOSchedulerJobFunc = fn bool(IOSchedulerJob* job, Cancellable* cancellable, void* data);

def PollableSourceFunc = fn bool(gobject::Object* pollable_stream, void* data);

def ReallocFunc = fn void*(void* data, usz size);

def SettingsBindGetMapping = fn bool(gobject::Value* value, glib::Variant* variant, void* user_data);

def SettingsBindSetMapping = fn glib::Variant*(gobject::Value* value, glib::VariantType* expected_type, void* user_data);

def SettingsGetMapping = fn bool(glib::Variant* value, void* result, void* user_data);

def SimpleAsyncThreadFunc = fn void(SimpleAsyncResult* res, gobject::Object* object, Cancellable* cancellable);

def SocketSourceFunc = fn bool(Socket* socket, glib::IOCondition condition, void* data);

def TaskThreadFunc = fn void(Task* task, gobject::Object* source_object, void* task_data, Cancellable* cancellable);

def VfsFileLookupFunc = fn File*(Vfs* vfs, ZString identifier, void* user_data);


<* Maps to GAppInfoMonitor *>
distinct AppInfoMonitor = void*;

fn gobject::Object* AppInfoMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);



<* Maps to GAppLaunchContext *>
distinct AppLaunchContext = void*;

fn gobject::Object* AppLaunchContext.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_display *>
extern fn ZString* AppLaunchContext.get_display(&self, AppInfo* info, glib::List* files) @extern("g_app_launch_context_get_display");

<* Maps to get_environment *>
extern fn ZString AppLaunchContext.get_environment(&self) @extern("g_app_launch_context_get_environment");

<* Maps to get_startup_notify_id *>
extern fn ZString* AppLaunchContext.get_startup_notify_id(&self, AppInfo* info, glib::List* files) @extern("g_app_launch_context_get_startup_notify_id");

<* Maps to launch_failed *>
extern fn void AppLaunchContext.launch_failed(&self, ZString startup_notify_id) @extern("g_app_launch_context_launch_failed");

<* Maps to setenv *>
extern fn void AppLaunchContext.setenv(&self, ZString variable, ZString value) @extern("g_app_launch_context_setenv");

<* Maps to unsetenv *>
extern fn void AppLaunchContext.unsetenv(&self, ZString variable) @extern("g_app_launch_context_unsetenv");


<* Maps to GApplication *>
distinct Application = void*;

fn gobject::Object* Application.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to activate *>
extern fn void Application.activate(&self) @extern("g_application_activate");

<* Maps to add_main_option *>
extern fn void Application.add_main_option(&self, ZString long_name, ichar short_name, glib::OptionFlags flags, glib::OptionArg arg, ZString description, ZString arg_description) @extern("g_application_add_main_option");

<* Maps to add_main_option_entries *>
extern fn void Application.add_main_option_entries(&self, glib::OptionEntry entries) @extern("g_application_add_main_option_entries");

<* Maps to add_option_group *>
extern fn void Application.add_option_group(&self, glib::OptionGroup* group) @extern("g_application_add_option_group");

<* Maps to bind_busy_property *>
extern fn void Application.bind_busy_property(&self, gobject::Object* object, ZString property) @extern("g_application_bind_busy_property");

<* Maps to get_application_id *>
extern fn ZString Application.get_application_id(&self) @extern("g_application_get_application_id");

<* Maps to get_dbus_connection *>
extern fn DBusConnection* Application.get_dbus_connection(&self) @extern("g_application_get_dbus_connection");

<* Maps to get_dbus_object_path *>
extern fn ZString Application.get_dbus_object_path(&self) @extern("g_application_get_dbus_object_path");

<* Maps to get_flags *>
extern fn ApplicationFlags Application.get_flags(&self) @extern("g_application_get_flags");

<* Maps to get_inactivity_timeout *>
extern fn uint Application.get_inactivity_timeout(&self) @extern("g_application_get_inactivity_timeout");

<* Maps to get_is_busy *>
extern fn bool Application.get_is_busy(&self) @extern("g_application_get_is_busy");

<* Maps to get_is_registered *>
extern fn bool Application.get_is_registered(&self) @extern("g_application_get_is_registered");

<* Maps to get_is_remote *>
extern fn bool Application.get_is_remote(&self) @extern("g_application_get_is_remote");

<* Maps to get_resource_base_path *>
extern fn ZString Application.get_resource_base_path(&self) @extern("g_application_get_resource_base_path");

<* Maps to get_version *>
extern fn ZString Application.get_version(&self) @extern("g_application_get_version");

<* Maps to hold *>
extern fn void Application.hold(&self) @extern("g_application_hold");

<* Maps to mark_busy *>
extern fn void Application.mark_busy(&self) @extern("g_application_mark_busy");

<* Maps to open *>
extern fn void Application.open(&self, File* files, int n_files, ZString hint) @extern("g_application_open");

<* Maps to quit *>
extern fn void Application.quit(&self) @extern("g_application_quit");

<* Maps to register *>
extern fn bool Application.register(&self, Cancellable* cancellable) @extern("g_application_register");

<* Maps to release *>
extern fn void Application.release(&self) @extern("g_application_release");

<* Maps to run *>
extern fn int Application.run(&self, int argc, ZString argv) @extern("g_application_run");

<* Maps to send_notification *>
extern fn void Application.send_notification(&self, ZString id, Notification* notification) @extern("g_application_send_notification");

<* Maps to set_action_group *>
extern fn void Application.set_action_group(&self, ActionGroup* action_group) @extern("g_application_set_action_group");

<* Maps to set_application_id *>
extern fn void Application.set_application_id(&self, ZString application_id) @extern("g_application_set_application_id");

<* Maps to set_default *>
extern fn void Application.set_default(&self) @extern("g_application_set_default");

<* Maps to set_flags *>
extern fn void Application.set_flags(&self, ApplicationFlags flags) @extern("g_application_set_flags");

<* Maps to set_inactivity_timeout *>
extern fn void Application.set_inactivity_timeout(&self, uint inactivity_timeout) @extern("g_application_set_inactivity_timeout");

<* Maps to set_option_context_description *>
extern fn void Application.set_option_context_description(&self, ZString description) @extern("g_application_set_option_context_description");

<* Maps to set_option_context_parameter_string *>
extern fn void Application.set_option_context_parameter_string(&self, ZString parameter_string) @extern("g_application_set_option_context_parameter_string");

<* Maps to set_option_context_summary *>
extern fn void Application.set_option_context_summary(&self, ZString summary) @extern("g_application_set_option_context_summary");

<* Maps to set_resource_base_path *>
extern fn void Application.set_resource_base_path(&self, ZString resource_path) @extern("g_application_set_resource_base_path");

<* Maps to set_version *>
extern fn void Application.set_version(&self, ZString version) @extern("g_application_set_version");

<* Maps to unbind_busy_property *>
extern fn void Application.unbind_busy_property(&self, gobject::Object* object, ZString property) @extern("g_application_unbind_busy_property");

<* Maps to unmark_busy *>
extern fn void Application.unmark_busy(&self) @extern("g_application_unmark_busy");

<* Maps to withdraw_notification *>
extern fn void Application.withdraw_notification(&self, ZString id) @extern("g_application_withdraw_notification");


<* Maps to GApplicationCommandLine *>
distinct ApplicationCommandLine = void*;

fn gobject::Object* ApplicationCommandLine.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to create_file_for_arg *>
extern fn File* ApplicationCommandLine.create_file_for_arg(&self, ZString arg) @extern("g_application_command_line_create_file_for_arg");

<* Maps to done *>
extern fn void ApplicationCommandLine.done(&self) @extern("g_application_command_line_done");

<* Maps to get_arguments *>
extern fn ZString ApplicationCommandLine.get_arguments(&self, int* argc) @extern("g_application_command_line_get_arguments");

<* Maps to get_cwd *>
extern fn ZString ApplicationCommandLine.get_cwd(&self) @extern("g_application_command_line_get_cwd");

<* Maps to get_environ *>
extern fn ZString ApplicationCommandLine.get_environ(&self) @extern("g_application_command_line_get_environ");

<* Maps to get_exit_status *>
extern fn int ApplicationCommandLine.get_exit_status(&self) @extern("g_application_command_line_get_exit_status");

<* Maps to get_is_remote *>
extern fn bool ApplicationCommandLine.get_is_remote(&self) @extern("g_application_command_line_get_is_remote");

<* Maps to get_options_dict *>
extern fn glib::VariantDict* ApplicationCommandLine.get_options_dict(&self) @extern("g_application_command_line_get_options_dict");

<* Maps to get_platform_data *>
extern fn glib::Variant* ApplicationCommandLine.get_platform_data(&self) @extern("g_application_command_line_get_platform_data");

<* Maps to get_stdin *>
extern fn InputStream* ApplicationCommandLine.get_stdin(&self) @extern("g_application_command_line_get_stdin");

<* Maps to getenv *>
extern fn ZString ApplicationCommandLine.getenv(&self, ZString name) @extern("g_application_command_line_getenv");

<* Maps to print *>
extern fn void ApplicationCommandLine.print(&self, ZString format, any rest) @extern("g_application_command_line_print");

<* Maps to print_literal *>
extern fn void ApplicationCommandLine.print_literal(&self, ZString message) @extern("g_application_command_line_print_literal");

<* Maps to printerr *>
extern fn void ApplicationCommandLine.printerr(&self, ZString format, any rest) @extern("g_application_command_line_printerr");

<* Maps to printerr_literal *>
extern fn void ApplicationCommandLine.printerr_literal(&self, ZString message) @extern("g_application_command_line_printerr_literal");

<* Maps to set_exit_status *>
extern fn void ApplicationCommandLine.set_exit_status(&self, int exit_status) @extern("g_application_command_line_set_exit_status");


<* Maps to GBufferedInputStream *>
distinct BufferedInputStream = void*;

fn FilterInputStream* BufferedInputStream.as_FilterInputStream(&self) => (FilterInputStream*)(self);


<* Maps to fill *>
extern fn isz BufferedInputStream.fill(&self, isz count, Cancellable* cancellable) @extern("g_buffered_input_stream_fill");

<* Maps to fill_async *>
extern fn void BufferedInputStream.fill_async(&self, isz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_buffered_input_stream_fill_async");

<* Maps to fill_finish *>
extern fn isz BufferedInputStream.fill_finish(&self, AsyncResult* result) @extern("g_buffered_input_stream_fill_finish");

<* Maps to get_available *>
extern fn usz BufferedInputStream.get_available(&self) @extern("g_buffered_input_stream_get_available");

<* Maps to get_buffer_size *>
extern fn usz BufferedInputStream.get_buffer_size(&self) @extern("g_buffered_input_stream_get_buffer_size");

<* Maps to peek *>
extern fn usz BufferedInputStream.peek(&self, char buffer, usz offset, usz count) @extern("g_buffered_input_stream_peek");

<* Maps to peek_buffer *>
extern fn char BufferedInputStream.peek_buffer(&self, usz* count) @extern("g_buffered_input_stream_peek_buffer");

<* Maps to read_byte *>
extern fn int BufferedInputStream.read_byte(&self, Cancellable* cancellable) @extern("g_buffered_input_stream_read_byte");

<* Maps to set_buffer_size *>
extern fn void BufferedInputStream.set_buffer_size(&self, usz size) @extern("g_buffered_input_stream_set_buffer_size");


<* Maps to GBufferedOutputStream *>
distinct BufferedOutputStream = void*;

fn FilterOutputStream* BufferedOutputStream.as_FilterOutputStream(&self) => (FilterOutputStream*)(self);


<* Maps to get_auto_grow *>
extern fn bool BufferedOutputStream.get_auto_grow(&self) @extern("g_buffered_output_stream_get_auto_grow");

<* Maps to get_buffer_size *>
extern fn usz BufferedOutputStream.get_buffer_size(&self) @extern("g_buffered_output_stream_get_buffer_size");

<* Maps to set_auto_grow *>
extern fn void BufferedOutputStream.set_auto_grow(&self, bool auto_grow) @extern("g_buffered_output_stream_set_auto_grow");

<* Maps to set_buffer_size *>
extern fn void BufferedOutputStream.set_buffer_size(&self, usz size) @extern("g_buffered_output_stream_set_buffer_size");


<* Maps to GBytesIcon *>
distinct BytesIcon = void*;

fn gobject::Object* BytesIcon.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_bytes *>
extern fn glib::Bytes* BytesIcon.get_bytes(&self) @extern("g_bytes_icon_get_bytes");


<* Maps to GCancellable *>
distinct Cancellable = void*;

fn gobject::Object* Cancellable.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to cancel *>
extern fn void Cancellable.cancel(&self) @extern("g_cancellable_cancel");

<* Maps to connect *>
extern fn ulong Cancellable.connect(&self, gobject::Callback callback, void* data, glib::DestroyNotify data_destroy_func) @extern("g_cancellable_connect");

<* Maps to disconnect *>
extern fn void Cancellable.disconnect(&self, ulong handler_id) @extern("g_cancellable_disconnect");

<* Maps to get_fd *>
extern fn int Cancellable.get_fd(&self) @extern("g_cancellable_get_fd");

<* Maps to is_cancelled *>
extern fn bool Cancellable.is_cancelled(&self) @extern("g_cancellable_is_cancelled");

<* Maps to make_pollfd *>
extern fn bool Cancellable.make_pollfd(&self, glib::PollFD* pollfd) @extern("g_cancellable_make_pollfd");

<* Maps to pop_current *>
extern fn void Cancellable.pop_current(&self) @extern("g_cancellable_pop_current");

<* Maps to push_current *>
extern fn void Cancellable.push_current(&self) @extern("g_cancellable_push_current");

<* Maps to release_fd *>
extern fn void Cancellable.release_fd(&self) @extern("g_cancellable_release_fd");

<* Maps to reset *>
extern fn void Cancellable.reset(&self) @extern("g_cancellable_reset");

<* Maps to set_error_if_cancelled *>
extern fn bool Cancellable.set_error_if_cancelled(&self) @extern("g_cancellable_set_error_if_cancelled");

<* Maps to source_new *>
extern fn glib::Source* Cancellable.source_new(&self) @extern("g_cancellable_source_new");


<* Maps to GCharsetConverter *>
distinct CharsetConverter = void*;

fn gobject::Object* CharsetConverter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_num_fallbacks *>
extern fn uint CharsetConverter.get_num_fallbacks(&self) @extern("g_charset_converter_get_num_fallbacks");

<* Maps to get_use_fallback *>
extern fn bool CharsetConverter.get_use_fallback(&self) @extern("g_charset_converter_get_use_fallback");

<* Maps to set_use_fallback *>
extern fn void CharsetConverter.set_use_fallback(&self, bool use_fallback) @extern("g_charset_converter_set_use_fallback");


<* Maps to GConverterInputStream *>
distinct ConverterInputStream = void*;

fn FilterInputStream* ConverterInputStream.as_FilterInputStream(&self) => (FilterInputStream*)(self);


<* Maps to get_converter *>
extern fn Converter* ConverterInputStream.get_converter(&self) @extern("g_converter_input_stream_get_converter");


<* Maps to GConverterOutputStream *>
distinct ConverterOutputStream = void*;

fn FilterOutputStream* ConverterOutputStream.as_FilterOutputStream(&self) => (FilterOutputStream*)(self);


<* Maps to get_converter *>
extern fn Converter* ConverterOutputStream.get_converter(&self) @extern("g_converter_output_stream_get_converter");


<* Maps to GCredentials *>
distinct Credentials = void*;

fn gobject::Object* Credentials.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_native *>
extern fn void* Credentials.get_native(&self, CredentialsType native_type) @extern("g_credentials_get_native");

<* Maps to get_unix_pid *>
extern fn int Credentials.get_unix_pid(&self) @extern("g_credentials_get_unix_pid");

<* Maps to get_unix_user *>
extern fn int Credentials.get_unix_user(&self) @extern("g_credentials_get_unix_user");

<* Maps to is_same_user *>
extern fn bool Credentials.is_same_user(&self, Credentials* other_credentials) @extern("g_credentials_is_same_user");

<* Maps to set_native *>
extern fn void Credentials.set_native(&self, CredentialsType native_type, void* native) @extern("g_credentials_set_native");

<* Maps to set_unix_user *>
extern fn bool Credentials.set_unix_user(&self, int uid) @extern("g_credentials_set_unix_user");

<* Maps to to_string *>
extern fn ZString* Credentials.to_string(&self) @extern("g_credentials_to_string");


<* Maps to GDBusActionGroup *>
distinct DBusActionGroup = void*;

fn gobject::Object* DBusActionGroup.as_gobject_Object(&self) => (gobject::Object*)(self);



<* Maps to GDBusAuthObserver *>
distinct DBusAuthObserver = void*;

fn gobject::Object* DBusAuthObserver.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to allow_mechanism *>
extern fn bool DBusAuthObserver.allow_mechanism(&self, ZString mechanism) @extern("g_dbus_auth_observer_allow_mechanism");

<* Maps to authorize_authenticated_peer *>
extern fn bool DBusAuthObserver.authorize_authenticated_peer(&self, IOStream* stream, Credentials* credentials) @extern("g_dbus_auth_observer_authorize_authenticated_peer");


<* Maps to GDBusConnection *>
distinct DBusConnection = void*;

fn gobject::Object* DBusConnection.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_filter *>
extern fn uint DBusConnection.add_filter(&self, DBusMessageFilterFunction filter_function, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_add_filter");

<* Maps to call *>
extern fn void DBusConnection.call(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_call");

<* Maps to call_finish *>
extern fn glib::Variant* DBusConnection.call_finish(&self, AsyncResult* res) @extern("g_dbus_connection_call_finish");

<* Maps to call_sync *>
extern fn glib::Variant* DBusConnection.call_sync(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable) @extern("g_dbus_connection_call_sync");

<* Maps to call_with_unix_fd_list *>
extern fn void DBusConnection.call_with_unix_fd_list(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_call_with_unix_fd_list");

<* Maps to call_with_unix_fd_list_finish *>
extern fn glib::Variant* DBusConnection.call_with_unix_fd_list_finish(&self, UnixFDList* out_fd_list, AsyncResult* res) @extern("g_dbus_connection_call_with_unix_fd_list_finish");

<* Maps to call_with_unix_fd_list_sync *>
extern fn glib::Variant* DBusConnection.call_with_unix_fd_list_sync(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, UnixFDList* out_fd_list, Cancellable* cancellable) @extern("g_dbus_connection_call_with_unix_fd_list_sync");

<* Maps to close *>
extern fn void DBusConnection.close(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_close");

<* Maps to close_finish *>
extern fn bool DBusConnection.close_finish(&self, AsyncResult* res) @extern("g_dbus_connection_close_finish");

<* Maps to close_sync *>
extern fn bool DBusConnection.close_sync(&self, Cancellable* cancellable) @extern("g_dbus_connection_close_sync");

<* Maps to emit_signal *>
extern fn bool DBusConnection.emit_signal(&self, ZString destination_bus_name, ZString object_path, ZString interface_name, ZString signal_name, glib::Variant* parameters) @extern("g_dbus_connection_emit_signal");

<* Maps to export_action_group *>
extern fn uint DBusConnection.export_action_group(&self, ZString object_path, ActionGroup* action_group) @extern("g_dbus_connection_export_action_group");

<* Maps to export_menu_model *>
extern fn uint DBusConnection.export_menu_model(&self, ZString object_path, MenuModel* menu) @extern("g_dbus_connection_export_menu_model");

<* Maps to flush *>
extern fn void DBusConnection.flush(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_flush");

<* Maps to flush_finish *>
extern fn bool DBusConnection.flush_finish(&self, AsyncResult* res) @extern("g_dbus_connection_flush_finish");

<* Maps to flush_sync *>
extern fn bool DBusConnection.flush_sync(&self, Cancellable* cancellable) @extern("g_dbus_connection_flush_sync");

<* Maps to get_capabilities *>
extern fn DBusCapabilityFlags DBusConnection.get_capabilities(&self) @extern("g_dbus_connection_get_capabilities");

<* Maps to get_exit_on_close *>
extern fn bool DBusConnection.get_exit_on_close(&self) @extern("g_dbus_connection_get_exit_on_close");

<* Maps to get_flags *>
extern fn DBusConnectionFlags DBusConnection.get_flags(&self) @extern("g_dbus_connection_get_flags");

<* Maps to get_guid *>
extern fn ZString DBusConnection.get_guid(&self) @extern("g_dbus_connection_get_guid");

<* Maps to get_last_serial *>
extern fn uint DBusConnection.get_last_serial(&self) @extern("g_dbus_connection_get_last_serial");

<* Maps to get_peer_credentials *>
extern fn Credentials* DBusConnection.get_peer_credentials(&self) @extern("g_dbus_connection_get_peer_credentials");

<* Maps to get_stream *>
extern fn IOStream* DBusConnection.get_stream(&self) @extern("g_dbus_connection_get_stream");

<* Maps to get_unique_name *>
extern fn ZString DBusConnection.get_unique_name(&self) @extern("g_dbus_connection_get_unique_name");

<* Maps to is_closed *>
extern fn bool DBusConnection.is_closed(&self) @extern("g_dbus_connection_is_closed");

<* Maps to register_object *>
extern fn uint DBusConnection.register_object(&self, ZString object_path, DBusInterfaceInfo* interface_info, DBusInterfaceVTable* vtable, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_register_object");

<* Maps to register_object_with_closures *>
extern fn uint DBusConnection.register_object_with_closures(&self, ZString object_path, DBusInterfaceInfo* interface_info, gobject::Closure* method_call_closure, gobject::Closure* get_property_closure, gobject::Closure* set_property_closure) @extern("g_dbus_connection_register_object_with_closures");

<* Maps to register_subtree *>
extern fn uint DBusConnection.register_subtree(&self, ZString object_path, DBusSubtreeVTable* vtable, DBusSubtreeFlags flags, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_register_subtree");

<* Maps to remove_filter *>
extern fn void DBusConnection.remove_filter(&self, uint filter_id) @extern("g_dbus_connection_remove_filter");

<* Maps to send_message *>
extern fn bool DBusConnection.send_message(&self, DBusMessage* message, DBusSendMessageFlags flags, uint* out_serial) @extern("g_dbus_connection_send_message");

<* Maps to send_message_with_reply *>
extern fn void DBusConnection.send_message_with_reply(&self, DBusMessage* message, DBusSendMessageFlags flags, int timeout_msec, uint* out_serial, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_send_message_with_reply");

<* Maps to send_message_with_reply_finish *>
extern fn DBusMessage* DBusConnection.send_message_with_reply_finish(&self, AsyncResult* res) @extern("g_dbus_connection_send_message_with_reply_finish");

<* Maps to send_message_with_reply_sync *>
extern fn DBusMessage* DBusConnection.send_message_with_reply_sync(&self, DBusMessage* message, DBusSendMessageFlags flags, int timeout_msec, uint* out_serial, Cancellable* cancellable) @extern("g_dbus_connection_send_message_with_reply_sync");

<* Maps to set_exit_on_close *>
extern fn void DBusConnection.set_exit_on_close(&self, bool exit_on_close) @extern("g_dbus_connection_set_exit_on_close");

<* Maps to signal_subscribe *>
extern fn uint DBusConnection.signal_subscribe(&self, ZString sender, ZString interface_name, ZString member, ZString object_path, ZString arg0, DBusSignalFlags flags, DBusSignalCallback callback, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_signal_subscribe");

<* Maps to signal_unsubscribe *>
extern fn void DBusConnection.signal_unsubscribe(&self, uint subscription_id) @extern("g_dbus_connection_signal_unsubscribe");

<* Maps to start_message_processing *>
extern fn void DBusConnection.start_message_processing(&self) @extern("g_dbus_connection_start_message_processing");

<* Maps to unexport_action_group *>
extern fn void DBusConnection.unexport_action_group(&self, uint export_id) @extern("g_dbus_connection_unexport_action_group");

<* Maps to unexport_menu_model *>
extern fn void DBusConnection.unexport_menu_model(&self, uint export_id) @extern("g_dbus_connection_unexport_menu_model");

<* Maps to unregister_object *>
extern fn bool DBusConnection.unregister_object(&self, uint registration_id) @extern("g_dbus_connection_unregister_object");

<* Maps to unregister_subtree *>
extern fn bool DBusConnection.unregister_subtree(&self, uint registration_id) @extern("g_dbus_connection_unregister_subtree");


<* Maps to GDBusInterfaceSkeleton *>
distinct DBusInterfaceSkeleton = void*;

fn gobject::Object* DBusInterfaceSkeleton.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to export *>
extern fn bool DBusInterfaceSkeleton.export(&self, DBusConnection* connection, ZString object_path) @extern("g_dbus_interface_skeleton_export");

<* Maps to flush *>
extern fn void DBusInterfaceSkeleton.flush(&self) @extern("g_dbus_interface_skeleton_flush");

<* Maps to get_connection *>
extern fn DBusConnection* DBusInterfaceSkeleton.get_connection(&self) @extern("g_dbus_interface_skeleton_get_connection");

<* Maps to get_connections *>
extern fn glib::List* DBusInterfaceSkeleton.get_connections(&self) @extern("g_dbus_interface_skeleton_get_connections");

<* Maps to get_flags *>
extern fn DBusInterfaceSkeletonFlags DBusInterfaceSkeleton.get_flags(&self) @extern("g_dbus_interface_skeleton_get_flags");

<* Maps to get_info *>
extern fn DBusInterfaceInfo* DBusInterfaceSkeleton.get_info(&self) @extern("g_dbus_interface_skeleton_get_info");

<* Maps to get_object_path *>
extern fn ZString DBusInterfaceSkeleton.get_object_path(&self) @extern("g_dbus_interface_skeleton_get_object_path");

<* Maps to get_properties *>
extern fn glib::Variant* DBusInterfaceSkeleton.get_properties(&self) @extern("g_dbus_interface_skeleton_get_properties");

<* Maps to get_vtable *>
extern fn DBusInterfaceVTable* DBusInterfaceSkeleton.get_vtable(&self) @extern("g_dbus_interface_skeleton_get_vtable");

<* Maps to has_connection *>
extern fn bool DBusInterfaceSkeleton.has_connection(&self, DBusConnection* connection) @extern("g_dbus_interface_skeleton_has_connection");

<* Maps to set_flags *>
extern fn void DBusInterfaceSkeleton.set_flags(&self, DBusInterfaceSkeletonFlags flags) @extern("g_dbus_interface_skeleton_set_flags");

<* Maps to unexport *>
extern fn void DBusInterfaceSkeleton.unexport(&self) @extern("g_dbus_interface_skeleton_unexport");

<* Maps to unexport_from_connection *>
extern fn void DBusInterfaceSkeleton.unexport_from_connection(&self, DBusConnection* connection) @extern("g_dbus_interface_skeleton_unexport_from_connection");


<* Maps to GDBusMenuModel *>
distinct DBusMenuModel = void*;

fn MenuModel* DBusMenuModel.as_MenuModel(&self) => (MenuModel*)(self);



<* Maps to GDBusMessage *>
distinct DBusMessage = void*;

fn gobject::Object* DBusMessage.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to copy *>
extern fn DBusMessage* DBusMessage.copy(&self) @extern("g_dbus_message_copy");

<* Maps to get_arg0 *>
extern fn ZString DBusMessage.get_arg0(&self) @extern("g_dbus_message_get_arg0");

<* Maps to get_arg0_path *>
extern fn ZString DBusMessage.get_arg0_path(&self) @extern("g_dbus_message_get_arg0_path");

<* Maps to get_body *>
extern fn glib::Variant* DBusMessage.get_body(&self) @extern("g_dbus_message_get_body");

<* Maps to get_byte_order *>
extern fn DBusMessageByteOrder DBusMessage.get_byte_order(&self) @extern("g_dbus_message_get_byte_order");

<* Maps to get_destination *>
extern fn ZString DBusMessage.get_destination(&self) @extern("g_dbus_message_get_destination");

<* Maps to get_error_name *>
extern fn ZString DBusMessage.get_error_name(&self) @extern("g_dbus_message_get_error_name");

<* Maps to get_flags *>
extern fn DBusMessageFlags DBusMessage.get_flags(&self) @extern("g_dbus_message_get_flags");

<* Maps to get_header *>
extern fn glib::Variant* DBusMessage.get_header(&self, DBusMessageHeaderField header_field) @extern("g_dbus_message_get_header");

<* Maps to get_header_fields *>
extern fn char DBusMessage.get_header_fields(&self) @extern("g_dbus_message_get_header_fields");

<* Maps to get_interface *>
extern fn ZString DBusMessage.get_interface(&self) @extern("g_dbus_message_get_interface");

<* Maps to get_locked *>
extern fn bool DBusMessage.get_locked(&self) @extern("g_dbus_message_get_locked");

<* Maps to get_member *>
extern fn ZString DBusMessage.get_member(&self) @extern("g_dbus_message_get_member");

<* Maps to get_message_type *>
extern fn DBusMessageType DBusMessage.get_message_type(&self) @extern("g_dbus_message_get_message_type");

<* Maps to get_num_unix_fds *>
extern fn uint DBusMessage.get_num_unix_fds(&self) @extern("g_dbus_message_get_num_unix_fds");

<* Maps to get_path *>
extern fn ZString DBusMessage.get_path(&self) @extern("g_dbus_message_get_path");

<* Maps to get_reply_serial *>
extern fn uint DBusMessage.get_reply_serial(&self) @extern("g_dbus_message_get_reply_serial");

<* Maps to get_sender *>
extern fn ZString DBusMessage.get_sender(&self) @extern("g_dbus_message_get_sender");

<* Maps to get_serial *>
extern fn uint DBusMessage.get_serial(&self) @extern("g_dbus_message_get_serial");

<* Maps to get_signature *>
extern fn ZString DBusMessage.get_signature(&self) @extern("g_dbus_message_get_signature");

<* Maps to get_unix_fd_list *>
extern fn UnixFDList* DBusMessage.get_unix_fd_list(&self) @extern("g_dbus_message_get_unix_fd_list");

<* Maps to lock *>
extern fn void DBusMessage.lock(&self) @extern("g_dbus_message_lock");

<* Maps to new_method_error *>
extern fn DBusMessage* DBusMessage.new_method_error(&self, ZString error_name, ZString error_message_format, any rest) @extern("g_dbus_message_new_method_error");

<* Maps to new_method_error_literal *>
extern fn DBusMessage* DBusMessage.new_method_error_literal(&self, ZString error_name, ZString error_message) @extern("g_dbus_message_new_method_error_literal");

<* Maps to new_method_reply *>
extern fn DBusMessage* DBusMessage.new_method_reply(&self) @extern("g_dbus_message_new_method_reply");

<* Maps to print *>
extern fn ZString* DBusMessage.print(&self, uint indent) @extern("g_dbus_message_print");

<* Maps to set_body *>
extern fn void DBusMessage.set_body(&self, glib::Variant* body) @extern("g_dbus_message_set_body");

<* Maps to set_byte_order *>
extern fn void DBusMessage.set_byte_order(&self, DBusMessageByteOrder byte_order) @extern("g_dbus_message_set_byte_order");

<* Maps to set_destination *>
extern fn void DBusMessage.set_destination(&self, ZString value) @extern("g_dbus_message_set_destination");

<* Maps to set_error_name *>
extern fn void DBusMessage.set_error_name(&self, ZString value) @extern("g_dbus_message_set_error_name");

<* Maps to set_flags *>
extern fn void DBusMessage.set_flags(&self, DBusMessageFlags flags) @extern("g_dbus_message_set_flags");

<* Maps to set_header *>
extern fn void DBusMessage.set_header(&self, DBusMessageHeaderField header_field, glib::Variant* value) @extern("g_dbus_message_set_header");

<* Maps to set_interface *>
extern fn void DBusMessage.set_interface(&self, ZString value) @extern("g_dbus_message_set_interface");

<* Maps to set_member *>
extern fn void DBusMessage.set_member(&self, ZString value) @extern("g_dbus_message_set_member");

<* Maps to set_message_type *>
extern fn void DBusMessage.set_message_type(&self, DBusMessageType type) @extern("g_dbus_message_set_message_type");

<* Maps to set_num_unix_fds *>
extern fn void DBusMessage.set_num_unix_fds(&self, uint value) @extern("g_dbus_message_set_num_unix_fds");

<* Maps to set_path *>
extern fn void DBusMessage.set_path(&self, ZString value) @extern("g_dbus_message_set_path");

<* Maps to set_reply_serial *>
extern fn void DBusMessage.set_reply_serial(&self, uint value) @extern("g_dbus_message_set_reply_serial");

<* Maps to set_sender *>
extern fn void DBusMessage.set_sender(&self, ZString value) @extern("g_dbus_message_set_sender");

<* Maps to set_serial *>
extern fn void DBusMessage.set_serial(&self, uint serial) @extern("g_dbus_message_set_serial");

<* Maps to set_signature *>
extern fn void DBusMessage.set_signature(&self, ZString value) @extern("g_dbus_message_set_signature");

<* Maps to set_unix_fd_list *>
extern fn void DBusMessage.set_unix_fd_list(&self, UnixFDList* fd_list) @extern("g_dbus_message_set_unix_fd_list");

<* Maps to to_blob *>
extern fn char DBusMessage.to_blob(&self, usz* out_size, DBusCapabilityFlags capabilities) @extern("g_dbus_message_to_blob");

<* Maps to to_gerror *>
extern fn bool DBusMessage.to_gerror(&self) @extern("g_dbus_message_to_gerror");


<* Maps to GDBusMethodInvocation *>
distinct DBusMethodInvocation = void*;

fn gobject::Object* DBusMethodInvocation.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_connection *>
extern fn DBusConnection* DBusMethodInvocation.get_connection(&self) @extern("g_dbus_method_invocation_get_connection");

<* Maps to get_interface_name *>
extern fn ZString DBusMethodInvocation.get_interface_name(&self) @extern("g_dbus_method_invocation_get_interface_name");

<* Maps to get_message *>
extern fn DBusMessage* DBusMethodInvocation.get_message(&self) @extern("g_dbus_method_invocation_get_message");

<* Maps to get_method_info *>
extern fn DBusMethodInfo* DBusMethodInvocation.get_method_info(&self) @extern("g_dbus_method_invocation_get_method_info");

<* Maps to get_method_name *>
extern fn ZString DBusMethodInvocation.get_method_name(&self) @extern("g_dbus_method_invocation_get_method_name");

<* Maps to get_object_path *>
extern fn ZString DBusMethodInvocation.get_object_path(&self) @extern("g_dbus_method_invocation_get_object_path");

<* Maps to get_parameters *>
extern fn glib::Variant* DBusMethodInvocation.get_parameters(&self) @extern("g_dbus_method_invocation_get_parameters");

<* Maps to get_property_info *>
extern fn DBusPropertyInfo* DBusMethodInvocation.get_property_info(&self) @extern("g_dbus_method_invocation_get_property_info");

<* Maps to get_sender *>
extern fn ZString DBusMethodInvocation.get_sender(&self) @extern("g_dbus_method_invocation_get_sender");

<* Maps to get_user_data *>
extern fn void* DBusMethodInvocation.get_user_data(&self) @extern("g_dbus_method_invocation_get_user_data");

<* Maps to return_dbus_error *>
extern fn void DBusMethodInvocation.return_dbus_error(&self, ZString error_name, ZString error_message) @extern("g_dbus_method_invocation_return_dbus_error");

<* Maps to return_error *>
extern fn void DBusMethodInvocation.return_error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("g_dbus_method_invocation_return_error");

<* Maps to return_error_literal *>
extern fn void DBusMethodInvocation.return_error_literal(&self, glib::Quark domain, int code, ZString message) @extern("g_dbus_method_invocation_return_error_literal");

<* Maps to return_gerror *>
extern fn void DBusMethodInvocation.return_gerror(&self, glib::Error* error) @extern("g_dbus_method_invocation_return_gerror");

<* Maps to return_value *>
extern fn void DBusMethodInvocation.return_value(&self, glib::Variant* parameters) @extern("g_dbus_method_invocation_return_value");

<* Maps to return_value_with_unix_fd_list *>
extern fn void DBusMethodInvocation.return_value_with_unix_fd_list(&self, glib::Variant* parameters, UnixFDList* fd_list) @extern("g_dbus_method_invocation_return_value_with_unix_fd_list");

<* Maps to take_error *>
extern fn void DBusMethodInvocation.take_error(&self, glib::Error* error) @extern("g_dbus_method_invocation_take_error");


<* Maps to GDBusObjectManagerClient *>
distinct DBusObjectManagerClient = void*;

fn gobject::Object* DBusObjectManagerClient.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_connection *>
extern fn DBusConnection* DBusObjectManagerClient.get_connection(&self) @extern("g_dbus_object_manager_client_get_connection");

<* Maps to get_flags *>
extern fn DBusObjectManagerClientFlags DBusObjectManagerClient.get_flags(&self) @extern("g_dbus_object_manager_client_get_flags");

<* Maps to get_name *>
extern fn ZString DBusObjectManagerClient.get_name(&self) @extern("g_dbus_object_manager_client_get_name");

<* Maps to get_name_owner *>
extern fn ZString* DBusObjectManagerClient.get_name_owner(&self) @extern("g_dbus_object_manager_client_get_name_owner");


<* Maps to GDBusObjectManagerServer *>
distinct DBusObjectManagerServer = void*;

fn gobject::Object* DBusObjectManagerServer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to export *>
extern fn void DBusObjectManagerServer.export(&self, DBusObjectSkeleton* object) @extern("g_dbus_object_manager_server_export");

<* Maps to export_uniquely *>
extern fn void DBusObjectManagerServer.export_uniquely(&self, DBusObjectSkeleton* object) @extern("g_dbus_object_manager_server_export_uniquely");

<* Maps to get_connection *>
extern fn DBusConnection* DBusObjectManagerServer.get_connection(&self) @extern("g_dbus_object_manager_server_get_connection");

<* Maps to is_exported *>
extern fn bool DBusObjectManagerServer.is_exported(&self, DBusObjectSkeleton* object) @extern("g_dbus_object_manager_server_is_exported");

<* Maps to set_connection *>
extern fn void DBusObjectManagerServer.set_connection(&self, DBusConnection* connection) @extern("g_dbus_object_manager_server_set_connection");

<* Maps to unexport *>
extern fn bool DBusObjectManagerServer.unexport(&self, ZString object_path) @extern("g_dbus_object_manager_server_unexport");


<* Maps to GDBusObjectProxy *>
distinct DBusObjectProxy = void*;

fn gobject::Object* DBusObjectProxy.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_connection *>
extern fn DBusConnection* DBusObjectProxy.get_connection(&self) @extern("g_dbus_object_proxy_get_connection");


<* Maps to GDBusObjectSkeleton *>
distinct DBusObjectSkeleton = void*;

fn gobject::Object* DBusObjectSkeleton.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_interface *>
extern fn void DBusObjectSkeleton.add_interface(&self, DBusInterfaceSkeleton* interface_) @extern("g_dbus_object_skeleton_add_interface");

<* Maps to flush *>
extern fn void DBusObjectSkeleton.flush(&self) @extern("g_dbus_object_skeleton_flush");

<* Maps to remove_interface *>
extern fn void DBusObjectSkeleton.remove_interface(&self, DBusInterfaceSkeleton* interface_) @extern("g_dbus_object_skeleton_remove_interface");

<* Maps to remove_interface_by_name *>
extern fn void DBusObjectSkeleton.remove_interface_by_name(&self, ZString interface_name) @extern("g_dbus_object_skeleton_remove_interface_by_name");

<* Maps to set_object_path *>
extern fn void DBusObjectSkeleton.set_object_path(&self, ZString object_path) @extern("g_dbus_object_skeleton_set_object_path");


<* Maps to GDBusProxy *>
distinct DBusProxy = void*;

fn gobject::Object* DBusProxy.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to call *>
extern fn void DBusProxy.call(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_proxy_call");

<* Maps to call_finish *>
extern fn glib::Variant* DBusProxy.call_finish(&self, AsyncResult* res) @extern("g_dbus_proxy_call_finish");

<* Maps to call_sync *>
extern fn glib::Variant* DBusProxy.call_sync(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable) @extern("g_dbus_proxy_call_sync");

<* Maps to call_with_unix_fd_list *>
extern fn void DBusProxy.call_with_unix_fd_list(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_proxy_call_with_unix_fd_list");

<* Maps to call_with_unix_fd_list_finish *>
extern fn glib::Variant* DBusProxy.call_with_unix_fd_list_finish(&self, UnixFDList* out_fd_list, AsyncResult* res) @extern("g_dbus_proxy_call_with_unix_fd_list_finish");

<* Maps to call_with_unix_fd_list_sync *>
extern fn glib::Variant* DBusProxy.call_with_unix_fd_list_sync(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, UnixFDList* out_fd_list, Cancellable* cancellable) @extern("g_dbus_proxy_call_with_unix_fd_list_sync");

<* Maps to get_cached_property *>
extern fn glib::Variant* DBusProxy.get_cached_property(&self, ZString property_name) @extern("g_dbus_proxy_get_cached_property");

<* Maps to get_cached_property_names *>
extern fn ZString DBusProxy.get_cached_property_names(&self) @extern("g_dbus_proxy_get_cached_property_names");

<* Maps to get_connection *>
extern fn DBusConnection* DBusProxy.get_connection(&self) @extern("g_dbus_proxy_get_connection");

<* Maps to get_default_timeout *>
extern fn int DBusProxy.get_default_timeout(&self) @extern("g_dbus_proxy_get_default_timeout");

<* Maps to get_flags *>
extern fn DBusProxyFlags DBusProxy.get_flags(&self) @extern("g_dbus_proxy_get_flags");

<* Maps to get_interface_info *>
extern fn DBusInterfaceInfo* DBusProxy.get_interface_info(&self) @extern("g_dbus_proxy_get_interface_info");

<* Maps to get_interface_name *>
extern fn ZString DBusProxy.get_interface_name(&self) @extern("g_dbus_proxy_get_interface_name");

<* Maps to get_name *>
extern fn ZString DBusProxy.get_name(&self) @extern("g_dbus_proxy_get_name");

<* Maps to get_name_owner *>
extern fn ZString* DBusProxy.get_name_owner(&self) @extern("g_dbus_proxy_get_name_owner");

<* Maps to get_object_path *>
extern fn ZString DBusProxy.get_object_path(&self) @extern("g_dbus_proxy_get_object_path");

<* Maps to set_cached_property *>
extern fn void DBusProxy.set_cached_property(&self, ZString property_name, glib::Variant* value) @extern("g_dbus_proxy_set_cached_property");

<* Maps to set_default_timeout *>
extern fn void DBusProxy.set_default_timeout(&self, int timeout_msec) @extern("g_dbus_proxy_set_default_timeout");

<* Maps to set_interface_info *>
extern fn void DBusProxy.set_interface_info(&self, DBusInterfaceInfo* info) @extern("g_dbus_proxy_set_interface_info");


<* Maps to GDBusServer *>
distinct DBusServer = void*;

fn gobject::Object* DBusServer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_client_address *>
extern fn ZString DBusServer.get_client_address(&self) @extern("g_dbus_server_get_client_address");

<* Maps to get_flags *>
extern fn DBusServerFlags DBusServer.get_flags(&self) @extern("g_dbus_server_get_flags");

<* Maps to get_guid *>
extern fn ZString DBusServer.get_guid(&self) @extern("g_dbus_server_get_guid");

<* Maps to is_active *>
extern fn bool DBusServer.is_active(&self) @extern("g_dbus_server_is_active");

<* Maps to start *>
extern fn void DBusServer.start(&self) @extern("g_dbus_server_start");

<* Maps to stop *>
extern fn void DBusServer.stop(&self) @extern("g_dbus_server_stop");


<* Maps to GDataInputStream *>
distinct DataInputStream = void*;

fn BufferedInputStream* DataInputStream.as_BufferedInputStream(&self) => (BufferedInputStream*)(self);


<* Maps to get_byte_order *>
extern fn DataStreamByteOrder DataInputStream.get_byte_order(&self) @extern("g_data_input_stream_get_byte_order");

<* Maps to get_newline_type *>
extern fn DataStreamNewlineType DataInputStream.get_newline_type(&self) @extern("g_data_input_stream_get_newline_type");

<* Maps to read_byte *>
extern fn char DataInputStream.read_byte(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_byte");

<* Maps to read_int16 *>
extern fn short DataInputStream.read_int16(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_int16");

<* Maps to read_int32 *>
extern fn int DataInputStream.read_int32(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_int32");

<* Maps to read_int64 *>
extern fn long DataInputStream.read_int64(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_int64");

<* Maps to read_line *>
extern fn char DataInputStream.read_line(&self, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_line");

<* Maps to read_line_async *>
extern fn void DataInputStream.read_line_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_data_input_stream_read_line_async");

<* Maps to read_line_finish *>
extern fn char DataInputStream.read_line_finish(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_line_finish");

<* Maps to read_line_finish_utf8 *>
extern fn ZString* DataInputStream.read_line_finish_utf8(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_line_finish_utf8");

<* Maps to read_line_utf8 *>
extern fn ZString* DataInputStream.read_line_utf8(&self, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_line_utf8");

<* Maps to read_uint16 *>
extern fn ushort DataInputStream.read_uint16(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_uint16");

<* Maps to read_uint32 *>
extern fn uint DataInputStream.read_uint32(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_uint32");

<* Maps to read_uint64 *>
extern fn ulong DataInputStream.read_uint64(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_uint64");

<* Maps to read_until *>
extern fn ZString* DataInputStream.read_until(&self, ZString stop_chars, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_until");

<* Maps to read_until_async *>
extern fn void DataInputStream.read_until_async(&self, ZString stop_chars, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_data_input_stream_read_until_async");

<* Maps to read_until_finish *>
extern fn ZString* DataInputStream.read_until_finish(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_until_finish");

<* Maps to read_upto *>
extern fn ZString* DataInputStream.read_upto(&self, ZString stop_chars, isz stop_chars_len, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_upto");

<* Maps to read_upto_async *>
extern fn void DataInputStream.read_upto_async(&self, ZString stop_chars, isz stop_chars_len, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_data_input_stream_read_upto_async");

<* Maps to read_upto_finish *>
extern fn ZString* DataInputStream.read_upto_finish(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_upto_finish");

<* Maps to set_byte_order *>
extern fn void DataInputStream.set_byte_order(&self, DataStreamByteOrder order) @extern("g_data_input_stream_set_byte_order");

<* Maps to set_newline_type *>
extern fn void DataInputStream.set_newline_type(&self, DataStreamNewlineType type) @extern("g_data_input_stream_set_newline_type");


<* Maps to GDataOutputStream *>
distinct DataOutputStream = void*;

fn FilterOutputStream* DataOutputStream.as_FilterOutputStream(&self) => (FilterOutputStream*)(self);


<* Maps to get_byte_order *>
extern fn DataStreamByteOrder DataOutputStream.get_byte_order(&self) @extern("g_data_output_stream_get_byte_order");

<* Maps to put_byte *>
extern fn bool DataOutputStream.put_byte(&self, char data, Cancellable* cancellable) @extern("g_data_output_stream_put_byte");

<* Maps to put_int16 *>
extern fn bool DataOutputStream.put_int16(&self, short data, Cancellable* cancellable) @extern("g_data_output_stream_put_int16");

<* Maps to put_int32 *>
extern fn bool DataOutputStream.put_int32(&self, int data, Cancellable* cancellable) @extern("g_data_output_stream_put_int32");

<* Maps to put_int64 *>
extern fn bool DataOutputStream.put_int64(&self, long data, Cancellable* cancellable) @extern("g_data_output_stream_put_int64");

<* Maps to put_string *>
extern fn bool DataOutputStream.put_string(&self, ZString str, Cancellable* cancellable) @extern("g_data_output_stream_put_string");

<* Maps to put_uint16 *>
extern fn bool DataOutputStream.put_uint16(&self, ushort data, Cancellable* cancellable) @extern("g_data_output_stream_put_uint16");

<* Maps to put_uint32 *>
extern fn bool DataOutputStream.put_uint32(&self, uint data, Cancellable* cancellable) @extern("g_data_output_stream_put_uint32");

<* Maps to put_uint64 *>
extern fn bool DataOutputStream.put_uint64(&self, ulong data, Cancellable* cancellable) @extern("g_data_output_stream_put_uint64");

<* Maps to set_byte_order *>
extern fn void DataOutputStream.set_byte_order(&self, DataStreamByteOrder order) @extern("g_data_output_stream_set_byte_order");


<* Maps to GDebugControllerDBus *>
distinct DebugControllerDBus = void*;

fn gobject::Object* DebugControllerDBus.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to stop *>
extern fn void DebugControllerDBus.stop(&self) @extern("g_debug_controller_dbus_stop");


<* Maps to GDesktopAppInfo *>
distinct DesktopAppInfo = void*;

fn gobject::Object* DesktopAppInfo.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_action_name *>
extern fn ZString* DesktopAppInfo.get_action_name(&self, ZString action_name) @extern("g_desktop_app_info_get_action_name");

<* Maps to get_boolean *>
extern fn bool DesktopAppInfo.get_boolean(&self, ZString key) @extern("g_desktop_app_info_get_boolean");

<* Maps to get_categories *>
extern fn ZString DesktopAppInfo.get_categories(&self) @extern("g_desktop_app_info_get_categories");

<* Maps to get_filename *>
extern fn ZString DesktopAppInfo.get_filename(&self) @extern("g_desktop_app_info_get_filename");

<* Maps to get_generic_name *>
extern fn ZString DesktopAppInfo.get_generic_name(&self) @extern("g_desktop_app_info_get_generic_name");

<* Maps to get_is_hidden *>
extern fn bool DesktopAppInfo.get_is_hidden(&self) @extern("g_desktop_app_info_get_is_hidden");

<* Maps to get_keywords *>
extern fn ZString DesktopAppInfo.get_keywords(&self) @extern("g_desktop_app_info_get_keywords");

<* Maps to get_locale_string *>
extern fn ZString* DesktopAppInfo.get_locale_string(&self, ZString key) @extern("g_desktop_app_info_get_locale_string");

<* Maps to get_nodisplay *>
extern fn bool DesktopAppInfo.get_nodisplay(&self) @extern("g_desktop_app_info_get_nodisplay");

<* Maps to get_show_in *>
extern fn bool DesktopAppInfo.get_show_in(&self, ZString desktop_env) @extern("g_desktop_app_info_get_show_in");

<* Maps to get_startup_wm_class *>
extern fn ZString DesktopAppInfo.get_startup_wm_class(&self) @extern("g_desktop_app_info_get_startup_wm_class");

<* Maps to get_string *>
extern fn ZString* DesktopAppInfo.get_string(&self, ZString key) @extern("g_desktop_app_info_get_string");

<* Maps to get_string_list *>
extern fn ZString DesktopAppInfo.get_string_list(&self, ZString key, usz* length) @extern("g_desktop_app_info_get_string_list");

<* Maps to has_key *>
extern fn bool DesktopAppInfo.has_key(&self, ZString key) @extern("g_desktop_app_info_has_key");

<* Maps to launch_action *>
extern fn void DesktopAppInfo.launch_action(&self, ZString action_name, AppLaunchContext* launch_context) @extern("g_desktop_app_info_launch_action");

<* Maps to launch_uris_as_manager *>
extern fn bool DesktopAppInfo.launch_uris_as_manager(&self, glib::List* uris, AppLaunchContext* launch_context, glib::SpawnFlags spawn_flags, glib::SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data) @extern("g_desktop_app_info_launch_uris_as_manager");

<* Maps to launch_uris_as_manager_with_fds *>
extern fn bool DesktopAppInfo.launch_uris_as_manager_with_fds(&self, glib::List* uris, AppLaunchContext* launch_context, glib::SpawnFlags spawn_flags, glib::SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data, int stdin_fd, int stdout_fd, int stderr_fd) @extern("g_desktop_app_info_launch_uris_as_manager_with_fds");

<* Maps to list_actions *>
extern fn ZString DesktopAppInfo.list_actions(&self) @extern("g_desktop_app_info_list_actions");


<* Maps to GEmblem *>
distinct Emblem = void*;

fn gobject::Object* Emblem.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_icon *>
extern fn Icon* Emblem.get_icon(&self) @extern("g_emblem_get_icon");

<* Maps to get_origin *>
extern fn EmblemOrigin Emblem.get_origin(&self) @extern("g_emblem_get_origin");


<* Maps to GEmblemedIcon *>
distinct EmblemedIcon = void*;

fn gobject::Object* EmblemedIcon.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_emblem *>
extern fn void EmblemedIcon.add_emblem(&self, Emblem* emblem) @extern("g_emblemed_icon_add_emblem");

<* Maps to clear_emblems *>
extern fn void EmblemedIcon.clear_emblems(&self) @extern("g_emblemed_icon_clear_emblems");

<* Maps to get_emblems *>
extern fn glib::List* EmblemedIcon.get_emblems(&self) @extern("g_emblemed_icon_get_emblems");

<* Maps to get_icon *>
extern fn Icon* EmblemedIcon.get_icon(&self) @extern("g_emblemed_icon_get_icon");


<* Maps to GFileEnumerator *>
distinct FileEnumerator = void*;

fn gobject::Object* FileEnumerator.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to close *>
extern fn bool FileEnumerator.close(&self, Cancellable* cancellable) @extern("g_file_enumerator_close");

<* Maps to close_async *>
extern fn void FileEnumerator.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_enumerator_close_async");

<* Maps to close_finish *>
extern fn bool FileEnumerator.close_finish(&self, AsyncResult* result) @extern("g_file_enumerator_close_finish");

<* Maps to get_child *>
extern fn File* FileEnumerator.get_child(&self, FileInfo* info) @extern("g_file_enumerator_get_child");

<* Maps to get_container *>
extern fn File* FileEnumerator.get_container(&self) @extern("g_file_enumerator_get_container");

<* Maps to has_pending *>
extern fn bool FileEnumerator.has_pending(&self) @extern("g_file_enumerator_has_pending");

<* Maps to is_closed *>
extern fn bool FileEnumerator.is_closed(&self) @extern("g_file_enumerator_is_closed");

<* Maps to iterate *>
extern fn bool FileEnumerator.iterate(&self, FileInfo* out_info, File* out_child, Cancellable* cancellable) @extern("g_file_enumerator_iterate");

<* Maps to next_file *>
extern fn FileInfo* FileEnumerator.next_file(&self, Cancellable* cancellable) @extern("g_file_enumerator_next_file");

<* Maps to next_files_async *>
extern fn void FileEnumerator.next_files_async(&self, int num_files, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_enumerator_next_files_async");

<* Maps to next_files_finish *>
extern fn glib::List* FileEnumerator.next_files_finish(&self, AsyncResult* result) @extern("g_file_enumerator_next_files_finish");

<* Maps to set_pending *>
extern fn void FileEnumerator.set_pending(&self, bool pending) @extern("g_file_enumerator_set_pending");


<* Maps to GFileIOStream *>
distinct FileIOStream = void*;

fn IOStream* FileIOStream.as_IOStream(&self) => (IOStream*)(self);


<* Maps to get_etag *>
extern fn ZString* FileIOStream.get_etag(&self) @extern("g_file_io_stream_get_etag");

<* Maps to query_info *>
extern fn FileInfo* FileIOStream.query_info(&self, ZString attributes, Cancellable* cancellable) @extern("g_file_io_stream_query_info");

<* Maps to query_info_async *>
extern fn void FileIOStream.query_info_async(&self, ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_io_stream_query_info_async");

<* Maps to query_info_finish *>
extern fn FileInfo* FileIOStream.query_info_finish(&self, AsyncResult* result) @extern("g_file_io_stream_query_info_finish");


<* Maps to GFileIcon *>
distinct FileIcon = void*;

fn gobject::Object* FileIcon.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_file *>
extern fn File* FileIcon.get_file(&self) @extern("g_file_icon_get_file");


<* Maps to GFileInfo *>
distinct FileInfo = void*;

fn gobject::Object* FileInfo.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to clear_status *>
extern fn void FileInfo.clear_status(&self) @extern("g_file_info_clear_status");

<* Maps to copy_into *>
extern fn void FileInfo.copy_into(&self, FileInfo* dest_info) @extern("g_file_info_copy_into");

<* Maps to dup *>
extern fn FileInfo* FileInfo.dup(&self) @extern("g_file_info_dup");

<* Maps to get_access_date_time *>
extern fn glib::DateTime* FileInfo.get_access_date_time(&self) @extern("g_file_info_get_access_date_time");

<* Maps to get_attribute_as_string *>
extern fn ZString* FileInfo.get_attribute_as_string(&self, ZString attribute) @extern("g_file_info_get_attribute_as_string");

<* Maps to get_attribute_boolean *>
extern fn bool FileInfo.get_attribute_boolean(&self, ZString attribute) @extern("g_file_info_get_attribute_boolean");

<* Maps to get_attribute_byte_string *>
extern fn ZString FileInfo.get_attribute_byte_string(&self, ZString attribute) @extern("g_file_info_get_attribute_byte_string");

<* Maps to get_attribute_data *>
extern fn bool FileInfo.get_attribute_data(&self, ZString attribute, FileAttributeType* type, void* value_pp, FileAttributeStatus* status) @extern("g_file_info_get_attribute_data");

<* Maps to get_attribute_file_path *>
extern fn ZString FileInfo.get_attribute_file_path(&self, ZString attribute) @extern("g_file_info_get_attribute_file_path");

<* Maps to get_attribute_int32 *>
extern fn int FileInfo.get_attribute_int32(&self, ZString attribute) @extern("g_file_info_get_attribute_int32");

<* Maps to get_attribute_int64 *>
extern fn long FileInfo.get_attribute_int64(&self, ZString attribute) @extern("g_file_info_get_attribute_int64");

<* Maps to get_attribute_object *>
extern fn gobject::Object* FileInfo.get_attribute_object(&self, ZString attribute) @extern("g_file_info_get_attribute_object");

<* Maps to get_attribute_status *>
extern fn FileAttributeStatus FileInfo.get_attribute_status(&self, ZString attribute) @extern("g_file_info_get_attribute_status");

<* Maps to get_attribute_string *>
extern fn ZString FileInfo.get_attribute_string(&self, ZString attribute) @extern("g_file_info_get_attribute_string");

<* Maps to get_attribute_stringv *>
extern fn ZString FileInfo.get_attribute_stringv(&self, ZString attribute) @extern("g_file_info_get_attribute_stringv");

<* Maps to get_attribute_type *>
extern fn FileAttributeType FileInfo.get_attribute_type(&self, ZString attribute) @extern("g_file_info_get_attribute_type");

<* Maps to get_attribute_uint32 *>
extern fn uint FileInfo.get_attribute_uint32(&self, ZString attribute) @extern("g_file_info_get_attribute_uint32");

<* Maps to get_attribute_uint64 *>
extern fn ulong FileInfo.get_attribute_uint64(&self, ZString attribute) @extern("g_file_info_get_attribute_uint64");

<* Maps to get_content_type *>
extern fn ZString FileInfo.get_content_type(&self) @extern("g_file_info_get_content_type");

<* Maps to get_creation_date_time *>
extern fn glib::DateTime* FileInfo.get_creation_date_time(&self) @extern("g_file_info_get_creation_date_time");

<* Maps to get_deletion_date *>
extern fn glib::DateTime* FileInfo.get_deletion_date(&self) @extern("g_file_info_get_deletion_date");

<* Maps to get_display_name *>
extern fn ZString FileInfo.get_display_name(&self) @extern("g_file_info_get_display_name");

<* Maps to get_edit_name *>
extern fn ZString FileInfo.get_edit_name(&self) @extern("g_file_info_get_edit_name");

<* Maps to get_etag *>
extern fn ZString FileInfo.get_etag(&self) @extern("g_file_info_get_etag");

<* Maps to get_file_type *>
extern fn FileType FileInfo.get_file_type(&self) @extern("g_file_info_get_file_type");

<* Maps to get_icon *>
extern fn Icon* FileInfo.get_icon(&self) @extern("g_file_info_get_icon");

<* Maps to get_is_backup *>
extern fn bool FileInfo.get_is_backup(&self) @extern("g_file_info_get_is_backup");

<* Maps to get_is_hidden *>
extern fn bool FileInfo.get_is_hidden(&self) @extern("g_file_info_get_is_hidden");

<* Maps to get_is_symlink *>
extern fn bool FileInfo.get_is_symlink(&self) @extern("g_file_info_get_is_symlink");

<* Maps to get_modification_date_time *>
extern fn glib::DateTime* FileInfo.get_modification_date_time(&self) @extern("g_file_info_get_modification_date_time");

<* Maps to get_modification_time *>
extern fn void FileInfo.get_modification_time(&self, glib::TimeVal* result) @extern("g_file_info_get_modification_time");

<* Maps to get_name *>
extern fn ZString FileInfo.get_name(&self) @extern("g_file_info_get_name");

<* Maps to get_size *>
extern fn long FileInfo.get_size(&self) @extern("g_file_info_get_size");

<* Maps to get_sort_order *>
extern fn int FileInfo.get_sort_order(&self) @extern("g_file_info_get_sort_order");

<* Maps to get_symbolic_icon *>
extern fn Icon* FileInfo.get_symbolic_icon(&self) @extern("g_file_info_get_symbolic_icon");

<* Maps to get_symlink_target *>
extern fn ZString FileInfo.get_symlink_target(&self) @extern("g_file_info_get_symlink_target");

<* Maps to has_attribute *>
extern fn bool FileInfo.has_attribute(&self, ZString attribute) @extern("g_file_info_has_attribute");

<* Maps to has_namespace *>
extern fn bool FileInfo.has_namespace(&self, ZString name_space) @extern("g_file_info_has_namespace");

<* Maps to list_attributes *>
extern fn ZString FileInfo.list_attributes(&self, ZString name_space) @extern("g_file_info_list_attributes");

<* Maps to remove_attribute *>
extern fn void FileInfo.remove_attribute(&self, ZString attribute) @extern("g_file_info_remove_attribute");

<* Maps to set_access_date_time *>
extern fn void FileInfo.set_access_date_time(&self, glib::DateTime* atime) @extern("g_file_info_set_access_date_time");

<* Maps to set_attribute *>
extern fn void FileInfo.set_attribute(&self, ZString attribute, FileAttributeType type, void* value_p) @extern("g_file_info_set_attribute");

<* Maps to set_attribute_boolean *>
extern fn void FileInfo.set_attribute_boolean(&self, ZString attribute, bool attr_value) @extern("g_file_info_set_attribute_boolean");

<* Maps to set_attribute_byte_string *>
extern fn void FileInfo.set_attribute_byte_string(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_byte_string");

<* Maps to set_attribute_file_path *>
extern fn void FileInfo.set_attribute_file_path(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_file_path");

<* Maps to set_attribute_int32 *>
extern fn void FileInfo.set_attribute_int32(&self, ZString attribute, int attr_value) @extern("g_file_info_set_attribute_int32");

<* Maps to set_attribute_int64 *>
extern fn void FileInfo.set_attribute_int64(&self, ZString attribute, long attr_value) @extern("g_file_info_set_attribute_int64");

<* Maps to set_attribute_mask *>
extern fn void FileInfo.set_attribute_mask(&self, FileAttributeMatcher* mask) @extern("g_file_info_set_attribute_mask");

<* Maps to set_attribute_object *>
extern fn void FileInfo.set_attribute_object(&self, ZString attribute, gobject::Object* attr_value) @extern("g_file_info_set_attribute_object");

<* Maps to set_attribute_status *>
extern fn bool FileInfo.set_attribute_status(&self, ZString attribute, FileAttributeStatus status) @extern("g_file_info_set_attribute_status");

<* Maps to set_attribute_string *>
extern fn void FileInfo.set_attribute_string(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_string");

<* Maps to set_attribute_stringv *>
extern fn void FileInfo.set_attribute_stringv(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_stringv");

<* Maps to set_attribute_uint32 *>
extern fn void FileInfo.set_attribute_uint32(&self, ZString attribute, uint attr_value) @extern("g_file_info_set_attribute_uint32");

<* Maps to set_attribute_uint64 *>
extern fn void FileInfo.set_attribute_uint64(&self, ZString attribute, ulong attr_value) @extern("g_file_info_set_attribute_uint64");

<* Maps to set_content_type *>
extern fn void FileInfo.set_content_type(&self, ZString content_type) @extern("g_file_info_set_content_type");

<* Maps to set_creation_date_time *>
extern fn void FileInfo.set_creation_date_time(&self, glib::DateTime* creation_time) @extern("g_file_info_set_creation_date_time");

<* Maps to set_display_name *>
extern fn void FileInfo.set_display_name(&self, ZString display_name) @extern("g_file_info_set_display_name");

<* Maps to set_edit_name *>
extern fn void FileInfo.set_edit_name(&self, ZString edit_name) @extern("g_file_info_set_edit_name");

<* Maps to set_file_type *>
extern fn void FileInfo.set_file_type(&self, FileType type) @extern("g_file_info_set_file_type");

<* Maps to set_icon *>
extern fn void FileInfo.set_icon(&self, Icon* icon) @extern("g_file_info_set_icon");

<* Maps to set_is_hidden *>
extern fn void FileInfo.set_is_hidden(&self, bool is_hidden) @extern("g_file_info_set_is_hidden");

<* Maps to set_is_symlink *>
extern fn void FileInfo.set_is_symlink(&self, bool is_symlink) @extern("g_file_info_set_is_symlink");

<* Maps to set_modification_date_time *>
extern fn void FileInfo.set_modification_date_time(&self, glib::DateTime* mtime) @extern("g_file_info_set_modification_date_time");

<* Maps to set_modification_time *>
extern fn void FileInfo.set_modification_time(&self, glib::TimeVal* mtime) @extern("g_file_info_set_modification_time");

<* Maps to set_name *>
extern fn void FileInfo.set_name(&self, ZString name) @extern("g_file_info_set_name");

<* Maps to set_size *>
extern fn void FileInfo.set_size(&self, long size) @extern("g_file_info_set_size");

<* Maps to set_sort_order *>
extern fn void FileInfo.set_sort_order(&self, int sort_order) @extern("g_file_info_set_sort_order");

<* Maps to set_symbolic_icon *>
extern fn void FileInfo.set_symbolic_icon(&self, Icon* icon) @extern("g_file_info_set_symbolic_icon");

<* Maps to set_symlink_target *>
extern fn void FileInfo.set_symlink_target(&self, ZString symlink_target) @extern("g_file_info_set_symlink_target");

<* Maps to unset_attribute_mask *>
extern fn void FileInfo.unset_attribute_mask(&self) @extern("g_file_info_unset_attribute_mask");


<* Maps to GFileInputStream *>
distinct FileInputStream = void*;

fn InputStream* FileInputStream.as_InputStream(&self) => (InputStream*)(self);


<* Maps to query_info *>
extern fn FileInfo* FileInputStream.query_info(&self, ZString attributes, Cancellable* cancellable) @extern("g_file_input_stream_query_info");

<* Maps to query_info_async *>
extern fn void FileInputStream.query_info_async(&self, ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_input_stream_query_info_async");

<* Maps to query_info_finish *>
extern fn FileInfo* FileInputStream.query_info_finish(&self, AsyncResult* result) @extern("g_file_input_stream_query_info_finish");


<* Maps to GFileMonitor *>
distinct FileMonitor = void*;

fn gobject::Object* FileMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to cancel *>
extern fn bool FileMonitor.cancel(&self) @extern("g_file_monitor_cancel");

<* Maps to emit_event *>
extern fn void FileMonitor.emit_event(&self, File* child, File* other_file, FileMonitorEvent event_type) @extern("g_file_monitor_emit_event");

<* Maps to is_cancelled *>
extern fn bool FileMonitor.is_cancelled(&self) @extern("g_file_monitor_is_cancelled");

<* Maps to set_rate_limit *>
extern fn void FileMonitor.set_rate_limit(&self, int limit_msecs) @extern("g_file_monitor_set_rate_limit");


<* Maps to GFileOutputStream *>
distinct FileOutputStream = void*;

fn OutputStream* FileOutputStream.as_OutputStream(&self) => (OutputStream*)(self);


<* Maps to get_etag *>
extern fn ZString* FileOutputStream.get_etag(&self) @extern("g_file_output_stream_get_etag");

<* Maps to query_info *>
extern fn FileInfo* FileOutputStream.query_info(&self, ZString attributes, Cancellable* cancellable) @extern("g_file_output_stream_query_info");

<* Maps to query_info_async *>
extern fn void FileOutputStream.query_info_async(&self, ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_output_stream_query_info_async");

<* Maps to query_info_finish *>
extern fn FileInfo* FileOutputStream.query_info_finish(&self, AsyncResult* result) @extern("g_file_output_stream_query_info_finish");


<* Maps to GFilenameCompleter *>
distinct FilenameCompleter = void*;

fn gobject::Object* FilenameCompleter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_completion_suffix *>
extern fn ZString* FilenameCompleter.get_completion_suffix(&self, ZString initial_text) @extern("g_filename_completer_get_completion_suffix");

<* Maps to get_completions *>
extern fn ZString FilenameCompleter.get_completions(&self, ZString initial_text) @extern("g_filename_completer_get_completions");

<* Maps to set_dirs_only *>
extern fn void FilenameCompleter.set_dirs_only(&self, bool dirs_only) @extern("g_filename_completer_set_dirs_only");


<* Maps to GFilterInputStream *>
distinct FilterInputStream = void*;

fn InputStream* FilterInputStream.as_InputStream(&self) => (InputStream*)(self);


<* Maps to get_base_stream *>
extern fn InputStream* FilterInputStream.get_base_stream(&self) @extern("g_filter_input_stream_get_base_stream");

<* Maps to get_close_base_stream *>
extern fn bool FilterInputStream.get_close_base_stream(&self) @extern("g_filter_input_stream_get_close_base_stream");

<* Maps to set_close_base_stream *>
extern fn void FilterInputStream.set_close_base_stream(&self, bool close_base) @extern("g_filter_input_stream_set_close_base_stream");


<* Maps to GFilterOutputStream *>
distinct FilterOutputStream = void*;

fn OutputStream* FilterOutputStream.as_OutputStream(&self) => (OutputStream*)(self);


<* Maps to get_base_stream *>
extern fn OutputStream* FilterOutputStream.get_base_stream(&self) @extern("g_filter_output_stream_get_base_stream");

<* Maps to get_close_base_stream *>
extern fn bool FilterOutputStream.get_close_base_stream(&self) @extern("g_filter_output_stream_get_close_base_stream");

<* Maps to set_close_base_stream *>
extern fn void FilterOutputStream.set_close_base_stream(&self, bool close_base) @extern("g_filter_output_stream_set_close_base_stream");


<* Maps to GIOModule *>
distinct IOModule = void*;

fn gobject::TypeModule* IOModule.as_gobject_TypeModule(&self) => (gobject::TypeModule*)(self);


<* Maps to load *>
extern fn void IOModule.load(&self) @extern("g_io_module_load");

<* Maps to unload *>
extern fn void IOModule.unload(&self) @extern("g_io_module_unload");


<* Maps to GIOStream *>
distinct IOStream = void*;

fn gobject::Object* IOStream.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to clear_pending *>
extern fn void IOStream.clear_pending(&self) @extern("g_io_stream_clear_pending");

<* Maps to close *>
extern fn bool IOStream.close(&self, Cancellable* cancellable) @extern("g_io_stream_close");

<* Maps to close_async *>
extern fn void IOStream.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_io_stream_close_async");

<* Maps to close_finish *>
extern fn bool IOStream.close_finish(&self, AsyncResult* result) @extern("g_io_stream_close_finish");

<* Maps to get_input_stream *>
extern fn InputStream* IOStream.get_input_stream(&self) @extern("g_io_stream_get_input_stream");

<* Maps to get_output_stream *>
extern fn OutputStream* IOStream.get_output_stream(&self) @extern("g_io_stream_get_output_stream");

<* Maps to has_pending *>
extern fn bool IOStream.has_pending(&self) @extern("g_io_stream_has_pending");

<* Maps to is_closed *>
extern fn bool IOStream.is_closed(&self) @extern("g_io_stream_is_closed");

<* Maps to set_pending *>
extern fn bool IOStream.set_pending(&self) @extern("g_io_stream_set_pending");

<* Maps to splice_async *>
extern fn void IOStream.splice_async(&self, IOStream* stream2, IOStreamSpliceFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_io_stream_splice_async");


<* Maps to GInetAddress *>
distinct InetAddress = void*;

fn gobject::Object* InetAddress.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to equal *>
extern fn bool InetAddress.equal(&self, InetAddress* other_address) @extern("g_inet_address_equal");

<* Maps to get_family *>
extern fn SocketFamily InetAddress.get_family(&self) @extern("g_inet_address_get_family");

<* Maps to get_is_any *>
extern fn bool InetAddress.get_is_any(&self) @extern("g_inet_address_get_is_any");

<* Maps to get_is_link_local *>
extern fn bool InetAddress.get_is_link_local(&self) @extern("g_inet_address_get_is_link_local");

<* Maps to get_is_loopback *>
extern fn bool InetAddress.get_is_loopback(&self) @extern("g_inet_address_get_is_loopback");

<* Maps to get_is_mc_global *>
extern fn bool InetAddress.get_is_mc_global(&self) @extern("g_inet_address_get_is_mc_global");

<* Maps to get_is_mc_link_local *>
extern fn bool InetAddress.get_is_mc_link_local(&self) @extern("g_inet_address_get_is_mc_link_local");

<* Maps to get_is_mc_node_local *>
extern fn bool InetAddress.get_is_mc_node_local(&self) @extern("g_inet_address_get_is_mc_node_local");

<* Maps to get_is_mc_org_local *>
extern fn bool InetAddress.get_is_mc_org_local(&self) @extern("g_inet_address_get_is_mc_org_local");

<* Maps to get_is_mc_site_local *>
extern fn bool InetAddress.get_is_mc_site_local(&self) @extern("g_inet_address_get_is_mc_site_local");

<* Maps to get_is_multicast *>
extern fn bool InetAddress.get_is_multicast(&self) @extern("g_inet_address_get_is_multicast");

<* Maps to get_is_site_local *>
extern fn bool InetAddress.get_is_site_local(&self) @extern("g_inet_address_get_is_site_local");

<* Maps to get_native_size *>
extern fn usz InetAddress.get_native_size(&self) @extern("g_inet_address_get_native_size");

<* Maps to to_bytes *>
extern fn char* InetAddress.to_bytes(&self) @extern("g_inet_address_to_bytes");

<* Maps to to_string *>
extern fn ZString* InetAddress.to_string(&self) @extern("g_inet_address_to_string");


<* Maps to GInetAddressMask *>
distinct InetAddressMask = void*;

fn gobject::Object* InetAddressMask.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to equal *>
extern fn bool InetAddressMask.equal(&self, InetAddressMask* mask2) @extern("g_inet_address_mask_equal");

<* Maps to get_address *>
extern fn InetAddress* InetAddressMask.get_address(&self) @extern("g_inet_address_mask_get_address");

<* Maps to get_family *>
extern fn SocketFamily InetAddressMask.get_family(&self) @extern("g_inet_address_mask_get_family");

<* Maps to get_length *>
extern fn uint InetAddressMask.get_length(&self) @extern("g_inet_address_mask_get_length");

<* Maps to matches *>
extern fn bool InetAddressMask.matches(&self, InetAddress* address) @extern("g_inet_address_mask_matches");

<* Maps to to_string *>
extern fn ZString* InetAddressMask.to_string(&self) @extern("g_inet_address_mask_to_string");


<* Maps to GInetSocketAddress *>
distinct InetSocketAddress = void*;

fn SocketAddress* InetSocketAddress.as_SocketAddress(&self) => (SocketAddress*)(self);


<* Maps to get_address *>
extern fn InetAddress* InetSocketAddress.get_address(&self) @extern("g_inet_socket_address_get_address");

<* Maps to get_flowinfo *>
extern fn uint InetSocketAddress.get_flowinfo(&self) @extern("g_inet_socket_address_get_flowinfo");

<* Maps to get_port *>
extern fn ushort InetSocketAddress.get_port(&self) @extern("g_inet_socket_address_get_port");

<* Maps to get_scope_id *>
extern fn uint InetSocketAddress.get_scope_id(&self) @extern("g_inet_socket_address_get_scope_id");


<* Maps to GInputStream *>
distinct InputStream = void*;

fn gobject::Object* InputStream.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to clear_pending *>
extern fn void InputStream.clear_pending(&self) @extern("g_input_stream_clear_pending");

<* Maps to close *>
extern fn bool InputStream.close(&self, Cancellable* cancellable) @extern("g_input_stream_close");

<* Maps to close_async *>
extern fn void InputStream.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_close_async");

<* Maps to close_finish *>
extern fn bool InputStream.close_finish(&self, AsyncResult* result) @extern("g_input_stream_close_finish");

<* Maps to has_pending *>
extern fn bool InputStream.has_pending(&self) @extern("g_input_stream_has_pending");

<* Maps to is_closed *>
extern fn bool InputStream.is_closed(&self) @extern("g_input_stream_is_closed");

<* Maps to read *>
extern fn isz InputStream.read(&self, char buffer, usz count, Cancellable* cancellable) @extern("g_input_stream_read");

<* Maps to read_all *>
extern fn bool InputStream.read_all(&self, char buffer, usz count, usz* bytes_read, Cancellable* cancellable) @extern("g_input_stream_read_all");

<* Maps to read_all_async *>
extern fn void InputStream.read_all_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_read_all_async");

<* Maps to read_all_finish *>
extern fn bool InputStream.read_all_finish(&self, AsyncResult* result, usz* bytes_read) @extern("g_input_stream_read_all_finish");

<* Maps to read_async *>
extern fn void InputStream.read_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_read_async");

<* Maps to read_bytes *>
extern fn glib::Bytes* InputStream.read_bytes(&self, usz count, Cancellable* cancellable) @extern("g_input_stream_read_bytes");

<* Maps to read_bytes_async *>
extern fn void InputStream.read_bytes_async(&self, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_read_bytes_async");

<* Maps to read_bytes_finish *>
extern fn glib::Bytes* InputStream.read_bytes_finish(&self, AsyncResult* result) @extern("g_input_stream_read_bytes_finish");

<* Maps to read_finish *>
extern fn isz InputStream.read_finish(&self, AsyncResult* result) @extern("g_input_stream_read_finish");

<* Maps to set_pending *>
extern fn bool InputStream.set_pending(&self) @extern("g_input_stream_set_pending");

<* Maps to skip *>
extern fn isz InputStream.skip(&self, usz count, Cancellable* cancellable) @extern("g_input_stream_skip");

<* Maps to skip_async *>
extern fn void InputStream.skip_async(&self, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_skip_async");

<* Maps to skip_finish *>
extern fn isz InputStream.skip_finish(&self, AsyncResult* result) @extern("g_input_stream_skip_finish");


<* Maps to GListStore *>
distinct ListStore = void*;

fn gobject::Object* ListStore.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to append *>
extern fn void ListStore.append(&self, gobject::Object* item) @extern("g_list_store_append");

<* Maps to find *>
extern fn bool ListStore.find(&self, gobject::Object* item, uint* position) @extern("g_list_store_find");

<* Maps to find_with_equal_func *>
extern fn bool ListStore.find_with_equal_func(&self, gobject::Object* item, glib::EqualFunc equal_func, uint* position) @extern("g_list_store_find_with_equal_func");

<* Maps to find_with_equal_func_full *>
extern fn bool ListStore.find_with_equal_func_full(&self, gobject::Object* item, glib::EqualFuncFull equal_func, void* user_data, uint* position) @extern("g_list_store_find_with_equal_func_full");

<* Maps to insert *>
extern fn void ListStore.insert(&self, uint position, gobject::Object* item) @extern("g_list_store_insert");

<* Maps to insert_sorted *>
extern fn uint ListStore.insert_sorted(&self, gobject::Object* item, glib::CompareDataFunc compare_func, void* user_data) @extern("g_list_store_insert_sorted");

<* Maps to remove *>
extern fn void ListStore.remove(&self, uint position) @extern("g_list_store_remove");

<* Maps to remove_all *>
extern fn void ListStore.remove_all(&self) @extern("g_list_store_remove_all");

<* Maps to sort *>
extern fn void ListStore.sort(&self, glib::CompareDataFunc compare_func, void* user_data) @extern("g_list_store_sort");

<* Maps to splice *>
extern fn void ListStore.splice(&self, uint position, uint n_removals, gobject::Object additions, uint n_additions) @extern("g_list_store_splice");


<* Maps to GMemoryInputStream *>
distinct MemoryInputStream = void*;

fn InputStream* MemoryInputStream.as_InputStream(&self) => (InputStream*)(self);


<* Maps to add_bytes *>
extern fn void MemoryInputStream.add_bytes(&self, glib::Bytes* bytes) @extern("g_memory_input_stream_add_bytes");

<* Maps to add_data *>
extern fn void MemoryInputStream.add_data(&self, char data, isz len, glib::DestroyNotify destroy) @extern("g_memory_input_stream_add_data");


<* Maps to GMemoryOutputStream *>
distinct MemoryOutputStream = void*;

fn OutputStream* MemoryOutputStream.as_OutputStream(&self) => (OutputStream*)(self);


<* Maps to get_data *>
extern fn void* MemoryOutputStream.get_data(&self) @extern("g_memory_output_stream_get_data");

<* Maps to get_data_size *>
extern fn usz MemoryOutputStream.get_data_size(&self) @extern("g_memory_output_stream_get_data_size");

<* Maps to get_size *>
extern fn usz MemoryOutputStream.get_size(&self) @extern("g_memory_output_stream_get_size");

<* Maps to steal_as_bytes *>
extern fn glib::Bytes* MemoryOutputStream.steal_as_bytes(&self) @extern("g_memory_output_stream_steal_as_bytes");

<* Maps to steal_data *>
extern fn void* MemoryOutputStream.steal_data(&self) @extern("g_memory_output_stream_steal_data");


<* Maps to GMenu *>
distinct Menu = void*;

fn MenuModel* Menu.as_MenuModel(&self) => (MenuModel*)(self);


<* Maps to append *>
extern fn void Menu.append(&self, ZString label, ZString detailed_action) @extern("g_menu_append");

<* Maps to append_item *>
extern fn void Menu.append_item(&self, MenuItem* item) @extern("g_menu_append_item");

<* Maps to append_section *>
extern fn void Menu.append_section(&self, ZString label, MenuModel* section) @extern("g_menu_append_section");

<* Maps to append_submenu *>
extern fn void Menu.append_submenu(&self, ZString label, MenuModel* submenu) @extern("g_menu_append_submenu");

<* Maps to freeze *>
extern fn void Menu.freeze(&self) @extern("g_menu_freeze");

<* Maps to insert *>
extern fn void Menu.insert(&self, int position, ZString label, ZString detailed_action) @extern("g_menu_insert");

<* Maps to insert_item *>
extern fn void Menu.insert_item(&self, int position, MenuItem* item) @extern("g_menu_insert_item");

<* Maps to insert_section *>
extern fn void Menu.insert_section(&self, int position, ZString label, MenuModel* section) @extern("g_menu_insert_section");

<* Maps to insert_submenu *>
extern fn void Menu.insert_submenu(&self, int position, ZString label, MenuModel* submenu) @extern("g_menu_insert_submenu");

<* Maps to prepend *>
extern fn void Menu.prepend(&self, ZString label, ZString detailed_action) @extern("g_menu_prepend");

<* Maps to prepend_item *>
extern fn void Menu.prepend_item(&self, MenuItem* item) @extern("g_menu_prepend_item");

<* Maps to prepend_section *>
extern fn void Menu.prepend_section(&self, ZString label, MenuModel* section) @extern("g_menu_prepend_section");

<* Maps to prepend_submenu *>
extern fn void Menu.prepend_submenu(&self, ZString label, MenuModel* submenu) @extern("g_menu_prepend_submenu");

<* Maps to remove *>
extern fn void Menu.remove(&self, int position) @extern("g_menu_remove");

<* Maps to remove_all *>
extern fn void Menu.remove_all(&self) @extern("g_menu_remove_all");


<* Maps to GMenuAttributeIter *>
distinct MenuAttributeIter = void*;

fn gobject::Object* MenuAttributeIter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_name *>
extern fn ZString MenuAttributeIter.get_name(&self) @extern("g_menu_attribute_iter_get_name");

<* Maps to get_next *>
extern fn bool MenuAttributeIter.get_next(&self, ZString* out_name, glib::Variant* value) @extern("g_menu_attribute_iter_get_next");

<* Maps to get_value *>
extern fn glib::Variant* MenuAttributeIter.get_value(&self) @extern("g_menu_attribute_iter_get_value");

<* Maps to next *>
extern fn bool MenuAttributeIter.next(&self) @extern("g_menu_attribute_iter_next");


<* Maps to GMenuItem *>
distinct MenuItem = void*;

fn gobject::Object* MenuItem.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_attribute *>
extern fn bool MenuItem.get_attribute(&self, ZString attribute, ZString format_string, any rest) @extern("g_menu_item_get_attribute");

<* Maps to get_attribute_value *>
extern fn glib::Variant* MenuItem.get_attribute_value(&self, ZString attribute, glib::VariantType* expected_type) @extern("g_menu_item_get_attribute_value");

<* Maps to get_link *>
extern fn MenuModel* MenuItem.get_link(&self, ZString link) @extern("g_menu_item_get_link");

<* Maps to set_action_and_target *>
extern fn void MenuItem.set_action_and_target(&self, ZString action, ZString format_string, any rest) @extern("g_menu_item_set_action_and_target");

<* Maps to set_action_and_target_value *>
extern fn void MenuItem.set_action_and_target_value(&self, ZString action, glib::Variant* target_value) @extern("g_menu_item_set_action_and_target_value");

<* Maps to set_attribute *>
extern fn void MenuItem.set_attribute(&self, ZString attribute, ZString format_string, any rest) @extern("g_menu_item_set_attribute");

<* Maps to set_attribute_value *>
extern fn void MenuItem.set_attribute_value(&self, ZString attribute, glib::Variant* value) @extern("g_menu_item_set_attribute_value");

<* Maps to set_detailed_action *>
extern fn void MenuItem.set_detailed_action(&self, ZString detailed_action) @extern("g_menu_item_set_detailed_action");

<* Maps to set_icon *>
extern fn void MenuItem.set_icon(&self, Icon* icon) @extern("g_menu_item_set_icon");

<* Maps to set_label *>
extern fn void MenuItem.set_label(&self, ZString label) @extern("g_menu_item_set_label");

<* Maps to set_link *>
extern fn void MenuItem.set_link(&self, ZString link, MenuModel* model) @extern("g_menu_item_set_link");

<* Maps to set_section *>
extern fn void MenuItem.set_section(&self, MenuModel* section) @extern("g_menu_item_set_section");

<* Maps to set_submenu *>
extern fn void MenuItem.set_submenu(&self, MenuModel* submenu) @extern("g_menu_item_set_submenu");


<* Maps to GMenuLinkIter *>
distinct MenuLinkIter = void*;

fn gobject::Object* MenuLinkIter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_name *>
extern fn ZString MenuLinkIter.get_name(&self) @extern("g_menu_link_iter_get_name");

<* Maps to get_next *>
extern fn bool MenuLinkIter.get_next(&self, ZString* out_link, MenuModel* value) @extern("g_menu_link_iter_get_next");

<* Maps to get_value *>
extern fn MenuModel* MenuLinkIter.get_value(&self) @extern("g_menu_link_iter_get_value");

<* Maps to next *>
extern fn bool MenuLinkIter.next(&self) @extern("g_menu_link_iter_next");


<* Maps to GMenuModel *>
distinct MenuModel = void*;

fn gobject::Object* MenuModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_item_attribute *>
extern fn bool MenuModel.get_item_attribute(&self, int item_index, ZString attribute, ZString format_string, any rest) @extern("g_menu_model_get_item_attribute");

<* Maps to get_item_attribute_value *>
extern fn glib::Variant* MenuModel.get_item_attribute_value(&self, int item_index, ZString attribute, glib::VariantType* expected_type) @extern("g_menu_model_get_item_attribute_value");

<* Maps to get_item_link *>
extern fn MenuModel* MenuModel.get_item_link(&self, int item_index, ZString link) @extern("g_menu_model_get_item_link");

<* Maps to get_n_items *>
extern fn int MenuModel.get_n_items(&self) @extern("g_menu_model_get_n_items");

<* Maps to is_mutable *>
extern fn bool MenuModel.is_mutable(&self) @extern("g_menu_model_is_mutable");

<* Maps to items_changed *>
extern fn void MenuModel.items_changed(&self, int position, int removed, int added) @extern("g_menu_model_items_changed");

<* Maps to iterate_item_attributes *>
extern fn MenuAttributeIter* MenuModel.iterate_item_attributes(&self, int item_index) @extern("g_menu_model_iterate_item_attributes");

<* Maps to iterate_item_links *>
extern fn MenuLinkIter* MenuModel.iterate_item_links(&self, int item_index) @extern("g_menu_model_iterate_item_links");


<* Maps to GMountOperation *>
distinct MountOperation = void*;

fn gobject::Object* MountOperation.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_anonymous *>
extern fn bool MountOperation.get_anonymous(&self) @extern("g_mount_operation_get_anonymous");

<* Maps to get_choice *>
extern fn int MountOperation.get_choice(&self) @extern("g_mount_operation_get_choice");

<* Maps to get_domain *>
extern fn ZString MountOperation.get_domain(&self) @extern("g_mount_operation_get_domain");

<* Maps to get_is_tcrypt_hidden_volume *>
extern fn bool MountOperation.get_is_tcrypt_hidden_volume(&self) @extern("g_mount_operation_get_is_tcrypt_hidden_volume");

<* Maps to get_is_tcrypt_system_volume *>
extern fn bool MountOperation.get_is_tcrypt_system_volume(&self) @extern("g_mount_operation_get_is_tcrypt_system_volume");

<* Maps to get_password *>
extern fn ZString MountOperation.get_password(&self) @extern("g_mount_operation_get_password");

<* Maps to get_password_save *>
extern fn PasswordSave MountOperation.get_password_save(&self) @extern("g_mount_operation_get_password_save");

<* Maps to get_pim *>
extern fn uint MountOperation.get_pim(&self) @extern("g_mount_operation_get_pim");

<* Maps to get_username *>
extern fn ZString MountOperation.get_username(&self) @extern("g_mount_operation_get_username");

<* Maps to reply *>
extern fn void MountOperation.reply(&self, MountOperationResult result) @extern("g_mount_operation_reply");

<* Maps to set_anonymous *>
extern fn void MountOperation.set_anonymous(&self, bool anonymous) @extern("g_mount_operation_set_anonymous");

<* Maps to set_choice *>
extern fn void MountOperation.set_choice(&self, int choice) @extern("g_mount_operation_set_choice");

<* Maps to set_domain *>
extern fn void MountOperation.set_domain(&self, ZString domain) @extern("g_mount_operation_set_domain");

<* Maps to set_is_tcrypt_hidden_volume *>
extern fn void MountOperation.set_is_tcrypt_hidden_volume(&self, bool hidden_volume) @extern("g_mount_operation_set_is_tcrypt_hidden_volume");

<* Maps to set_is_tcrypt_system_volume *>
extern fn void MountOperation.set_is_tcrypt_system_volume(&self, bool system_volume) @extern("g_mount_operation_set_is_tcrypt_system_volume");

<* Maps to set_password *>
extern fn void MountOperation.set_password(&self, ZString password) @extern("g_mount_operation_set_password");

<* Maps to set_password_save *>
extern fn void MountOperation.set_password_save(&self, PasswordSave save) @extern("g_mount_operation_set_password_save");

<* Maps to set_pim *>
extern fn void MountOperation.set_pim(&self, uint pim) @extern("g_mount_operation_set_pim");

<* Maps to set_username *>
extern fn void MountOperation.set_username(&self, ZString username) @extern("g_mount_operation_set_username");


<* Maps to GNativeSocketAddress *>
distinct NativeSocketAddress = void*;

fn SocketAddress* NativeSocketAddress.as_SocketAddress(&self) => (SocketAddress*)(self);



<* Maps to GNativeVolumeMonitor *>
distinct NativeVolumeMonitor = void*;

fn VolumeMonitor* NativeVolumeMonitor.as_VolumeMonitor(&self) => (VolumeMonitor*)(self);



<* Maps to GNetworkAddress *>
distinct NetworkAddress = void*;

fn gobject::Object* NetworkAddress.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_hostname *>
extern fn ZString NetworkAddress.get_hostname(&self) @extern("g_network_address_get_hostname");

<* Maps to get_port *>
extern fn ushort NetworkAddress.get_port(&self) @extern("g_network_address_get_port");

<* Maps to get_scheme *>
extern fn ZString NetworkAddress.get_scheme(&self) @extern("g_network_address_get_scheme");


<* Maps to GNetworkService *>
distinct NetworkService = void*;

fn gobject::Object* NetworkService.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_domain *>
extern fn ZString NetworkService.get_domain(&self) @extern("g_network_service_get_domain");

<* Maps to get_protocol *>
extern fn ZString NetworkService.get_protocol(&self) @extern("g_network_service_get_protocol");

<* Maps to get_scheme *>
extern fn ZString NetworkService.get_scheme(&self) @extern("g_network_service_get_scheme");

<* Maps to get_service *>
extern fn ZString NetworkService.get_service(&self) @extern("g_network_service_get_service");

<* Maps to set_scheme *>
extern fn void NetworkService.set_scheme(&self, ZString scheme) @extern("g_network_service_set_scheme");


<* Maps to GNotification *>
distinct Notification = void*;

fn gobject::Object* Notification.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_button *>
extern fn void Notification.add_button(&self, ZString label, ZString detailed_action) @extern("g_notification_add_button");

<* Maps to add_button_with_target *>
extern fn void Notification.add_button_with_target(&self, ZString label, ZString action, ZString target_format, any rest) @extern("g_notification_add_button_with_target");

<* Maps to add_button_with_target_value *>
extern fn void Notification.add_button_with_target_value(&self, ZString label, ZString action, glib::Variant* target) @extern("g_notification_add_button_with_target_value");

<* Maps to set_body *>
extern fn void Notification.set_body(&self, ZString body) @extern("g_notification_set_body");

<* Maps to set_category *>
extern fn void Notification.set_category(&self, ZString category) @extern("g_notification_set_category");

<* Maps to set_default_action *>
extern fn void Notification.set_default_action(&self, ZString detailed_action) @extern("g_notification_set_default_action");

<* Maps to set_default_action_and_target *>
extern fn void Notification.set_default_action_and_target(&self, ZString action, ZString target_format, any rest) @extern("g_notification_set_default_action_and_target");

<* Maps to set_default_action_and_target_value *>
extern fn void Notification.set_default_action_and_target_value(&self, ZString action, glib::Variant* target) @extern("g_notification_set_default_action_and_target_value");

<* Maps to set_icon *>
extern fn void Notification.set_icon(&self, Icon* icon) @extern("g_notification_set_icon");

<* Maps to set_priority *>
extern fn void Notification.set_priority(&self, NotificationPriority priority) @extern("g_notification_set_priority");

<* Maps to set_title *>
extern fn void Notification.set_title(&self, ZString title) @extern("g_notification_set_title");

<* Maps to set_urgent *>
extern fn void Notification.set_urgent(&self, bool urgent) @extern("g_notification_set_urgent");


<* Maps to GOutputStream *>
distinct OutputStream = void*;

fn gobject::Object* OutputStream.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to clear_pending *>
extern fn void OutputStream.clear_pending(&self) @extern("g_output_stream_clear_pending");

<* Maps to close *>
extern fn bool OutputStream.close(&self, Cancellable* cancellable) @extern("g_output_stream_close");

<* Maps to close_async *>
extern fn void OutputStream.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_close_async");

<* Maps to close_finish *>
extern fn bool OutputStream.close_finish(&self, AsyncResult* result) @extern("g_output_stream_close_finish");

<* Maps to flush *>
extern fn bool OutputStream.flush(&self, Cancellable* cancellable) @extern("g_output_stream_flush");

<* Maps to flush_async *>
extern fn void OutputStream.flush_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_flush_async");

<* Maps to flush_finish *>
extern fn bool OutputStream.flush_finish(&self, AsyncResult* result) @extern("g_output_stream_flush_finish");

<* Maps to has_pending *>
extern fn bool OutputStream.has_pending(&self) @extern("g_output_stream_has_pending");

<* Maps to is_closed *>
extern fn bool OutputStream.is_closed(&self) @extern("g_output_stream_is_closed");

<* Maps to is_closing *>
extern fn bool OutputStream.is_closing(&self) @extern("g_output_stream_is_closing");

<* Maps to printf *>
extern fn bool OutputStream.printf(&self, usz* bytes_written, Cancellable* cancellable, glib::Error* error, ZString format, any rest) @extern("g_output_stream_printf");

<* Maps to set_pending *>
extern fn bool OutputStream.set_pending(&self) @extern("g_output_stream_set_pending");

<* Maps to splice *>
extern fn isz OutputStream.splice(&self, InputStream* source, OutputStreamSpliceFlags flags, Cancellable* cancellable) @extern("g_output_stream_splice");

<* Maps to splice_async *>
extern fn void OutputStream.splice_async(&self, InputStream* source, OutputStreamSpliceFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_splice_async");

<* Maps to splice_finish *>
extern fn isz OutputStream.splice_finish(&self, AsyncResult* result) @extern("g_output_stream_splice_finish");

<* Maps to write *>
extern fn isz OutputStream.write(&self, char buffer, usz count, Cancellable* cancellable) @extern("g_output_stream_write");

<* Maps to write_all *>
extern fn bool OutputStream.write_all(&self, char buffer, usz count, usz* bytes_written, Cancellable* cancellable) @extern("g_output_stream_write_all");

<* Maps to write_all_async *>
extern fn void OutputStream.write_all_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_write_all_async");

<* Maps to write_all_finish *>
extern fn bool OutputStream.write_all_finish(&self, AsyncResult* result, usz* bytes_written) @extern("g_output_stream_write_all_finish");

<* Maps to write_async *>
extern fn void OutputStream.write_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_write_async");

<* Maps to write_bytes *>
extern fn isz OutputStream.write_bytes(&self, glib::Bytes* bytes, Cancellable* cancellable) @extern("g_output_stream_write_bytes");

<* Maps to write_bytes_async *>
extern fn void OutputStream.write_bytes_async(&self, glib::Bytes* bytes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_write_bytes_async");

<* Maps to write_bytes_finish *>
extern fn isz OutputStream.write_bytes_finish(&self, AsyncResult* result) @extern("g_output_stream_write_bytes_finish");

<* Maps to write_finish *>
extern fn isz OutputStream.write_finish(&self, AsyncResult* result) @extern("g_output_stream_write_finish");

<* Maps to writev *>
extern fn bool OutputStream.writev(&self, OutputVector vectors, usz n_vectors, usz* bytes_written, Cancellable* cancellable) @extern("g_output_stream_writev");

<* Maps to writev_all *>
extern fn bool OutputStream.writev_all(&self, OutputVector vectors, usz n_vectors, usz* bytes_written, Cancellable* cancellable) @extern("g_output_stream_writev_all");

<* Maps to writev_all_async *>
extern fn void OutputStream.writev_all_async(&self, OutputVector vectors, usz n_vectors, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_writev_all_async");

<* Maps to writev_all_finish *>
extern fn bool OutputStream.writev_all_finish(&self, AsyncResult* result, usz* bytes_written) @extern("g_output_stream_writev_all_finish");

<* Maps to writev_async *>
extern fn void OutputStream.writev_async(&self, OutputVector vectors, usz n_vectors, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_writev_async");

<* Maps to writev_finish *>
extern fn bool OutputStream.writev_finish(&self, AsyncResult* result, usz* bytes_written) @extern("g_output_stream_writev_finish");


<* Maps to GPermission *>
distinct Permission = void*;

fn gobject::Object* Permission.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to acquire *>
extern fn bool Permission.acquire(&self, Cancellable* cancellable) @extern("g_permission_acquire");

<* Maps to acquire_async *>
extern fn void Permission.acquire_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_permission_acquire_async");

<* Maps to acquire_finish *>
extern fn bool Permission.acquire_finish(&self, AsyncResult* result) @extern("g_permission_acquire_finish");

<* Maps to get_allowed *>
extern fn bool Permission.get_allowed(&self) @extern("g_permission_get_allowed");

<* Maps to get_can_acquire *>
extern fn bool Permission.get_can_acquire(&self) @extern("g_permission_get_can_acquire");

<* Maps to get_can_release *>
extern fn bool Permission.get_can_release(&self) @extern("g_permission_get_can_release");

<* Maps to impl_update *>
extern fn void Permission.impl_update(&self, bool allowed, bool can_acquire, bool can_release) @extern("g_permission_impl_update");

<* Maps to release *>
extern fn bool Permission.release(&self, Cancellable* cancellable) @extern("g_permission_release");

<* Maps to release_async *>
extern fn void Permission.release_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_permission_release_async");

<* Maps to release_finish *>
extern fn bool Permission.release_finish(&self, AsyncResult* result) @extern("g_permission_release_finish");


<* Maps to GPropertyAction *>
distinct PropertyAction = void*;

fn gobject::Object* PropertyAction.as_gobject_Object(&self) => (gobject::Object*)(self);



<* Maps to GProxyAddress *>
distinct ProxyAddress = void*;

fn InetSocketAddress* ProxyAddress.as_InetSocketAddress(&self) => (InetSocketAddress*)(self);


<* Maps to get_destination_hostname *>
extern fn ZString ProxyAddress.get_destination_hostname(&self) @extern("g_proxy_address_get_destination_hostname");

<* Maps to get_destination_port *>
extern fn ushort ProxyAddress.get_destination_port(&self) @extern("g_proxy_address_get_destination_port");

<* Maps to get_destination_protocol *>
extern fn ZString ProxyAddress.get_destination_protocol(&self) @extern("g_proxy_address_get_destination_protocol");

<* Maps to get_password *>
extern fn ZString ProxyAddress.get_password(&self) @extern("g_proxy_address_get_password");

<* Maps to get_protocol *>
extern fn ZString ProxyAddress.get_protocol(&self) @extern("g_proxy_address_get_protocol");

<* Maps to get_uri *>
extern fn ZString ProxyAddress.get_uri(&self) @extern("g_proxy_address_get_uri");

<* Maps to get_username *>
extern fn ZString ProxyAddress.get_username(&self) @extern("g_proxy_address_get_username");


<* Maps to GProxyAddressEnumerator *>
distinct ProxyAddressEnumerator = void*;

fn SocketAddressEnumerator* ProxyAddressEnumerator.as_SocketAddressEnumerator(&self) => (SocketAddressEnumerator*)(self);



<* Maps to GResolver *>
distinct Resolver = void*;

fn gobject::Object* Resolver.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_timeout *>
extern fn uint Resolver.get_timeout(&self) @extern("g_resolver_get_timeout");

<* Maps to lookup_by_address *>
extern fn ZString* Resolver.lookup_by_address(&self, InetAddress* address, Cancellable* cancellable) @extern("g_resolver_lookup_by_address");

<* Maps to lookup_by_address_async *>
extern fn void Resolver.lookup_by_address_async(&self, InetAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_by_address_async");

<* Maps to lookup_by_address_finish *>
extern fn ZString* Resolver.lookup_by_address_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_by_address_finish");

<* Maps to lookup_by_name *>
extern fn glib::List* Resolver.lookup_by_name(&self, ZString hostname, Cancellable* cancellable) @extern("g_resolver_lookup_by_name");

<* Maps to lookup_by_name_async *>
extern fn void Resolver.lookup_by_name_async(&self, ZString hostname, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_by_name_async");

<* Maps to lookup_by_name_finish *>
extern fn glib::List* Resolver.lookup_by_name_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_by_name_finish");

<* Maps to lookup_by_name_with_flags *>
extern fn glib::List* Resolver.lookup_by_name_with_flags(&self, ZString hostname, ResolverNameLookupFlags flags, Cancellable* cancellable) @extern("g_resolver_lookup_by_name_with_flags");

<* Maps to lookup_by_name_with_flags_async *>
extern fn void Resolver.lookup_by_name_with_flags_async(&self, ZString hostname, ResolverNameLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_by_name_with_flags_async");

<* Maps to lookup_by_name_with_flags_finish *>
extern fn glib::List* Resolver.lookup_by_name_with_flags_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_by_name_with_flags_finish");

<* Maps to lookup_records *>
extern fn glib::List* Resolver.lookup_records(&self, ZString rrname, ResolverRecordType record_type, Cancellable* cancellable) @extern("g_resolver_lookup_records");

<* Maps to lookup_records_async *>
extern fn void Resolver.lookup_records_async(&self, ZString rrname, ResolverRecordType record_type, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_records_async");

<* Maps to lookup_records_finish *>
extern fn glib::List* Resolver.lookup_records_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_records_finish");

<* Maps to lookup_service *>
extern fn glib::List* Resolver.lookup_service(&self, ZString service, ZString protocol, ZString domain, Cancellable* cancellable) @extern("g_resolver_lookup_service");

<* Maps to lookup_service_async *>
extern fn void Resolver.lookup_service_async(&self, ZString service, ZString protocol, ZString domain, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_service_async");

<* Maps to lookup_service_finish *>
extern fn glib::List* Resolver.lookup_service_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_service_finish");

<* Maps to set_default *>
extern fn void Resolver.set_default(&self) @extern("g_resolver_set_default");

<* Maps to set_timeout *>
extern fn void Resolver.set_timeout(&self, uint timeout_ms) @extern("g_resolver_set_timeout");


<* Maps to GSettings *>
distinct Settings = void*;

fn gobject::Object* Settings.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to apply *>
extern fn void Settings.apply(&self) @extern("g_settings_apply");

<* Maps to bind *>
extern fn void Settings.bind(&self, ZString key, gobject::Object* object, ZString property, SettingsBindFlags flags) @extern("g_settings_bind");

<* Maps to bind_with_mapping *>
extern fn void Settings.bind_with_mapping(&self, ZString key, gobject::Object* object, ZString property, SettingsBindFlags flags, SettingsBindGetMapping get_mapping, SettingsBindSetMapping set_mapping, void* user_data, glib::DestroyNotify destroy) @extern("g_settings_bind_with_mapping");

<* Maps to bind_with_mapping_closures *>
extern fn void Settings.bind_with_mapping_closures(&self, ZString key, gobject::Object* object, ZString property, SettingsBindFlags flags, gobject::Closure* get_mapping, gobject::Closure* set_mapping) @extern("g_settings_bind_with_mapping_closures");

<* Maps to bind_writable *>
extern fn void Settings.bind_writable(&self, ZString key, gobject::Object* object, ZString property, bool inverted) @extern("g_settings_bind_writable");

<* Maps to create_action *>
extern fn Action* Settings.create_action(&self, ZString key) @extern("g_settings_create_action");

<* Maps to delay *>
extern fn void Settings.delay(&self) @extern("g_settings_delay");

<* Maps to get *>
extern fn void Settings.get(&self, ZString key, ZString format, any rest) @extern("g_settings_get");

<* Maps to get_boolean *>
extern fn bool Settings.get_boolean(&self, ZString key) @extern("g_settings_get_boolean");

<* Maps to get_child *>
extern fn Settings* Settings.get_child(&self, ZString name) @extern("g_settings_get_child");

<* Maps to get_default_value *>
extern fn glib::Variant* Settings.get_default_value(&self, ZString key) @extern("g_settings_get_default_value");

<* Maps to get_double *>
extern fn double Settings.get_double(&self, ZString key) @extern("g_settings_get_double");

<* Maps to get_enum *>
extern fn int Settings.get_enum(&self, ZString key) @extern("g_settings_get_enum");

<* Maps to get_flags *>
extern fn uint Settings.get_flags(&self, ZString key) @extern("g_settings_get_flags");

<* Maps to get_has_unapplied *>
extern fn bool Settings.get_has_unapplied(&self) @extern("g_settings_get_has_unapplied");

<* Maps to get_int *>
extern fn int Settings.get_int(&self, ZString key) @extern("g_settings_get_int");

<* Maps to get_int64 *>
extern fn long Settings.get_int64(&self, ZString key) @extern("g_settings_get_int64");

<* Maps to get_mapped *>
extern fn void* Settings.get_mapped(&self, ZString key, SettingsGetMapping mapping, void* user_data) @extern("g_settings_get_mapped");

<* Maps to get_range *>
extern fn glib::Variant* Settings.get_range(&self, ZString key) @extern("g_settings_get_range");

<* Maps to get_string *>
extern fn ZString* Settings.get_string(&self, ZString key) @extern("g_settings_get_string");

<* Maps to get_strv *>
extern fn ZString Settings.get_strv(&self, ZString key) @extern("g_settings_get_strv");

<* Maps to get_uint *>
extern fn uint Settings.get_uint(&self, ZString key) @extern("g_settings_get_uint");

<* Maps to get_uint64 *>
extern fn ulong Settings.get_uint64(&self, ZString key) @extern("g_settings_get_uint64");

<* Maps to get_user_value *>
extern fn glib::Variant* Settings.get_user_value(&self, ZString key) @extern("g_settings_get_user_value");

<* Maps to get_value *>
extern fn glib::Variant* Settings.get_value(&self, ZString key) @extern("g_settings_get_value");

<* Maps to is_writable *>
extern fn bool Settings.is_writable(&self, ZString name) @extern("g_settings_is_writable");

<* Maps to list_children *>
extern fn ZString Settings.list_children(&self) @extern("g_settings_list_children");

<* Maps to list_keys *>
extern fn ZString Settings.list_keys(&self) @extern("g_settings_list_keys");

<* Maps to range_check *>
extern fn bool Settings.range_check(&self, ZString key, glib::Variant* value) @extern("g_settings_range_check");

<* Maps to reset *>
extern fn void Settings.reset(&self, ZString key) @extern("g_settings_reset");

<* Maps to revert *>
extern fn void Settings.revert(&self) @extern("g_settings_revert");

<* Maps to set *>
extern fn bool Settings.set(&self, ZString key, ZString format, any rest) @extern("g_settings_set");

<* Maps to set_boolean *>
extern fn bool Settings.set_boolean(&self, ZString key, bool value) @extern("g_settings_set_boolean");

<* Maps to set_double *>
extern fn bool Settings.set_double(&self, ZString key, double value) @extern("g_settings_set_double");

<* Maps to set_enum *>
extern fn bool Settings.set_enum(&self, ZString key, int value) @extern("g_settings_set_enum");

<* Maps to set_flags *>
extern fn bool Settings.set_flags(&self, ZString key, uint value) @extern("g_settings_set_flags");

<* Maps to set_int *>
extern fn bool Settings.set_int(&self, ZString key, int value) @extern("g_settings_set_int");

<* Maps to set_int64 *>
extern fn bool Settings.set_int64(&self, ZString key, long value) @extern("g_settings_set_int64");

<* Maps to set_string *>
extern fn bool Settings.set_string(&self, ZString key, ZString value) @extern("g_settings_set_string");

<* Maps to set_strv *>
extern fn bool Settings.set_strv(&self, ZString key, ZString* value) @extern("g_settings_set_strv");

<* Maps to set_uint *>
extern fn bool Settings.set_uint(&self, ZString key, uint value) @extern("g_settings_set_uint");

<* Maps to set_uint64 *>
extern fn bool Settings.set_uint64(&self, ZString key, ulong value) @extern("g_settings_set_uint64");

<* Maps to set_value *>
extern fn bool Settings.set_value(&self, ZString key, glib::Variant* value) @extern("g_settings_set_value");


<* Maps to GSettingsBackend *>
distinct SettingsBackend = void*;

fn gobject::Object* SettingsBackend.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to changed *>
extern fn void SettingsBackend.changed(&self, ZString key, void* origin_tag) @extern("g_settings_backend_changed");

<* Maps to changed_tree *>
extern fn void SettingsBackend.changed_tree(&self, glib::Tree* tree, void* origin_tag) @extern("g_settings_backend_changed_tree");

<* Maps to keys_changed *>
extern fn void SettingsBackend.keys_changed(&self, ZString path, ZString* items, void* origin_tag) @extern("g_settings_backend_keys_changed");

<* Maps to path_changed *>
extern fn void SettingsBackend.path_changed(&self, ZString path, void* origin_tag) @extern("g_settings_backend_path_changed");

<* Maps to path_writable_changed *>
extern fn void SettingsBackend.path_writable_changed(&self, ZString path) @extern("g_settings_backend_path_writable_changed");

<* Maps to writable_changed *>
extern fn void SettingsBackend.writable_changed(&self, ZString key) @extern("g_settings_backend_writable_changed");


<* Maps to GSimpleAction *>
distinct SimpleAction = void*;

fn gobject::Object* SimpleAction.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to set_enabled *>
extern fn void SimpleAction.set_enabled(&self, bool enabled) @extern("g_simple_action_set_enabled");

<* Maps to set_state *>
extern fn void SimpleAction.set_state(&self, glib::Variant* value) @extern("g_simple_action_set_state");

<* Maps to set_state_hint *>
extern fn void SimpleAction.set_state_hint(&self, glib::Variant* state_hint) @extern("g_simple_action_set_state_hint");


<* Maps to GSimpleActionGroup *>
distinct SimpleActionGroup = void*;

fn gobject::Object* SimpleActionGroup.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_entries *>
extern fn void SimpleActionGroup.add_entries(&self, ActionEntry entries, int n_entries, void* user_data) @extern("g_simple_action_group_add_entries");

<* Maps to insert *>
extern fn void SimpleActionGroup.insert(&self, Action* action) @extern("g_simple_action_group_insert");

<* Maps to lookup *>
extern fn Action* SimpleActionGroup.lookup(&self, ZString action_name) @extern("g_simple_action_group_lookup");

<* Maps to remove *>
extern fn void SimpleActionGroup.remove(&self, ZString action_name) @extern("g_simple_action_group_remove");


<* Maps to GSimpleAsyncResult *>
distinct SimpleAsyncResult = void*;

fn gobject::Object* SimpleAsyncResult.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to complete *>
extern fn void SimpleAsyncResult.complete(&self) @extern("g_simple_async_result_complete");

<* Maps to complete_in_idle *>
extern fn void SimpleAsyncResult.complete_in_idle(&self) @extern("g_simple_async_result_complete_in_idle");

<* Maps to get_op_res_gboolean *>
extern fn bool SimpleAsyncResult.get_op_res_gboolean(&self) @extern("g_simple_async_result_get_op_res_gboolean");

<* Maps to get_op_res_gpointer *>
extern fn void* SimpleAsyncResult.get_op_res_gpointer(&self) @extern("g_simple_async_result_get_op_res_gpointer");

<* Maps to get_op_res_gssize *>
extern fn isz SimpleAsyncResult.get_op_res_gssize(&self) @extern("g_simple_async_result_get_op_res_gssize");

<* Maps to get_source_tag *>
extern fn void* SimpleAsyncResult.get_source_tag(&self) @extern("g_simple_async_result_get_source_tag");

<* Maps to propagate_error *>
extern fn bool SimpleAsyncResult.propagate_error(&self) @extern("g_simple_async_result_propagate_error");

<* Maps to run_in_thread *>
extern fn void SimpleAsyncResult.run_in_thread(&self, SimpleAsyncThreadFunc func, int io_priority, Cancellable* cancellable) @extern("g_simple_async_result_run_in_thread");

<* Maps to set_check_cancellable *>
extern fn void SimpleAsyncResult.set_check_cancellable(&self, Cancellable* check_cancellable) @extern("g_simple_async_result_set_check_cancellable");

<* Maps to set_error *>
extern fn void SimpleAsyncResult.set_error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("g_simple_async_result_set_error");

<* Maps to set_from_error *>
extern fn void SimpleAsyncResult.set_from_error(&self, glib::Error* error) @extern("g_simple_async_result_set_from_error");

<* Maps to set_handle_cancellation *>
extern fn void SimpleAsyncResult.set_handle_cancellation(&self, bool handle_cancellation) @extern("g_simple_async_result_set_handle_cancellation");

<* Maps to set_op_res_gboolean *>
extern fn void SimpleAsyncResult.set_op_res_gboolean(&self, bool op_res) @extern("g_simple_async_result_set_op_res_gboolean");

<* Maps to set_op_res_gpointer *>
extern fn void SimpleAsyncResult.set_op_res_gpointer(&self, void* op_res, glib::DestroyNotify destroy_op_res) @extern("g_simple_async_result_set_op_res_gpointer");

<* Maps to set_op_res_gssize *>
extern fn void SimpleAsyncResult.set_op_res_gssize(&self, isz op_res) @extern("g_simple_async_result_set_op_res_gssize");

<* Maps to take_error *>
extern fn void SimpleAsyncResult.take_error(&self, glib::Error* error) @extern("g_simple_async_result_take_error");


<* Maps to GSimpleIOStream *>
distinct SimpleIOStream = void*;

fn IOStream* SimpleIOStream.as_IOStream(&self) => (IOStream*)(self);



<* Maps to GSimplePermission *>
distinct SimplePermission = void*;

fn Permission* SimplePermission.as_Permission(&self) => (Permission*)(self);



<* Maps to GSimpleProxyResolver *>
distinct SimpleProxyResolver = void*;

fn gobject::Object* SimpleProxyResolver.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to set_default_proxy *>
extern fn void SimpleProxyResolver.set_default_proxy(&self, ZString default_proxy) @extern("g_simple_proxy_resolver_set_default_proxy");

<* Maps to set_ignore_hosts *>
extern fn void SimpleProxyResolver.set_ignore_hosts(&self, ZString* ignore_hosts) @extern("g_simple_proxy_resolver_set_ignore_hosts");

<* Maps to set_uri_proxy *>
extern fn void SimpleProxyResolver.set_uri_proxy(&self, ZString uri_scheme, ZString proxy) @extern("g_simple_proxy_resolver_set_uri_proxy");


<* Maps to GSocket *>
distinct Socket = void*;

fn gobject::Object* Socket.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to accept *>
extern fn Socket* Socket.accept(&self, Cancellable* cancellable) @extern("g_socket_accept");

<* Maps to bind *>
extern fn bool Socket.bind(&self, SocketAddress* address, bool allow_reuse) @extern("g_socket_bind");

<* Maps to check_connect_result *>
extern fn bool Socket.check_connect_result(&self) @extern("g_socket_check_connect_result");

<* Maps to close *>
extern fn bool Socket.close(&self) @extern("g_socket_close");

<* Maps to condition_check *>
extern fn glib::IOCondition Socket.condition_check(&self, glib::IOCondition condition) @extern("g_socket_condition_check");

<* Maps to condition_timed_wait *>
extern fn bool Socket.condition_timed_wait(&self, glib::IOCondition condition, long timeout_us, Cancellable* cancellable) @extern("g_socket_condition_timed_wait");

<* Maps to condition_wait *>
extern fn bool Socket.condition_wait(&self, glib::IOCondition condition, Cancellable* cancellable) @extern("g_socket_condition_wait");

<* Maps to connect *>
extern fn bool Socket.connect(&self, SocketAddress* address, Cancellable* cancellable) @extern("g_socket_connect");

<* Maps to connection_factory_create_connection *>
extern fn SocketConnection* Socket.connection_factory_create_connection(&self) @extern("g_socket_connection_factory_create_connection");

<* Maps to create_source *>
extern fn glib::Source* Socket.create_source(&self, glib::IOCondition condition, Cancellable* cancellable) @extern("g_socket_create_source");

<* Maps to get_available_bytes *>
extern fn isz Socket.get_available_bytes(&self) @extern("g_socket_get_available_bytes");

<* Maps to get_blocking *>
extern fn bool Socket.get_blocking(&self) @extern("g_socket_get_blocking");

<* Maps to get_broadcast *>
extern fn bool Socket.get_broadcast(&self) @extern("g_socket_get_broadcast");

<* Maps to get_credentials *>
extern fn Credentials* Socket.get_credentials(&self) @extern("g_socket_get_credentials");

<* Maps to get_family *>
extern fn SocketFamily Socket.get_family(&self) @extern("g_socket_get_family");

<* Maps to get_fd *>
extern fn int Socket.get_fd(&self) @extern("g_socket_get_fd");

<* Maps to get_keepalive *>
extern fn bool Socket.get_keepalive(&self) @extern("g_socket_get_keepalive");

<* Maps to get_listen_backlog *>
extern fn int Socket.get_listen_backlog(&self) @extern("g_socket_get_listen_backlog");

<* Maps to get_local_address *>
extern fn SocketAddress* Socket.get_local_address(&self) @extern("g_socket_get_local_address");

<* Maps to get_multicast_loopback *>
extern fn bool Socket.get_multicast_loopback(&self) @extern("g_socket_get_multicast_loopback");

<* Maps to get_multicast_ttl *>
extern fn uint Socket.get_multicast_ttl(&self) @extern("g_socket_get_multicast_ttl");

<* Maps to get_option *>
extern fn bool Socket.get_option(&self, int level, int optname, int* value) @extern("g_socket_get_option");

<* Maps to get_protocol *>
extern fn SocketProtocol Socket.get_protocol(&self) @extern("g_socket_get_protocol");

<* Maps to get_remote_address *>
extern fn SocketAddress* Socket.get_remote_address(&self) @extern("g_socket_get_remote_address");

<* Maps to get_socket_type *>
extern fn SocketType Socket.get_socket_type(&self) @extern("g_socket_get_socket_type");

<* Maps to get_timeout *>
extern fn uint Socket.get_timeout(&self) @extern("g_socket_get_timeout");

<* Maps to get_ttl *>
extern fn uint Socket.get_ttl(&self) @extern("g_socket_get_ttl");

<* Maps to is_closed *>
extern fn bool Socket.is_closed(&self) @extern("g_socket_is_closed");

<* Maps to is_connected *>
extern fn bool Socket.is_connected(&self) @extern("g_socket_is_connected");

<* Maps to join_multicast_group *>
extern fn bool Socket.join_multicast_group(&self, InetAddress* group, bool source_specific, ZString iface) @extern("g_socket_join_multicast_group");

<* Maps to join_multicast_group_ssm *>
extern fn bool Socket.join_multicast_group_ssm(&self, InetAddress* group, InetAddress* source_specific, ZString iface) @extern("g_socket_join_multicast_group_ssm");

<* Maps to leave_multicast_group *>
extern fn bool Socket.leave_multicast_group(&self, InetAddress* group, bool source_specific, ZString iface) @extern("g_socket_leave_multicast_group");

<* Maps to leave_multicast_group_ssm *>
extern fn bool Socket.leave_multicast_group_ssm(&self, InetAddress* group, InetAddress* source_specific, ZString iface) @extern("g_socket_leave_multicast_group_ssm");

<* Maps to listen *>
extern fn bool Socket.listen(&self) @extern("g_socket_listen");

<* Maps to receive *>
extern fn isz Socket.receive(&self, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_receive");

<* Maps to receive_bytes *>
extern fn glib::Bytes* Socket.receive_bytes(&self, usz size, long timeout_us, Cancellable* cancellable) @extern("g_socket_receive_bytes");

<* Maps to receive_bytes_from *>
extern fn glib::Bytes* Socket.receive_bytes_from(&self, SocketAddress* address, usz size, long timeout_us, Cancellable* cancellable) @extern("g_socket_receive_bytes_from");

<* Maps to receive_from *>
extern fn isz Socket.receive_from(&self, SocketAddress* address, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_receive_from");

<* Maps to receive_message *>
extern fn isz Socket.receive_message(&self, SocketAddress* address, InputVector vectors, int num_vectors, SocketControlMessage* messages, int* num_messages, int* flags, Cancellable* cancellable) @extern("g_socket_receive_message");

<* Maps to receive_messages *>
extern fn int Socket.receive_messages(&self, InputMessage messages, uint num_messages, int flags, Cancellable* cancellable) @extern("g_socket_receive_messages");

<* Maps to receive_with_blocking *>
extern fn isz Socket.receive_with_blocking(&self, char buffer, usz size, bool blocking, Cancellable* cancellable) @extern("g_socket_receive_with_blocking");

<* Maps to send *>
extern fn isz Socket.send(&self, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_send");

<* Maps to send_message *>
extern fn isz Socket.send_message(&self, SocketAddress* address, OutputVector vectors, int num_vectors, SocketControlMessage* messages, int num_messages, int flags, Cancellable* cancellable) @extern("g_socket_send_message");

<* Maps to send_message_with_timeout *>
extern fn PollableReturn Socket.send_message_with_timeout(&self, SocketAddress* address, OutputVector vectors, int num_vectors, SocketControlMessage* messages, int num_messages, int flags, long timeout_us, usz* bytes_written, Cancellable* cancellable) @extern("g_socket_send_message_with_timeout");

<* Maps to send_messages *>
extern fn int Socket.send_messages(&self, OutputMessage messages, uint num_messages, int flags, Cancellable* cancellable) @extern("g_socket_send_messages");

<* Maps to send_to *>
extern fn isz Socket.send_to(&self, SocketAddress* address, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_send_to");

<* Maps to send_with_blocking *>
extern fn isz Socket.send_with_blocking(&self, char buffer, usz size, bool blocking, Cancellable* cancellable) @extern("g_socket_send_with_blocking");

<* Maps to set_blocking *>
extern fn void Socket.set_blocking(&self, bool blocking) @extern("g_socket_set_blocking");

<* Maps to set_broadcast *>
extern fn void Socket.set_broadcast(&self, bool broadcast) @extern("g_socket_set_broadcast");

<* Maps to set_keepalive *>
extern fn void Socket.set_keepalive(&self, bool keepalive) @extern("g_socket_set_keepalive");

<* Maps to set_listen_backlog *>
extern fn void Socket.set_listen_backlog(&self, int backlog) @extern("g_socket_set_listen_backlog");

<* Maps to set_multicast_loopback *>
extern fn void Socket.set_multicast_loopback(&self, bool loopback) @extern("g_socket_set_multicast_loopback");

<* Maps to set_multicast_ttl *>
extern fn void Socket.set_multicast_ttl(&self, uint ttl) @extern("g_socket_set_multicast_ttl");

<* Maps to set_option *>
extern fn bool Socket.set_option(&self, int level, int optname, int value) @extern("g_socket_set_option");

<* Maps to set_timeout *>
extern fn void Socket.set_timeout(&self, uint timeout) @extern("g_socket_set_timeout");

<* Maps to set_ttl *>
extern fn void Socket.set_ttl(&self, uint ttl) @extern("g_socket_set_ttl");

<* Maps to shutdown *>
extern fn bool Socket.shutdown(&self, bool shutdown_read, bool shutdown_write) @extern("g_socket_shutdown");

<* Maps to speaks_ipv4 *>
extern fn bool Socket.speaks_ipv4(&self) @extern("g_socket_speaks_ipv4");


<* Maps to GSocketAddress *>
distinct SocketAddress = void*;

fn gobject::Object* SocketAddress.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_family *>
extern fn SocketFamily SocketAddress.get_family(&self) @extern("g_socket_address_get_family");

<* Maps to get_native_size *>
extern fn isz SocketAddress.get_native_size(&self) @extern("g_socket_address_get_native_size");

<* Maps to to_native *>
extern fn bool SocketAddress.to_native(&self, void* dest, usz destlen) @extern("g_socket_address_to_native");


<* Maps to GSocketAddressEnumerator *>
distinct SocketAddressEnumerator = void*;

fn gobject::Object* SocketAddressEnumerator.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to next *>
extern fn SocketAddress* SocketAddressEnumerator.next(&self, Cancellable* cancellable) @extern("g_socket_address_enumerator_next");

<* Maps to next_async *>
extern fn void SocketAddressEnumerator.next_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_address_enumerator_next_async");

<* Maps to next_finish *>
extern fn SocketAddress* SocketAddressEnumerator.next_finish(&self, AsyncResult* result) @extern("g_socket_address_enumerator_next_finish");


<* Maps to GSocketClient *>
distinct SocketClient = void*;

fn gobject::Object* SocketClient.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_application_proxy *>
extern fn void SocketClient.add_application_proxy(&self, ZString protocol) @extern("g_socket_client_add_application_proxy");

<* Maps to connect *>
extern fn SocketConnection* SocketClient.connect(&self, SocketConnectable* connectable, Cancellable* cancellable) @extern("g_socket_client_connect");

<* Maps to connect_async *>
extern fn void SocketClient.connect_async(&self, SocketConnectable* connectable, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_async");

<* Maps to connect_finish *>
extern fn SocketConnection* SocketClient.connect_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_finish");

<* Maps to connect_to_host *>
extern fn SocketConnection* SocketClient.connect_to_host(&self, ZString host_and_port, ushort default_port, Cancellable* cancellable) @extern("g_socket_client_connect_to_host");

<* Maps to connect_to_host_async *>
extern fn void SocketClient.connect_to_host_async(&self, ZString host_and_port, ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_to_host_async");

<* Maps to connect_to_host_finish *>
extern fn SocketConnection* SocketClient.connect_to_host_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_to_host_finish");

<* Maps to connect_to_service *>
extern fn SocketConnection* SocketClient.connect_to_service(&self, ZString domain, ZString service, Cancellable* cancellable) @extern("g_socket_client_connect_to_service");

<* Maps to connect_to_service_async *>
extern fn void SocketClient.connect_to_service_async(&self, ZString domain, ZString service, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_to_service_async");

<* Maps to connect_to_service_finish *>
extern fn SocketConnection* SocketClient.connect_to_service_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_to_service_finish");

<* Maps to connect_to_uri *>
extern fn SocketConnection* SocketClient.connect_to_uri(&self, ZString uri, ushort default_port, Cancellable* cancellable) @extern("g_socket_client_connect_to_uri");

<* Maps to connect_to_uri_async *>
extern fn void SocketClient.connect_to_uri_async(&self, ZString uri, ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_to_uri_async");

<* Maps to connect_to_uri_finish *>
extern fn SocketConnection* SocketClient.connect_to_uri_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_to_uri_finish");

<* Maps to get_enable_proxy *>
extern fn bool SocketClient.get_enable_proxy(&self) @extern("g_socket_client_get_enable_proxy");

<* Maps to get_family *>
extern fn SocketFamily SocketClient.get_family(&self) @extern("g_socket_client_get_family");

<* Maps to get_local_address *>
extern fn SocketAddress* SocketClient.get_local_address(&self) @extern("g_socket_client_get_local_address");

<* Maps to get_protocol *>
extern fn SocketProtocol SocketClient.get_protocol(&self) @extern("g_socket_client_get_protocol");

<* Maps to get_proxy_resolver *>
extern fn ProxyResolver* SocketClient.get_proxy_resolver(&self) @extern("g_socket_client_get_proxy_resolver");

<* Maps to get_socket_type *>
extern fn SocketType SocketClient.get_socket_type(&self) @extern("g_socket_client_get_socket_type");

<* Maps to get_timeout *>
extern fn uint SocketClient.get_timeout(&self) @extern("g_socket_client_get_timeout");

<* Maps to get_tls *>
extern fn bool SocketClient.get_tls(&self) @extern("g_socket_client_get_tls");

<* Maps to get_tls_validation_flags *>
extern fn TlsCertificateFlags SocketClient.get_tls_validation_flags(&self) @extern("g_socket_client_get_tls_validation_flags");

<* Maps to set_enable_proxy *>
extern fn void SocketClient.set_enable_proxy(&self, bool enable) @extern("g_socket_client_set_enable_proxy");

<* Maps to set_family *>
extern fn void SocketClient.set_family(&self, SocketFamily family) @extern("g_socket_client_set_family");

<* Maps to set_local_address *>
extern fn void SocketClient.set_local_address(&self, SocketAddress* address) @extern("g_socket_client_set_local_address");

<* Maps to set_protocol *>
extern fn void SocketClient.set_protocol(&self, SocketProtocol protocol) @extern("g_socket_client_set_protocol");

<* Maps to set_proxy_resolver *>
extern fn void SocketClient.set_proxy_resolver(&self, ProxyResolver* proxy_resolver) @extern("g_socket_client_set_proxy_resolver");

<* Maps to set_socket_type *>
extern fn void SocketClient.set_socket_type(&self, SocketType type) @extern("g_socket_client_set_socket_type");

<* Maps to set_timeout *>
extern fn void SocketClient.set_timeout(&self, uint timeout) @extern("g_socket_client_set_timeout");

<* Maps to set_tls *>
extern fn void SocketClient.set_tls(&self, bool tls) @extern("g_socket_client_set_tls");

<* Maps to set_tls_validation_flags *>
extern fn void SocketClient.set_tls_validation_flags(&self, TlsCertificateFlags flags) @extern("g_socket_client_set_tls_validation_flags");


<* Maps to GSocketConnection *>
distinct SocketConnection = void*;

fn IOStream* SocketConnection.as_IOStream(&self) => (IOStream*)(self);


<* Maps to connect *>
extern fn bool SocketConnection.connect(&self, SocketAddress* address, Cancellable* cancellable) @extern("g_socket_connection_connect");

<* Maps to connect_async *>
extern fn void SocketConnection.connect_async(&self, SocketAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_connection_connect_async");

<* Maps to connect_finish *>
extern fn bool SocketConnection.connect_finish(&self, AsyncResult* result) @extern("g_socket_connection_connect_finish");

<* Maps to get_local_address *>
extern fn SocketAddress* SocketConnection.get_local_address(&self) @extern("g_socket_connection_get_local_address");

<* Maps to get_remote_address *>
extern fn SocketAddress* SocketConnection.get_remote_address(&self) @extern("g_socket_connection_get_remote_address");

<* Maps to get_socket *>
extern fn Socket* SocketConnection.get_socket(&self) @extern("g_socket_connection_get_socket");

<* Maps to is_connected *>
extern fn bool SocketConnection.is_connected(&self) @extern("g_socket_connection_is_connected");


<* Maps to GSocketControlMessage *>
distinct SocketControlMessage = void*;

fn gobject::Object* SocketControlMessage.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_level *>
extern fn int SocketControlMessage.get_level(&self) @extern("g_socket_control_message_get_level");

<* Maps to get_msg_type *>
extern fn int SocketControlMessage.get_msg_type(&self) @extern("g_socket_control_message_get_msg_type");

<* Maps to get_size *>
extern fn usz SocketControlMessage.get_size(&self) @extern("g_socket_control_message_get_size");

<* Maps to serialize *>
extern fn void SocketControlMessage.serialize(&self, void* data) @extern("g_socket_control_message_serialize");


<* Maps to GSocketListener *>
distinct SocketListener = void*;

fn gobject::Object* SocketListener.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to accept *>
extern fn SocketConnection* SocketListener.accept(&self, gobject::Object* source_object, Cancellable* cancellable) @extern("g_socket_listener_accept");

<* Maps to accept_async *>
extern fn void SocketListener.accept_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_listener_accept_async");

<* Maps to accept_finish *>
extern fn SocketConnection* SocketListener.accept_finish(&self, AsyncResult* result, gobject::Object* source_object) @extern("g_socket_listener_accept_finish");

<* Maps to accept_socket *>
extern fn Socket* SocketListener.accept_socket(&self, gobject::Object* source_object, Cancellable* cancellable) @extern("g_socket_listener_accept_socket");

<* Maps to accept_socket_async *>
extern fn void SocketListener.accept_socket_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_listener_accept_socket_async");

<* Maps to accept_socket_finish *>
extern fn Socket* SocketListener.accept_socket_finish(&self, AsyncResult* result, gobject::Object* source_object) @extern("g_socket_listener_accept_socket_finish");

<* Maps to add_address *>
extern fn bool SocketListener.add_address(&self, SocketAddress* address, SocketType type, SocketProtocol protocol, gobject::Object* source_object, SocketAddress* effective_address) @extern("g_socket_listener_add_address");

<* Maps to add_any_inet_port *>
extern fn ushort SocketListener.add_any_inet_port(&self, gobject::Object* source_object) @extern("g_socket_listener_add_any_inet_port");

<* Maps to add_inet_port *>
extern fn bool SocketListener.add_inet_port(&self, ushort port, gobject::Object* source_object) @extern("g_socket_listener_add_inet_port");

<* Maps to add_socket *>
extern fn bool SocketListener.add_socket(&self, Socket* socket, gobject::Object* source_object) @extern("g_socket_listener_add_socket");

<* Maps to close *>
extern fn void SocketListener.close(&self) @extern("g_socket_listener_close");

<* Maps to set_backlog *>
extern fn void SocketListener.set_backlog(&self, int listen_backlog) @extern("g_socket_listener_set_backlog");


<* Maps to GSocketService *>
distinct SocketService = void*;

fn SocketListener* SocketService.as_SocketListener(&self) => (SocketListener*)(self);


<* Maps to is_active *>
extern fn bool SocketService.is_active(&self) @extern("g_socket_service_is_active");

<* Maps to start *>
extern fn void SocketService.start(&self) @extern("g_socket_service_start");

<* Maps to stop *>
extern fn void SocketService.stop(&self) @extern("g_socket_service_stop");


<* Maps to GSubprocess *>
distinct Subprocess = void*;

fn gobject::Object* Subprocess.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to communicate *>
extern fn bool Subprocess.communicate(&self, glib::Bytes* stdin_buf, Cancellable* cancellable, glib::Bytes* stdout_buf, glib::Bytes* stderr_buf) @extern("g_subprocess_communicate");

<* Maps to communicate_async *>
extern fn void Subprocess.communicate_async(&self, glib::Bytes* stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_communicate_async");

<* Maps to communicate_finish *>
extern fn bool Subprocess.communicate_finish(&self, AsyncResult* result, glib::Bytes* stdout_buf, glib::Bytes* stderr_buf) @extern("g_subprocess_communicate_finish");

<* Maps to communicate_utf8 *>
extern fn bool Subprocess.communicate_utf8(&self, ZString stdin_buf, Cancellable* cancellable, ZString* stdout_buf, ZString* stderr_buf) @extern("g_subprocess_communicate_utf8");

<* Maps to communicate_utf8_async *>
extern fn void Subprocess.communicate_utf8_async(&self, ZString stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_communicate_utf8_async");

<* Maps to communicate_utf8_finish *>
extern fn bool Subprocess.communicate_utf8_finish(&self, AsyncResult* result, ZString* stdout_buf, ZString* stderr_buf) @extern("g_subprocess_communicate_utf8_finish");

<* Maps to force_exit *>
extern fn void Subprocess.force_exit(&self) @extern("g_subprocess_force_exit");

<* Maps to get_exit_status *>
extern fn int Subprocess.get_exit_status(&self) @extern("g_subprocess_get_exit_status");

<* Maps to get_identifier *>
extern fn ZString Subprocess.get_identifier(&self) @extern("g_subprocess_get_identifier");

<* Maps to get_if_exited *>
extern fn bool Subprocess.get_if_exited(&self) @extern("g_subprocess_get_if_exited");

<* Maps to get_if_signaled *>
extern fn bool Subprocess.get_if_signaled(&self) @extern("g_subprocess_get_if_signaled");

<* Maps to get_status *>
extern fn int Subprocess.get_status(&self) @extern("g_subprocess_get_status");

<* Maps to get_stderr_pipe *>
extern fn InputStream* Subprocess.get_stderr_pipe(&self) @extern("g_subprocess_get_stderr_pipe");

<* Maps to get_stdin_pipe *>
extern fn OutputStream* Subprocess.get_stdin_pipe(&self) @extern("g_subprocess_get_stdin_pipe");

<* Maps to get_stdout_pipe *>
extern fn InputStream* Subprocess.get_stdout_pipe(&self) @extern("g_subprocess_get_stdout_pipe");

<* Maps to get_successful *>
extern fn bool Subprocess.get_successful(&self) @extern("g_subprocess_get_successful");

<* Maps to get_term_sig *>
extern fn int Subprocess.get_term_sig(&self) @extern("g_subprocess_get_term_sig");

<* Maps to send_signal *>
extern fn void Subprocess.send_signal(&self, int signal_num) @extern("g_subprocess_send_signal");

<* Maps to wait *>
extern fn bool Subprocess.wait(&self, Cancellable* cancellable) @extern("g_subprocess_wait");

<* Maps to wait_async *>
extern fn void Subprocess.wait_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_wait_async");

<* Maps to wait_check *>
extern fn bool Subprocess.wait_check(&self, Cancellable* cancellable) @extern("g_subprocess_wait_check");

<* Maps to wait_check_async *>
extern fn void Subprocess.wait_check_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_wait_check_async");

<* Maps to wait_check_finish *>
extern fn bool Subprocess.wait_check_finish(&self, AsyncResult* result) @extern("g_subprocess_wait_check_finish");

<* Maps to wait_finish *>
extern fn bool Subprocess.wait_finish(&self, AsyncResult* result) @extern("g_subprocess_wait_finish");


<* Maps to GSubprocessLauncher *>
distinct SubprocessLauncher = void*;

fn gobject::Object* SubprocessLauncher.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to close *>
extern fn void SubprocessLauncher.close(&self) @extern("g_subprocess_launcher_close");

<* Maps to getenv *>
extern fn ZString SubprocessLauncher.getenv(&self, ZString variable) @extern("g_subprocess_launcher_getenv");

<* Maps to set_child_setup *>
extern fn void SubprocessLauncher.set_child_setup(&self, glib::SpawnChildSetupFunc child_setup, void* user_data, glib::DestroyNotify destroy_notify) @extern("g_subprocess_launcher_set_child_setup");

<* Maps to set_cwd *>
extern fn void SubprocessLauncher.set_cwd(&self, ZString cwd) @extern("g_subprocess_launcher_set_cwd");

<* Maps to set_environ *>
extern fn void SubprocessLauncher.set_environ(&self, ZString env) @extern("g_subprocess_launcher_set_environ");

<* Maps to set_flags *>
extern fn void SubprocessLauncher.set_flags(&self, SubprocessFlags flags) @extern("g_subprocess_launcher_set_flags");

<* Maps to set_stderr_file_path *>
extern fn void SubprocessLauncher.set_stderr_file_path(&self, ZString path) @extern("g_subprocess_launcher_set_stderr_file_path");

<* Maps to set_stdin_file_path *>
extern fn void SubprocessLauncher.set_stdin_file_path(&self, ZString path) @extern("g_subprocess_launcher_set_stdin_file_path");

<* Maps to set_stdout_file_path *>
extern fn void SubprocessLauncher.set_stdout_file_path(&self, ZString path) @extern("g_subprocess_launcher_set_stdout_file_path");

<* Maps to setenv *>
extern fn void SubprocessLauncher.setenv(&self, ZString variable, ZString value, bool overwrite) @extern("g_subprocess_launcher_setenv");

<* Maps to spawn *>
extern fn Subprocess* SubprocessLauncher.spawn(&self, glib::Error* error, ZString argv0, any rest) @extern("g_subprocess_launcher_spawn");

<* Maps to spawnv *>
extern fn Subprocess* SubprocessLauncher.spawnv(&self, ZString argv) @extern("g_subprocess_launcher_spawnv");

<* Maps to take_fd *>
extern fn void SubprocessLauncher.take_fd(&self, int source_fd, int target_fd) @extern("g_subprocess_launcher_take_fd");

<* Maps to take_stderr_fd *>
extern fn void SubprocessLauncher.take_stderr_fd(&self, int fd) @extern("g_subprocess_launcher_take_stderr_fd");

<* Maps to take_stdin_fd *>
extern fn void SubprocessLauncher.take_stdin_fd(&self, int fd) @extern("g_subprocess_launcher_take_stdin_fd");

<* Maps to take_stdout_fd *>
extern fn void SubprocessLauncher.take_stdout_fd(&self, int fd) @extern("g_subprocess_launcher_take_stdout_fd");

<* Maps to unsetenv *>
extern fn void SubprocessLauncher.unsetenv(&self, ZString variable) @extern("g_subprocess_launcher_unsetenv");


<* Maps to GTask *>
distinct Task = void*;

fn gobject::Object* Task.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to attach_source *>
extern fn void Task.attach_source(&self, glib::Source* source, glib::SourceFunc callback) @extern("g_task_attach_source");

<* Maps to get_cancellable *>
extern fn Cancellable* Task.get_cancellable(&self) @extern("g_task_get_cancellable");

<* Maps to get_check_cancellable *>
extern fn bool Task.get_check_cancellable(&self) @extern("g_task_get_check_cancellable");

<* Maps to get_completed *>
extern fn bool Task.get_completed(&self) @extern("g_task_get_completed");

<* Maps to get_context *>
extern fn glib::MainContext* Task.get_context(&self) @extern("g_task_get_context");

<* Maps to get_name *>
extern fn ZString Task.get_name(&self) @extern("g_task_get_name");

<* Maps to get_priority *>
extern fn int Task.get_priority(&self) @extern("g_task_get_priority");

<* Maps to get_return_on_cancel *>
extern fn bool Task.get_return_on_cancel(&self) @extern("g_task_get_return_on_cancel");

<* Maps to get_source_object *>
extern fn gobject::Object* Task.get_source_object(&self) @extern("g_task_get_source_object");

<* Maps to get_source_tag *>
extern fn void* Task.get_source_tag(&self) @extern("g_task_get_source_tag");

<* Maps to get_task_data *>
extern fn void* Task.get_task_data(&self) @extern("g_task_get_task_data");

<* Maps to had_error *>
extern fn bool Task.had_error(&self) @extern("g_task_had_error");

<* Maps to propagate_boolean *>
extern fn bool Task.propagate_boolean(&self) @extern("g_task_propagate_boolean");

<* Maps to propagate_int *>
extern fn isz Task.propagate_int(&self) @extern("g_task_propagate_int");

<* Maps to propagate_pointer *>
extern fn void* Task.propagate_pointer(&self) @extern("g_task_propagate_pointer");

<* Maps to propagate_value *>
extern fn bool Task.propagate_value(&self, gobject::Value* value) @extern("g_task_propagate_value");

<* Maps to return_boolean *>
extern fn void Task.return_boolean(&self, bool result) @extern("g_task_return_boolean");

<* Maps to return_error *>
extern fn void Task.return_error(&self, glib::Error* error) @extern("g_task_return_error");

<* Maps to return_error_if_cancelled *>
extern fn bool Task.return_error_if_cancelled(&self) @extern("g_task_return_error_if_cancelled");

<* Maps to return_int *>
extern fn void Task.return_int(&self, isz result) @extern("g_task_return_int");

<* Maps to return_new_error *>
extern fn void Task.return_new_error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("g_task_return_new_error");

<* Maps to return_new_error_literal *>
extern fn void Task.return_new_error_literal(&self, glib::Quark domain, int code, ZString message) @extern("g_task_return_new_error_literal");

<* Maps to return_pointer *>
extern fn void Task.return_pointer(&self, void* result, glib::DestroyNotify result_destroy) @extern("g_task_return_pointer");

<* Maps to return_prefixed_error *>
extern fn void Task.return_prefixed_error(&self, glib::Error* error, ZString format, any rest) @extern("g_task_return_prefixed_error");

<* Maps to return_value *>
extern fn void Task.return_value(&self, gobject::Value* result) @extern("g_task_return_value");

<* Maps to run_in_thread *>
extern fn void Task.run_in_thread(&self, TaskThreadFunc task_func) @extern("g_task_run_in_thread");

<* Maps to run_in_thread_sync *>
extern fn void Task.run_in_thread_sync(&self, TaskThreadFunc task_func) @extern("g_task_run_in_thread_sync");

<* Maps to set_check_cancellable *>
extern fn void Task.set_check_cancellable(&self, bool check_cancellable) @extern("g_task_set_check_cancellable");

<* Maps to set_name *>
extern fn void Task.set_name(&self, ZString name) @extern("g_task_set_name");

<* Maps to set_priority *>
extern fn void Task.set_priority(&self, int priority) @extern("g_task_set_priority");

<* Maps to set_return_on_cancel *>
extern fn bool Task.set_return_on_cancel(&self, bool return_on_cancel) @extern("g_task_set_return_on_cancel");

<* Maps to set_source_tag *>
extern fn void Task.set_source_tag(&self, void* source_tag) @extern("g_task_set_source_tag");

<* Maps to set_static_name *>
extern fn void Task.set_static_name(&self, ZString name) @extern("g_task_set_static_name");

<* Maps to set_task_data *>
extern fn void Task.set_task_data(&self, void* task_data, glib::DestroyNotify task_data_destroy) @extern("g_task_set_task_data");


<* Maps to GTcpConnection *>
distinct TcpConnection = void*;

fn SocketConnection* TcpConnection.as_SocketConnection(&self) => (SocketConnection*)(self);


<* Maps to get_graceful_disconnect *>
extern fn bool TcpConnection.get_graceful_disconnect(&self) @extern("g_tcp_connection_get_graceful_disconnect");

<* Maps to set_graceful_disconnect *>
extern fn void TcpConnection.set_graceful_disconnect(&self, bool graceful_disconnect) @extern("g_tcp_connection_set_graceful_disconnect");


<* Maps to GTcpWrapperConnection *>
distinct TcpWrapperConnection = void*;

fn TcpConnection* TcpWrapperConnection.as_TcpConnection(&self) => (TcpConnection*)(self);


<* Maps to get_base_io_stream *>
extern fn IOStream* TcpWrapperConnection.get_base_io_stream(&self) @extern("g_tcp_wrapper_connection_get_base_io_stream");


<* Maps to GTestDBus *>
distinct TestDBus = void*;

fn gobject::Object* TestDBus.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_service_dir *>
extern fn void TestDBus.add_service_dir(&self, ZString path) @extern("g_test_dbus_add_service_dir");

<* Maps to down *>
extern fn void TestDBus.down(&self) @extern("g_test_dbus_down");

<* Maps to get_bus_address *>
extern fn ZString TestDBus.get_bus_address(&self) @extern("g_test_dbus_get_bus_address");

<* Maps to get_flags *>
extern fn TestDBusFlags TestDBus.get_flags(&self) @extern("g_test_dbus_get_flags");

<* Maps to stop *>
extern fn void TestDBus.stop(&self) @extern("g_test_dbus_stop");

<* Maps to up *>
extern fn void TestDBus.up(&self) @extern("g_test_dbus_up");


<* Maps to GThemedIcon *>
distinct ThemedIcon = void*;

fn gobject::Object* ThemedIcon.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to append_name *>
extern fn void ThemedIcon.append_name(&self, ZString iconname) @extern("g_themed_icon_append_name");

<* Maps to get_names *>
extern fn ZString ThemedIcon.get_names(&self) @extern("g_themed_icon_get_names");

<* Maps to prepend_name *>
extern fn void ThemedIcon.prepend_name(&self, ZString iconname) @extern("g_themed_icon_prepend_name");


<* Maps to GThreadedResolver *>
distinct ThreadedResolver = void*;

fn Resolver* ThreadedResolver.as_Resolver(&self) => (Resolver*)(self);



<* Maps to GThreadedSocketService *>
distinct ThreadedSocketService = void*;

fn SocketService* ThreadedSocketService.as_SocketService(&self) => (SocketService*)(self);



<* Maps to GTlsCertificate *>
distinct TlsCertificate = void*;

fn gobject::Object* TlsCertificate.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_dns_names *>
extern fn glib::Bytes TlsCertificate.get_dns_names(&self) @extern("g_tls_certificate_get_dns_names");

<* Maps to get_ip_addresses *>
extern fn InetAddress TlsCertificate.get_ip_addresses(&self) @extern("g_tls_certificate_get_ip_addresses");

<* Maps to get_issuer *>
extern fn TlsCertificate* TlsCertificate.get_issuer(&self) @extern("g_tls_certificate_get_issuer");

<* Maps to get_issuer_name *>
extern fn ZString* TlsCertificate.get_issuer_name(&self) @extern("g_tls_certificate_get_issuer_name");

<* Maps to get_not_valid_after *>
extern fn glib::DateTime* TlsCertificate.get_not_valid_after(&self) @extern("g_tls_certificate_get_not_valid_after");

<* Maps to get_not_valid_before *>
extern fn glib::DateTime* TlsCertificate.get_not_valid_before(&self) @extern("g_tls_certificate_get_not_valid_before");

<* Maps to get_subject_name *>
extern fn ZString* TlsCertificate.get_subject_name(&self) @extern("g_tls_certificate_get_subject_name");

<* Maps to is_same *>
extern fn bool TlsCertificate.is_same(&self, TlsCertificate* cert_two) @extern("g_tls_certificate_is_same");

<* Maps to verify *>
extern fn TlsCertificateFlags TlsCertificate.verify(&self, SocketConnectable* identity, TlsCertificate* trusted_ca) @extern("g_tls_certificate_verify");


<* Maps to GTlsConnection *>
distinct TlsConnection = void*;

fn IOStream* TlsConnection.as_IOStream(&self) => (IOStream*)(self);


<* Maps to emit_accept_certificate *>
extern fn bool TlsConnection.emit_accept_certificate(&self, TlsCertificate* peer_cert, TlsCertificateFlags errors) @extern("g_tls_connection_emit_accept_certificate");

<* Maps to get_certificate *>
extern fn TlsCertificate* TlsConnection.get_certificate(&self) @extern("g_tls_connection_get_certificate");

<* Maps to get_channel_binding_data *>
extern fn bool TlsConnection.get_channel_binding_data(&self, TlsChannelBindingType type, char data) @extern("g_tls_connection_get_channel_binding_data");

<* Maps to get_ciphersuite_name *>
extern fn ZString* TlsConnection.get_ciphersuite_name(&self) @extern("g_tls_connection_get_ciphersuite_name");

<* Maps to get_database *>
extern fn TlsDatabase* TlsConnection.get_database(&self) @extern("g_tls_connection_get_database");

<* Maps to get_interaction *>
extern fn TlsInteraction* TlsConnection.get_interaction(&self) @extern("g_tls_connection_get_interaction");

<* Maps to get_negotiated_protocol *>
extern fn ZString TlsConnection.get_negotiated_protocol(&self) @extern("g_tls_connection_get_negotiated_protocol");

<* Maps to get_peer_certificate *>
extern fn TlsCertificate* TlsConnection.get_peer_certificate(&self) @extern("g_tls_connection_get_peer_certificate");

<* Maps to get_peer_certificate_errors *>
extern fn TlsCertificateFlags TlsConnection.get_peer_certificate_errors(&self) @extern("g_tls_connection_get_peer_certificate_errors");

<* Maps to get_protocol_version *>
extern fn TlsProtocolVersion TlsConnection.get_protocol_version(&self) @extern("g_tls_connection_get_protocol_version");

<* Maps to get_rehandshake_mode *>
extern fn TlsRehandshakeMode TlsConnection.get_rehandshake_mode(&self) @extern("g_tls_connection_get_rehandshake_mode");

<* Maps to get_require_close_notify *>
extern fn bool TlsConnection.get_require_close_notify(&self) @extern("g_tls_connection_get_require_close_notify");

<* Maps to get_use_system_certdb *>
extern fn bool TlsConnection.get_use_system_certdb(&self) @extern("g_tls_connection_get_use_system_certdb");

<* Maps to handshake *>
extern fn bool TlsConnection.handshake(&self, Cancellable* cancellable) @extern("g_tls_connection_handshake");

<* Maps to handshake_async *>
extern fn void TlsConnection.handshake_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_connection_handshake_async");

<* Maps to handshake_finish *>
extern fn bool TlsConnection.handshake_finish(&self, AsyncResult* result) @extern("g_tls_connection_handshake_finish");

<* Maps to set_advertised_protocols *>
extern fn void TlsConnection.set_advertised_protocols(&self, ZString* protocols) @extern("g_tls_connection_set_advertised_protocols");

<* Maps to set_certificate *>
extern fn void TlsConnection.set_certificate(&self, TlsCertificate* certificate) @extern("g_tls_connection_set_certificate");

<* Maps to set_database *>
extern fn void TlsConnection.set_database(&self, TlsDatabase* database) @extern("g_tls_connection_set_database");

<* Maps to set_interaction *>
extern fn void TlsConnection.set_interaction(&self, TlsInteraction* interaction) @extern("g_tls_connection_set_interaction");

<* Maps to set_rehandshake_mode *>
extern fn void TlsConnection.set_rehandshake_mode(&self, TlsRehandshakeMode mode) @extern("g_tls_connection_set_rehandshake_mode");

<* Maps to set_require_close_notify *>
extern fn void TlsConnection.set_require_close_notify(&self, bool require_close_notify) @extern("g_tls_connection_set_require_close_notify");

<* Maps to set_use_system_certdb *>
extern fn void TlsConnection.set_use_system_certdb(&self, bool use_system_certdb) @extern("g_tls_connection_set_use_system_certdb");


<* Maps to GTlsDatabase *>
distinct TlsDatabase = void*;

fn gobject::Object* TlsDatabase.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to create_certificate_handle *>
extern fn ZString* TlsDatabase.create_certificate_handle(&self, TlsCertificate* certificate) @extern("g_tls_database_create_certificate_handle");

<* Maps to lookup_certificate_for_handle *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_for_handle(&self, ZString handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) @extern("g_tls_database_lookup_certificate_for_handle");

<* Maps to lookup_certificate_for_handle_async *>
extern fn void TlsDatabase.lookup_certificate_for_handle_async(&self, ZString handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_lookup_certificate_for_handle_async");

<* Maps to lookup_certificate_for_handle_finish *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_for_handle_finish(&self, AsyncResult* result) @extern("g_tls_database_lookup_certificate_for_handle_finish");

<* Maps to lookup_certificate_issuer *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_issuer(&self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) @extern("g_tls_database_lookup_certificate_issuer");

<* Maps to lookup_certificate_issuer_async *>
extern fn void TlsDatabase.lookup_certificate_issuer_async(&self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_lookup_certificate_issuer_async");

<* Maps to lookup_certificate_issuer_finish *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_issuer_finish(&self, AsyncResult* result) @extern("g_tls_database_lookup_certificate_issuer_finish");

<* Maps to lookup_certificates_issued_by *>
extern fn glib::List* TlsDatabase.lookup_certificates_issued_by(&self, char issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) @extern("g_tls_database_lookup_certificates_issued_by");

<* Maps to lookup_certificates_issued_by_async *>
extern fn void TlsDatabase.lookup_certificates_issued_by_async(&self, char issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_lookup_certificates_issued_by_async");

<* Maps to lookup_certificates_issued_by_finish *>
extern fn glib::List* TlsDatabase.lookup_certificates_issued_by_finish(&self, AsyncResult* result) @extern("g_tls_database_lookup_certificates_issued_by_finish");

<* Maps to verify_chain *>
extern fn TlsCertificateFlags TlsDatabase.verify_chain(&self, TlsCertificate* chain, ZString purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable) @extern("g_tls_database_verify_chain");

<* Maps to verify_chain_async *>
extern fn void TlsDatabase.verify_chain_async(&self, TlsCertificate* chain, ZString purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_verify_chain_async");

<* Maps to verify_chain_finish *>
extern fn TlsCertificateFlags TlsDatabase.verify_chain_finish(&self, AsyncResult* result) @extern("g_tls_database_verify_chain_finish");


<* Maps to GTlsInteraction *>
distinct TlsInteraction = void*;

fn gobject::Object* TlsInteraction.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to ask_password *>
extern fn TlsInteractionResult TlsInteraction.ask_password(&self, TlsPassword* password, Cancellable* cancellable) @extern("g_tls_interaction_ask_password");

<* Maps to ask_password_async *>
extern fn void TlsInteraction.ask_password_async(&self, TlsPassword* password, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_interaction_ask_password_async");

<* Maps to ask_password_finish *>
extern fn TlsInteractionResult TlsInteraction.ask_password_finish(&self, AsyncResult* result) @extern("g_tls_interaction_ask_password_finish");

<* Maps to invoke_ask_password *>
extern fn TlsInteractionResult TlsInteraction.invoke_ask_password(&self, TlsPassword* password, Cancellable* cancellable) @extern("g_tls_interaction_invoke_ask_password");

<* Maps to invoke_request_certificate *>
extern fn TlsInteractionResult TlsInteraction.invoke_request_certificate(&self, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable) @extern("g_tls_interaction_invoke_request_certificate");

<* Maps to request_certificate *>
extern fn TlsInteractionResult TlsInteraction.request_certificate(&self, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable) @extern("g_tls_interaction_request_certificate");

<* Maps to request_certificate_async *>
extern fn void TlsInteraction.request_certificate_async(&self, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_interaction_request_certificate_async");

<* Maps to request_certificate_finish *>
extern fn TlsInteractionResult TlsInteraction.request_certificate_finish(&self, AsyncResult* result) @extern("g_tls_interaction_request_certificate_finish");


<* Maps to GTlsPassword *>
distinct TlsPassword = void*;

fn gobject::Object* TlsPassword.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_description *>
extern fn ZString TlsPassword.get_description(&self) @extern("g_tls_password_get_description");

<* Maps to get_flags *>
extern fn TlsPasswordFlags TlsPassword.get_flags(&self) @extern("g_tls_password_get_flags");

<* Maps to get_value *>
extern fn char TlsPassword.get_value(&self, usz* length) @extern("g_tls_password_get_value");

<* Maps to get_warning *>
extern fn ZString TlsPassword.get_warning(&self) @extern("g_tls_password_get_warning");

<* Maps to set_description *>
extern fn void TlsPassword.set_description(&self, ZString description) @extern("g_tls_password_set_description");

<* Maps to set_flags *>
extern fn void TlsPassword.set_flags(&self, TlsPasswordFlags flags) @extern("g_tls_password_set_flags");

<* Maps to set_value *>
extern fn void TlsPassword.set_value(&self, char value, isz length) @extern("g_tls_password_set_value");

<* Maps to set_value_full *>
extern fn void TlsPassword.set_value_full(&self, char value, isz length, glib::DestroyNotify destroy) @extern("g_tls_password_set_value_full");

<* Maps to set_warning *>
extern fn void TlsPassword.set_warning(&self, ZString warning) @extern("g_tls_password_set_warning");


<* Maps to GUnixConnection *>
distinct UnixConnection = void*;

fn SocketConnection* UnixConnection.as_SocketConnection(&self) => (SocketConnection*)(self);


<* Maps to receive_credentials *>
extern fn Credentials* UnixConnection.receive_credentials(&self, Cancellable* cancellable) @extern("g_unix_connection_receive_credentials");

<* Maps to receive_credentials_async *>
extern fn void UnixConnection.receive_credentials_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_unix_connection_receive_credentials_async");

<* Maps to receive_credentials_finish *>
extern fn Credentials* UnixConnection.receive_credentials_finish(&self, AsyncResult* result) @extern("g_unix_connection_receive_credentials_finish");

<* Maps to receive_fd *>
extern fn int UnixConnection.receive_fd(&self, Cancellable* cancellable) @extern("g_unix_connection_receive_fd");

<* Maps to send_credentials *>
extern fn bool UnixConnection.send_credentials(&self, Cancellable* cancellable) @extern("g_unix_connection_send_credentials");

<* Maps to send_credentials_async *>
extern fn void UnixConnection.send_credentials_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_unix_connection_send_credentials_async");

<* Maps to send_credentials_finish *>
extern fn bool UnixConnection.send_credentials_finish(&self, AsyncResult* result) @extern("g_unix_connection_send_credentials_finish");

<* Maps to send_fd *>
extern fn bool UnixConnection.send_fd(&self, int fd, Cancellable* cancellable) @extern("g_unix_connection_send_fd");


<* Maps to GUnixCredentialsMessage *>
distinct UnixCredentialsMessage = void*;

fn SocketControlMessage* UnixCredentialsMessage.as_SocketControlMessage(&self) => (SocketControlMessage*)(self);


<* Maps to get_credentials *>
extern fn Credentials* UnixCredentialsMessage.get_credentials(&self) @extern("g_unix_credentials_message_get_credentials");


<* Maps to GUnixFDList *>
distinct UnixFDList = void*;

fn gobject::Object* UnixFDList.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to append *>
extern fn int UnixFDList.append(&self, int fd) @extern("g_unix_fd_list_append");

<* Maps to get *>
extern fn int UnixFDList.get(&self, int index_) @extern("g_unix_fd_list_get");

<* Maps to get_length *>
extern fn int UnixFDList.get_length(&self) @extern("g_unix_fd_list_get_length");

<* Maps to peek_fds *>
extern fn int UnixFDList.peek_fds(&self, int* length) @extern("g_unix_fd_list_peek_fds");

<* Maps to steal_fds *>
extern fn int UnixFDList.steal_fds(&self, int* length) @extern("g_unix_fd_list_steal_fds");


<* Maps to GUnixFDMessage *>
distinct UnixFDMessage = void*;

fn SocketControlMessage* UnixFDMessage.as_SocketControlMessage(&self) => (SocketControlMessage*)(self);


<* Maps to append_fd *>
extern fn bool UnixFDMessage.append_fd(&self, int fd) @extern("g_unix_fd_message_append_fd");

<* Maps to get_fd_list *>
extern fn UnixFDList* UnixFDMessage.get_fd_list(&self) @extern("g_unix_fd_message_get_fd_list");

<* Maps to steal_fds *>
extern fn int UnixFDMessage.steal_fds(&self, int* length) @extern("g_unix_fd_message_steal_fds");


<* Maps to GUnixInputStream *>
distinct UnixInputStream = void*;

fn InputStream* UnixInputStream.as_InputStream(&self) => (InputStream*)(self);


<* Maps to get_close_fd *>
extern fn bool UnixInputStream.get_close_fd(&self) @extern("g_unix_input_stream_get_close_fd");

<* Maps to get_fd *>
extern fn int UnixInputStream.get_fd(&self) @extern("g_unix_input_stream_get_fd");

<* Maps to set_close_fd *>
extern fn void UnixInputStream.set_close_fd(&self, bool close_fd) @extern("g_unix_input_stream_set_close_fd");


<* Maps to GUnixMountMonitor *>
distinct UnixMountMonitor = void*;

fn gobject::Object* UnixMountMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to set_rate_limit *>
extern fn void UnixMountMonitor.set_rate_limit(&self, int limit_msec) @extern("g_unix_mount_monitor_set_rate_limit");


<* Maps to GUnixOutputStream *>
distinct UnixOutputStream = void*;

fn OutputStream* UnixOutputStream.as_OutputStream(&self) => (OutputStream*)(self);


<* Maps to get_close_fd *>
extern fn bool UnixOutputStream.get_close_fd(&self) @extern("g_unix_output_stream_get_close_fd");

<* Maps to get_fd *>
extern fn int UnixOutputStream.get_fd(&self) @extern("g_unix_output_stream_get_fd");

<* Maps to set_close_fd *>
extern fn void UnixOutputStream.set_close_fd(&self, bool close_fd) @extern("g_unix_output_stream_set_close_fd");


<* Maps to GUnixSocketAddress *>
distinct UnixSocketAddress = void*;

fn SocketAddress* UnixSocketAddress.as_SocketAddress(&self) => (SocketAddress*)(self);


<* Maps to get_address_type *>
extern fn UnixSocketAddressType UnixSocketAddress.get_address_type(&self) @extern("g_unix_socket_address_get_address_type");

<* Maps to get_is_abstract *>
extern fn bool UnixSocketAddress.get_is_abstract(&self) @extern("g_unix_socket_address_get_is_abstract");

<* Maps to get_path *>
extern fn ZString UnixSocketAddress.get_path(&self) @extern("g_unix_socket_address_get_path");

<* Maps to get_path_len *>
extern fn usz UnixSocketAddress.get_path_len(&self) @extern("g_unix_socket_address_get_path_len");


<* Maps to GVfs *>
distinct Vfs = void*;

fn gobject::Object* Vfs.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_file_for_path *>
extern fn File* Vfs.get_file_for_path(&self, ZString path) @extern("g_vfs_get_file_for_path");

<* Maps to get_file_for_uri *>
extern fn File* Vfs.get_file_for_uri(&self, ZString uri) @extern("g_vfs_get_file_for_uri");

<* Maps to get_supported_uri_schemes *>
extern fn ZString Vfs.get_supported_uri_schemes(&self) @extern("g_vfs_get_supported_uri_schemes");

<* Maps to is_active *>
extern fn bool Vfs.is_active(&self) @extern("g_vfs_is_active");

<* Maps to parse_name *>
extern fn File* Vfs.parse_name(&self, ZString parse_name) @extern("g_vfs_parse_name");

<* Maps to register_uri_scheme *>
extern fn bool Vfs.register_uri_scheme(&self, ZString scheme, VfsFileLookupFunc uri_func, void* uri_data, glib::DestroyNotify uri_destroy, VfsFileLookupFunc parse_name_func, void* parse_name_data, glib::DestroyNotify parse_name_destroy) @extern("g_vfs_register_uri_scheme");

<* Maps to unregister_uri_scheme *>
extern fn bool Vfs.unregister_uri_scheme(&self, ZString scheme) @extern("g_vfs_unregister_uri_scheme");


<* Maps to GVolumeMonitor *>
distinct VolumeMonitor = void*;

fn gobject::Object* VolumeMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_connected_drives *>
extern fn glib::List* VolumeMonitor.get_connected_drives(&self) @extern("g_volume_monitor_get_connected_drives");

<* Maps to get_mount_for_uuid *>
extern fn Mount* VolumeMonitor.get_mount_for_uuid(&self, ZString uuid) @extern("g_volume_monitor_get_mount_for_uuid");

<* Maps to get_mounts *>
extern fn glib::List* VolumeMonitor.get_mounts(&self) @extern("g_volume_monitor_get_mounts");

<* Maps to get_volume_for_uuid *>
extern fn Volume* VolumeMonitor.get_volume_for_uuid(&self, ZString uuid) @extern("g_volume_monitor_get_volume_for_uuid");

<* Maps to get_volumes *>
extern fn glib::List* VolumeMonitor.get_volumes(&self) @extern("g_volume_monitor_get_volumes");


<* Maps to GZlibCompressor *>
distinct ZlibCompressor = void*;

fn gobject::Object* ZlibCompressor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_file_info *>
extern fn FileInfo* ZlibCompressor.get_file_info(&self) @extern("g_zlib_compressor_get_file_info");

<* Maps to set_file_info *>
extern fn void ZlibCompressor.set_file_info(&self, FileInfo* file_info) @extern("g_zlib_compressor_set_file_info");


<* Maps to GZlibDecompressor *>
distinct ZlibDecompressor = void*;

fn gobject::Object* ZlibDecompressor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_file_info *>
extern fn FileInfo* ZlibDecompressor.get_file_info(&self) @extern("g_zlib_decompressor_get_file_info");




<* Maps to GAction *>
interface Action {

  fn void activate(glib::Variant* parameter);

  fn void change_state(glib::Variant* value);

  fn bool get_enabled();

  fn ZString get_name();

  fn glib::VariantType* get_parameter_type();

  fn glib::Variant* get_state();

  fn glib::Variant* get_state_hint();

  fn glib::VariantType* get_state_type();

}

<* Maps to GActionGroup *>
interface ActionGroup {

  fn void action_added(ZString action_name);

  fn void action_enabled_changed(ZString action_name, bool enabled);

  fn void action_removed(ZString action_name);

  fn void action_state_changed(ZString action_name, glib::Variant* state);

  fn void activate_action(ZString action_name, glib::Variant* parameter);

  fn void change_action_state(ZString action_name, glib::Variant* value);

  fn bool get_action_enabled(ZString action_name);

  fn glib::VariantType* get_action_parameter_type(ZString action_name);

  fn glib::Variant* get_action_state(ZString action_name);

  fn glib::Variant* get_action_state_hint(ZString action_name);

  fn glib::VariantType* get_action_state_type(ZString action_name);

  fn bool has_action(ZString action_name);

  fn ZString list_actions();

  fn bool query_action(ZString action_name, bool* enabled, glib::VariantType* parameter_type, glib::VariantType* state_type, glib::Variant* state_hint, glib::Variant* state);

}

<* Maps to GActionMap *>
interface ActionMap {

  fn void add_action(Action* action);

  fn void add_action_entries(ActionEntry entries, int n_entries, void* user_data);

  fn Action* lookup_action(ZString action_name);

  fn void remove_action(ZString action_name);

  fn void remove_action_entries(ActionEntry entries, int n_entries);

}

<* Maps to GAppInfo *>
interface AppInfo {

  fn bool add_supports_type(ZString content_type);

  fn bool can_delete();

  fn bool can_remove_supports_type();

  fn bool delete();

  fn AppInfo* dup();

  fn bool equal(AppInfo* appinfo2);

  fn ZString get_commandline();

  fn ZString get_description();

  fn ZString get_display_name();

  fn ZString get_executable();

  fn Icon* get_icon();

  fn ZString get_id();

  fn ZString get_name();

  fn ZString get_supported_types();

  fn bool launch(glib::List* files, AppLaunchContext* context);

  fn bool launch_uris(glib::List* uris, AppLaunchContext* context);

  fn void launch_uris_async(glib::List* uris, AppLaunchContext* context, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool launch_uris_finish(AsyncResult* result);

  fn bool remove_supports_type(ZString content_type);

  fn bool set_as_default_for_extension(ZString extension);

  fn bool set_as_default_for_type(ZString content_type);

  fn bool set_as_last_used_for_type(ZString content_type);

  fn bool should_show();

  fn bool supports_files();

  fn bool supports_uris();

}

<* Maps to GAsyncInitable *>
interface AsyncInitable {

  fn void init_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool init_finish(AsyncResult* res);

  fn gobject::Object* new_finish(AsyncResult* res);

}

<* Maps to GAsyncResult *>
interface AsyncResult {

  fn gobject::Object* get_source_object();

  fn void* get_user_data();

  fn bool is_tagged(void* source_tag);

  fn bool legacy_propagate_error();

}

<* Maps to GConverter *>
interface Converter {

  fn ConverterResult convert(char inbuf, usz inbuf_size, char outbuf, usz outbuf_size, ConverterFlags flags, usz* bytes_read, usz* bytes_written);

  fn glib::Bytes* convert_bytes(glib::Bytes* bytes);

  fn void reset();

}

<* Maps to GDBusInterface *>
interface DBusInterface {

  fn DBusObject* dup_object();

  fn DBusInterfaceInfo* get_info();

  fn DBusObject* get_object();

  fn void set_object(DBusObject* object);

}

<* Maps to GDBusObject *>
interface DBusObject {

  fn DBusInterface* get_interface(ZString interface_name);

  fn glib::List* get_interfaces();

  fn ZString get_object_path();

}

<* Maps to GDBusObjectManager *>
interface DBusObjectManager {

  fn DBusInterface* get_interface(ZString object_path, ZString interface_name);

  fn DBusObject* get_object(ZString object_path);

  fn ZString get_object_path();

  fn glib::List* get_objects();

}

<* Maps to GDatagramBased *>
interface DatagramBased {

  fn glib::IOCondition condition_check(glib::IOCondition condition);

  fn bool condition_wait(glib::IOCondition condition, long timeout, Cancellable* cancellable);

  fn glib::Source* create_source(glib::IOCondition condition, Cancellable* cancellable);

  fn int receive_messages(InputMessage messages, uint num_messages, int flags, long timeout, Cancellable* cancellable);

  fn int send_messages(OutputMessage messages, uint num_messages, int flags, long timeout, Cancellable* cancellable);

}

<* Maps to GDebugController *>
interface DebugController {

  fn bool get_debug_enabled();

  fn void set_debug_enabled(bool debug_enabled);

}

<* Maps to GDesktopAppInfoLookup *>
interface DesktopAppInfoLookup {

  fn AppInfo* get_default_for_uri_scheme(ZString uri_scheme);

}

<* Maps to GDrive *>
interface Drive {

  fn bool can_eject();

  fn bool can_poll_for_media();

  fn bool can_start();

  fn bool can_start_degraded();

  fn bool can_stop();

  fn void eject(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_finish(AsyncResult* result);

  fn void eject_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_with_operation_finish(AsyncResult* result);

  fn ZString enumerate_identifiers();

  fn Icon* get_icon();

  fn ZString* get_identifier(ZString kind);

  fn ZString* get_name();

  fn ZString get_sort_key();

  fn DriveStartStopType get_start_stop_type();

  fn Icon* get_symbolic_icon();

  fn glib::List* get_volumes();

  fn bool has_media();

  fn bool has_volumes();

  fn bool is_media_check_automatic();

  fn bool is_media_removable();

  fn bool is_removable();

  fn void poll_for_media(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool poll_for_media_finish(AsyncResult* result);

  fn void start(DriveStartFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool start_finish(AsyncResult* result);

  fn void stop(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool stop_finish(AsyncResult* result);

}

<* Maps to GDtlsClientConnection *>
interface DtlsClientConnection {

  fn glib::List* get_accepted_cas();

  fn SocketConnectable* get_server_identity();

  fn TlsCertificateFlags get_validation_flags();

  fn void set_server_identity(SocketConnectable* identity);

  fn void set_validation_flags(TlsCertificateFlags flags);

}

<* Maps to GDtlsConnection *>
interface DtlsConnection {

  fn bool close(Cancellable* cancellable);

  fn void close_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool close_finish(AsyncResult* result);

  fn bool emit_accept_certificate(TlsCertificate* peer_cert, TlsCertificateFlags errors);

  fn TlsCertificate* get_certificate();

  fn bool get_channel_binding_data(TlsChannelBindingType type, char data);

  fn ZString* get_ciphersuite_name();

  fn TlsDatabase* get_database();

  fn TlsInteraction* get_interaction();

  fn ZString get_negotiated_protocol();

  fn TlsCertificate* get_peer_certificate();

  fn TlsCertificateFlags get_peer_certificate_errors();

  fn TlsProtocolVersion get_protocol_version();

  fn TlsRehandshakeMode get_rehandshake_mode();

  fn bool get_require_close_notify();

  fn bool handshake(Cancellable* cancellable);

  fn void handshake_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool handshake_finish(AsyncResult* result);

  fn void set_advertised_protocols(ZString* protocols);

  fn void set_certificate(TlsCertificate* certificate);

  fn void set_database(TlsDatabase* database);

  fn void set_interaction(TlsInteraction* interaction);

  fn void set_rehandshake_mode(TlsRehandshakeMode mode);

  fn void set_require_close_notify(bool require_close_notify);

  fn bool shutdown(bool shutdown_read, bool shutdown_write, Cancellable* cancellable);

  fn void shutdown_async(bool shutdown_read, bool shutdown_write, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool shutdown_finish(AsyncResult* result);

}

<* Maps to GDtlsServerConnection *>
interface DtlsServerConnection {

}

<* Maps to GFile *>
interface File {

  fn FileOutputStream* append_to(FileCreateFlags flags, Cancellable* cancellable);

  fn void append_to_async(FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileOutputStream* append_to_finish(AsyncResult* res);

  fn ZString* build_attribute_list_for_copy(FileCopyFlags flags, Cancellable* cancellable);

  fn bool copy(File* destination, FileCopyFlags flags, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data);

  fn void copy_async(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data);

  fn void copy_async_with_closures(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, gobject::Closure* progress_callback_closure, gobject::Closure* ready_callback_closure);

  fn bool copy_attributes(File* destination, FileCopyFlags flags, Cancellable* cancellable);

  fn bool copy_finish(AsyncResult* res);

  fn FileOutputStream* create(FileCreateFlags flags, Cancellable* cancellable);

  fn void create_async(FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileOutputStream* create_finish(AsyncResult* res);

  fn FileIOStream* create_readwrite(FileCreateFlags flags, Cancellable* cancellable);

  fn void create_readwrite_async(FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileIOStream* create_readwrite_finish(AsyncResult* res);

  fn bool delete(Cancellable* cancellable);

  fn void delete_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool delete_finish(AsyncResult* result);

  fn File* dup();

  fn void eject_mountable(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_mountable_finish(AsyncResult* result);

  fn void eject_mountable_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_mountable_with_operation_finish(AsyncResult* result);

  fn FileEnumerator* enumerate_children(ZString attributes, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn void enumerate_children_async(ZString attributes, FileQueryInfoFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileEnumerator* enumerate_children_finish(AsyncResult* res);

  fn bool equal(File* file2);

  fn Mount* find_enclosing_mount(Cancellable* cancellable);

  fn void find_enclosing_mount_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn Mount* find_enclosing_mount_finish(AsyncResult* res);

  fn ZString* get_basename();

  fn File* get_child(ZString name);

  fn File* get_child_for_display_name(ZString display_name);

  fn File* get_parent();

  fn ZString* get_parse_name();

  fn ZString* get_path();

  fn ZString* get_relative_path(File* descendant);

  fn ZString* get_uri();

  fn ZString* get_uri_scheme();

  fn bool has_parent(File* parent);

  fn bool has_prefix(File* prefix);

  fn bool has_uri_scheme(ZString uri_scheme);

  fn uint hash();

  fn bool is_native();

  fn glib::Bytes* load_bytes(Cancellable* cancellable, ZString* etag_out);

  fn void load_bytes_async(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn glib::Bytes* load_bytes_finish(AsyncResult* result, ZString* etag_out);

  fn bool load_contents(Cancellable* cancellable, char contents, usz* length, ZString* etag_out);

  fn void load_contents_async(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool load_contents_finish(AsyncResult* res, char contents, usz* length, ZString* etag_out);

  fn void load_partial_contents_async(Cancellable* cancellable, FileReadMoreCallback read_more_callback, AsyncReadyCallback callback, void* user_data);

  fn bool load_partial_contents_finish(AsyncResult* res, char contents, usz* length, ZString* etag_out);

  fn bool make_directory(Cancellable* cancellable);

  fn void make_directory_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool make_directory_finish(AsyncResult* result);

  fn bool make_directory_with_parents(Cancellable* cancellable);

  fn bool make_symbolic_link(ZString symlink_value, Cancellable* cancellable);

  fn void make_symbolic_link_async(ZString symlink_value, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool make_symbolic_link_finish(AsyncResult* result);

  fn bool measure_disk_usage(FileMeasureFlags flags, Cancellable* cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, ulong* disk_usage, ulong* num_dirs, ulong* num_files);

  fn void measure_disk_usage_async(FileMeasureFlags flags, int io_priority, Cancellable* cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, AsyncReadyCallback callback, void* user_data);

  fn bool measure_disk_usage_finish(AsyncResult* result, ulong* disk_usage, ulong* num_dirs, ulong* num_files);

  fn FileMonitor* monitor(FileMonitorFlags flags, Cancellable* cancellable);

  fn FileMonitor* monitor_directory(FileMonitorFlags flags, Cancellable* cancellable);

  fn FileMonitor* monitor_file(FileMonitorFlags flags, Cancellable* cancellable);

  fn void mount_enclosing_volume(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool mount_enclosing_volume_finish(AsyncResult* result);

  fn void mount_mountable(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn File* mount_mountable_finish(AsyncResult* result);

  fn bool move(File* destination, FileCopyFlags flags, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data);

  fn void move_async(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data);

  fn void move_async_with_closures(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, gobject::Closure* progress_callback_closure, gobject::Closure* ready_callback_closure);

  fn bool move_finish(AsyncResult* result);

  fn FileIOStream* open_readwrite(Cancellable* cancellable);

  fn void open_readwrite_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileIOStream* open_readwrite_finish(AsyncResult* res);

  fn ZString peek_path();

  fn void poll_mountable(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool poll_mountable_finish(AsyncResult* result);

  fn AppInfo* query_default_handler(Cancellable* cancellable);

  fn void query_default_handler_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn AppInfo* query_default_handler_finish(AsyncResult* result);

  fn bool query_exists(Cancellable* cancellable);

  fn FileType query_file_type(FileQueryInfoFlags flags, Cancellable* cancellable);

  fn FileInfo* query_filesystem_info(ZString attributes, Cancellable* cancellable);

  fn void query_filesystem_info_async(ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileInfo* query_filesystem_info_finish(AsyncResult* res);

  fn FileInfo* query_info(ZString attributes, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn void query_info_async(ZString attributes, FileQueryInfoFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileInfo* query_info_finish(AsyncResult* res);

  fn FileAttributeInfoList* query_settable_attributes(Cancellable* cancellable);

  fn FileAttributeInfoList* query_writable_namespaces(Cancellable* cancellable);

  fn FileInputStream* read(Cancellable* cancellable);

  fn void read_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileInputStream* read_finish(AsyncResult* res);

  fn FileOutputStream* replace(ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable);

  fn void replace_async(ZString etag, bool make_backup, FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool replace_contents(char contents, usz length, ZString etag, bool make_backup, FileCreateFlags flags, ZString* new_etag, Cancellable* cancellable);

  fn void replace_contents_async(char contents, usz length, ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn void replace_contents_bytes_async(glib::Bytes* contents, ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool replace_contents_finish(AsyncResult* res, ZString* new_etag);

  fn FileOutputStream* replace_finish(AsyncResult* res);

  fn FileIOStream* replace_readwrite(ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable);

  fn void replace_readwrite_async(ZString etag, bool make_backup, FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileIOStream* replace_readwrite_finish(AsyncResult* res);

  fn File* resolve_relative_path(ZString relative_path);

  fn bool set_attribute(ZString attribute, FileAttributeType type, void* value_p, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_byte_string(ZString attribute, ZString value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_int32(ZString attribute, int value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_int64(ZString attribute, long value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_string(ZString attribute, ZString value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_uint32(ZString attribute, uint value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_uint64(ZString attribute, ulong value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn void set_attributes_async(FileInfo* info, FileQueryInfoFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool set_attributes_finish(AsyncResult* result, FileInfo* info);

  fn bool set_attributes_from_info(FileInfo* info, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn File* set_display_name(ZString display_name, Cancellable* cancellable);

  fn void set_display_name_async(ZString display_name, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn File* set_display_name_finish(AsyncResult* res);

  fn void start_mountable(DriveStartFlags flags, MountOperation* start_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool start_mountable_finish(AsyncResult* result);

  fn void stop_mountable(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool stop_mountable_finish(AsyncResult* result);

  fn bool supports_thread_contexts();

  fn bool trash(Cancellable* cancellable);

  fn void trash_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool trash_finish(AsyncResult* result);

  fn void unmount_mountable(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_mountable_finish(AsyncResult* result);

  fn void unmount_mountable_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_mountable_with_operation_finish(AsyncResult* result);

}

<* Maps to GFileDescriptorBased *>
interface FileDescriptorBased {

  fn int get_fd();

}

<* Maps to GIcon *>
interface Icon {

  fn bool equal(Icon* icon2);

  fn uint hash();

  fn glib::Variant* serialize();

  fn ZString* to_string();

}

<* Maps to GInitable *>
interface Initable {

  fn bool init(Cancellable* cancellable);

}

<* Maps to GListModel *>
interface ListModel {

  fn void* get_item(uint position);

  fn usz get_item_type();

  fn uint get_n_items();

  fn gobject::Object* get_object(uint position);

  fn void items_changed(uint position, uint removed, uint added);

}

<* Maps to GLoadableIcon *>
interface LoadableIcon {

  fn InputStream* load(int size, ZString* type, Cancellable* cancellable);

  fn void load_async(int size, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn InputStream* load_finish(AsyncResult* res, ZString* type);

}

<* Maps to GMemoryMonitor *>
interface MemoryMonitor {

}

<* Maps to GMount *>
interface Mount {

  fn bool can_eject();

  fn bool can_unmount();

  fn void eject(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_finish(AsyncResult* result);

  fn void eject_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_with_operation_finish(AsyncResult* result);

  fn File* get_default_location();

  fn Drive* get_drive();

  fn Icon* get_icon();

  fn ZString* get_name();

  fn File* get_root();

  fn ZString get_sort_key();

  fn Icon* get_symbolic_icon();

  fn ZString* get_uuid();

  fn Volume* get_volume();

  fn void guess_content_type(bool force_rescan, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn ZString guess_content_type_finish(AsyncResult* result);

  fn ZString guess_content_type_sync(bool force_rescan, Cancellable* cancellable);

  fn bool is_shadowed();

  fn void remount(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool remount_finish(AsyncResult* result);

  fn void shadow();

  fn void unmount(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_finish(AsyncResult* result);

  fn void unmount_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_with_operation_finish(AsyncResult* result);

  fn void unshadow();

}

<* Maps to GNetworkMonitor *>
interface NetworkMonitor {

  fn bool can_reach(SocketConnectable* connectable, Cancellable* cancellable);

  fn void can_reach_async(SocketConnectable* connectable, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool can_reach_finish(AsyncResult* result);

  fn NetworkConnectivity get_connectivity();

  fn bool get_network_available();

  fn bool get_network_metered();

}

<* Maps to GPollableInputStream *>
interface PollableInputStream {

  fn bool can_poll();

  fn glib::Source* create_source(Cancellable* cancellable);

  fn bool is_readable();

  fn isz read_nonblocking(char buffer, usz count, Cancellable* cancellable);

}

<* Maps to GPollableOutputStream *>
interface PollableOutputStream {

  fn bool can_poll();

  fn glib::Source* create_source(Cancellable* cancellable);

  fn bool is_writable();

  fn isz write_nonblocking(char buffer, usz count, Cancellable* cancellable);

  fn PollableReturn writev_nonblocking(OutputVector vectors, usz n_vectors, usz* bytes_written, Cancellable* cancellable);

}

<* Maps to GPowerProfileMonitor *>
interface PowerProfileMonitor {

  fn bool get_power_saver_enabled();

}

<* Maps to GProxy *>
interface Proxy {

  fn IOStream* connect(IOStream* connection, ProxyAddress* proxy_address, Cancellable* cancellable);

  fn void connect_async(IOStream* connection, ProxyAddress* proxy_address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn IOStream* connect_finish(AsyncResult* result);

  fn bool supports_hostname();

}

<* Maps to GProxyResolver *>
interface ProxyResolver {

  fn bool is_supported();

  fn ZString lookup(ZString uri, Cancellable* cancellable);

  fn void lookup_async(ZString uri, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn ZString lookup_finish(AsyncResult* result);

}

<* Maps to GRemoteActionGroup *>
interface RemoteActionGroup {

  fn void activate_action_full(ZString action_name, glib::Variant* parameter, glib::Variant* platform_data);

  fn void change_action_state_full(ZString action_name, glib::Variant* value, glib::Variant* platform_data);

}

<* Maps to GSeekable *>
interface Seekable {

  fn bool can_seek();

  fn bool can_truncate();

  fn bool seek(long offset, glib::SeekType type, Cancellable* cancellable);

  fn long tell();

  fn bool truncate(long offset, Cancellable* cancellable);

}

<* Maps to GSocketConnectable *>
interface SocketConnectable {

  fn SocketAddressEnumerator* enumerate();

  fn SocketAddressEnumerator* proxy_enumerate();

  fn ZString* to_string();

}

<* Maps to GTlsBackend *>
interface TlsBackend {

  fn usz get_certificate_type();

  fn usz get_client_connection_type();

  fn TlsDatabase* get_default_database();

  fn usz get_dtls_client_connection_type();

  fn usz get_dtls_server_connection_type();

  fn usz get_file_database_type();

  fn usz get_server_connection_type();

  fn void set_default_database(TlsDatabase* database);

  fn bool supports_dtls();

  fn bool supports_tls();

}

<* Maps to GTlsClientConnection *>
interface TlsClientConnection {

  fn void copy_session_state(TlsClientConnection* source);

  fn glib::List* get_accepted_cas();

  fn SocketConnectable* get_server_identity();

  fn bool get_use_ssl3();

  fn TlsCertificateFlags get_validation_flags();

  fn void set_server_identity(SocketConnectable* identity);

  fn void set_use_ssl3(bool use_ssl3);

  fn void set_validation_flags(TlsCertificateFlags flags);

}

<* Maps to GTlsFileDatabase *>
interface TlsFileDatabase {

}

<* Maps to GTlsServerConnection *>
interface TlsServerConnection {

}

<* Maps to GVolume *>
interface Volume {

  fn bool can_eject();

  fn bool can_mount();

  fn void eject(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_finish(AsyncResult* result);

  fn void eject_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_with_operation_finish(AsyncResult* result);

  fn ZString enumerate_identifiers();

  fn File* get_activation_root();

  fn Drive* get_drive();

  fn Icon* get_icon();

  fn ZString* get_identifier(ZString kind);

  fn Mount* get_mount();

  fn ZString* get_name();

  fn ZString get_sort_key();

  fn Icon* get_symbolic_icon();

  fn ZString* get_uuid();

  fn void mount(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool mount_finish(AsyncResult* result);

  fn bool should_automount();

}
    
///END MODULE gio
