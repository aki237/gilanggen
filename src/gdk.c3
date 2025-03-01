
///START MODULE gdk
module gdk;

import glib;

import gobject;

import gdkpixbuf;

import gio;

import pango;

import pangocairo;

import cairo;


enum AnchorHints : int (inline int s) {
  FLIP = 3,
  FLIP_X = 1,
  FLIP_Y = 2,
  RESIZE = 48,
  RESIZE_X = 16,
  RESIZE_Y = 32,
  SLIDE = 12,
  SLIDE_X = 4,
  SLIDE_Y = 8,
}

enum AxisFlags : int (inline int s) {
  DELTA_X = 8,
  DELTA_Y = 16,
  DISTANCE = 512,
  PRESSURE = 32,
  ROTATION = 1024,
  SLIDER = 2048,
  WHEEL = 256,
  X = 2,
  XTILT = 64,
  Y = 4,
  YTILT = 128,
}

enum DragAction : int (inline int s) {
  ASK = 8,
  COPY = 1,
  LINK = 4,
  MOVE = 2,
}

enum FrameClockPhase : int (inline int s) {
  AFTER_PAINT = 64,
  BEFORE_PAINT = 2,
  FLUSH_EVENTS = 1,
  LAYOUT = 8,
  NONE = 0,
  PAINT = 16,
  RESUME_EVENTS = 32,
  UPDATE = 4,
}

enum Glapi : int (inline int s) {
  GL = 1,
  GLES = 2,
}

enum ModifierType : int (inline int s) {
  ALT_MASK = 8,
  BUTTON1_MASK = 256,
  BUTTON2_MASK = 512,
  BUTTON3_MASK = 1024,
  BUTTON4_MASK = 2048,
  BUTTON5_MASK = 4096,
  CONTROL_MASK = 4,
  HYPER_MASK = 134217728,
  LOCK_MASK = 2,
  META_MASK = 268435456,
  NO_MODIFIER_MASK = 0,
  SHIFT_MASK = 1,
  SUPER_MASK = 67108864,
}

enum PaintableFlags : int (inline int s) {
  CONTENTS = 2,
  SIZE = 1,
}

enum SeatCapabilities : int (inline int s) {
  ALL = 31,
  ALL_POINTING = 7,
  KEYBOARD = 8,
  NONE = 0,
  POINTER = 1,
  TABLET_PAD = 16,
  TABLET_STYLUS = 4,
  TOUCH = 2,
}

enum ToplevelState : int (inline int s) {
  ABOVE = 16,
  BELOW = 32,
  BOTTOM_RESIZABLE = 8192,
  BOTTOM_TILED = 4096,
  FOCUSED = 64,
  FULLSCREEN = 8,
  LEFT_RESIZABLE = 32768,
  LEFT_TILED = 16384,
  MAXIMIZED = 2,
  MINIMIZED = 1,
  RIGHT_RESIZABLE = 2048,
  RIGHT_TILED = 1024,
  STICKY = 4,
  SUSPENDED = 65536,
  TILED = 128,
  TOP_RESIZABLE = 512,
  TOP_TILED = 256,
}

enum AxisUse : int (inline int s) {
  DELTA_X = 3,
  DELTA_Y = 4,
  DISTANCE = 9,
  IGNORE = 0,
  LAST = 12,
  PRESSURE = 5,
  ROTATION = 10,
  SLIDER = 11,
  WHEEL = 8,
  X = 1,
  XTILT = 6,
  Y = 2,
  YTILT = 7,
}

enum CicpRange : int (inline int s) {
  FULL = 1,
  NARROW = 0,
}

enum CrossingMode : int (inline int s) {
  DEVICE_SWITCH = 8,
  GRAB = 1,
  GTK_GRAB = 3,
  GTK_UNGRAB = 4,
  NORMAL = 0,
  STATE_CHANGED = 5,
  TOUCH_BEGIN = 6,
  TOUCH_END = 7,
  UNGRAB = 2,
}

enum DevicePadFeature : int (inline int s) {
  BUTTON = 0,
  RING = 1,
  STRIP = 2,
}

enum DeviceToolType : int (inline int s) {
  AIRBRUSH = 5,
  BRUSH = 3,
  ERASER = 2,
  LENS = 7,
  MOUSE = 6,
  PEN = 1,
  PENCIL = 4,
  UNKNOWN = 0,
}

enum DmabufError : int (inline int s) {
  CREATION_FAILED = 2,
  NOT_AVAILABLE = 0,
  UNSUPPORTED_FORMAT = 1,
}

enum DragCancelReason : int (inline int s) {
  ERROR = 2,
  NO_TARGET = 0,
  USER_CANCELLED = 1,
}

enum EventType : int (inline int s) {
  BUTTON_PRESS = 2,
  BUTTON_RELEASE = 3,
  DELETE = 0,
  DRAG_ENTER = 11,
  DRAG_LEAVE = 12,
  DRAG_MOTION = 13,
  DROP_START = 14,
  ENTER_NOTIFY = 6,
  EVENT_LAST = 29,
  FOCUS_CHANGE = 8,
  GRAB_BROKEN = 16,
  KEY_PRESS = 4,
  KEY_RELEASE = 5,
  LEAVE_NOTIFY = 7,
  MOTION_NOTIFY = 1,
  PAD_BUTTON_PRESS = 23,
  PAD_BUTTON_RELEASE = 24,
  PAD_GROUP_MODE = 27,
  PAD_RING = 25,
  PAD_STRIP = 26,
  PROXIMITY_IN = 9,
  PROXIMITY_OUT = 10,
  SCROLL = 15,
  TOUCHPAD_HOLD = 28,
  TOUCHPAD_PINCH = 22,
  TOUCHPAD_SWIPE = 21,
  TOUCH_BEGIN = 17,
  TOUCH_CANCEL = 20,
  TOUCH_END = 19,
  TOUCH_UPDATE = 18,
}

enum FullscreenMode : int (inline int s) {
  ALL_MONITORS = 1,
  CURRENT_MONITOR = 0,
}

enum GLError : int (inline int s) {
  COMPILATION_FAILED = 3,
  LINK_FAILED = 4,
  NOT_AVAILABLE = 0,
  UNSUPPORTED_FORMAT = 1,
  UNSUPPORTED_PROFILE = 2,
}

enum Gravity : int (inline int s) {
  CENTER = 5,
  EAST = 6,
  NORTH = 2,
  NORTH_EAST = 3,
  NORTH_WEST = 1,
  SOUTH = 8,
  SOUTH_EAST = 9,
  SOUTH_WEST = 7,
  STATIC = 10,
  WEST = 4,
}

enum InputSource : int (inline int s) {
  KEYBOARD = 2,
  MOUSE = 0,
  PEN = 1,
  TABLET_PAD = 6,
  TOUCHPAD = 4,
  TOUCHSCREEN = 3,
  TRACKPOINT = 5,
}

enum KeyMatch : int (inline int s) {
  EXACT = 2,
  NONE = 0,
  PARTIAL = 1,
}

enum MemoryFormat : int (inline int s) {
  A16 = 25,
  A16_FLOAT = 26,
  A32_FLOAT = 27,
  A8 = 24,
  A8B8G8R8 = 6,
  A8B8G8R8_PREMULTIPLIED = 28,
  A8R8G8B8 = 4,
  A8R8G8B8_PREMULTIPLIED = 1,
  B8G8R8 = 8,
  B8G8R8A8 = 3,
  B8G8R8A8_PREMULTIPLIED = 0,
  B8G8R8X8 = 29,
  G16 = 23,
  G16A16 = 22,
  G16A16_PREMULTIPLIED = 21,
  G8 = 20,
  G8A8 = 19,
  G8A8_PREMULTIPLIED = 18,
  N_FORMATS = 33,
  R16G16B16 = 9,
  R16G16B16A16 = 11,
  R16G16B16A16_FLOAT = 14,
  R16G16B16A16_FLOAT_PREMULTIPLIED = 13,
  R16G16B16A16_PREMULTIPLIED = 10,
  R16G16B16_FLOAT = 12,
  R32G32B32A32_FLOAT = 17,
  R32G32B32A32_FLOAT_PREMULTIPLIED = 16,
  R32G32B32_FLOAT = 15,
  R8G8B8 = 7,
  R8G8B8A8 = 5,
  R8G8B8A8_PREMULTIPLIED = 2,
  R8G8B8X8 = 31,
  X8B8G8R8 = 32,
  X8R8G8B8 = 30,
}

enum NotifyType : int (inline int s) {
  ANCESTOR = 0,
  INFERIOR = 2,
  NONLINEAR = 3,
  NONLINEAR_VIRTUAL = 4,
  UNKNOWN = 5,
  VIRTUAL = 1,
}

enum ScrollDirection : int (inline int s) {
  DOWN = 1,
  LEFT = 2,
  RIGHT = 3,
  SMOOTH = 4,
  UP = 0,
}

enum ScrollUnit : int (inline int s) {
  SURFACE = 1,
  WHEEL = 0,
}

enum SubpixelLayout : int (inline int s) {
  HORIZONTAL_BGR = 3,
  HORIZONTAL_RGB = 2,
  NONE = 1,
  UNKNOWN = 0,
  VERTICAL_BGR = 5,
  VERTICAL_RGB = 4,
}

enum SurfaceEdge : int (inline int s) {
  EAST = 4,
  NORTH = 1,
  NORTH_EAST = 2,
  NORTH_WEST = 0,
  SOUTH = 6,
  SOUTH_EAST = 7,
  SOUTH_WEST = 5,
  WEST = 3,
}

enum TextureError : int (inline int s) {
  CORRUPT_IMAGE = 1,
  TOO_LARGE = 0,
  UNSUPPORTED_CONTENT = 2,
  UNSUPPORTED_FORMAT = 3,
}

enum TitlebarGesture : int (inline int s) {
  DOUBLE_CLICK = 1,
  MIDDLE_CLICK = 3,
  RIGHT_CLICK = 2,
}

enum TouchpadGesturePhase : int (inline int s) {
  BEGIN = 0,
  CANCEL = 3,
  END = 2,
  UPDATE = 1,
}

enum VulkanError : int (inline int s) {
  NOT_AVAILABLE = 1,
  UNSUPPORTED = 0,
}



distinct CicpParamsClass = void*;

distinct ColorState = void*;

distinct ContentFormats = void*;

distinct ContentFormatsBuilder = void*;

distinct ContentProviderClass = void*;

distinct DevicePadInterface = void*;

distinct DmabufFormats = void*;

distinct DmabufTextureBuilderClass = void*;

distinct DmabufTextureClass = void*;

distinct DragSurfaceInterface = void*;

distinct DragSurfaceSize = void*;

distinct EventSequence = void*;

distinct FileList = void*;

distinct FrameClockClass = void*;

distinct FrameClockPrivate = void*;

distinct FrameTimings = void*;

distinct GLTextureBuilderClass = void*;

distinct GLTextureClass = void*;

distinct KeymapKey = void*;

distinct MemoryTextureBuilderClass = void*;

distinct MemoryTextureClass = void*;

distinct MonitorClass = void*;

distinct PaintableInterface = void*;

distinct PopupInterface = void*;

distinct PopupLayout = void*;

distinct Rgba = void*;

distinct Rectangle = void*;

distinct SnapshotClass = void*;

distinct SurfaceClass = void*;

distinct TextureClass = void*;

distinct TextureDownloader = void*;

distinct TimeCoord = void*;

distinct ToplevelInterface = void*;

distinct ToplevelLayout = void*;

distinct ToplevelSize = void*;


def ContentDeserializeFunc = fn void(ContentDeserializer* deserializer);

def ContentSerializeFunc = fn void(ContentSerializer* serializer);

def CursorGetTextureCallback = fn Texture*(Cursor* cursor, int cursor_size, double scale, int* width, int* height, int* hotspot_x, int* hotspot_y, void* data);


<* Maps to GdkAppLaunchContext *>
distinct AppLaunchContext = void*;

fn gio::AppLaunchContext* AppLaunchContext.as_gio_AppLaunchContext(&self) => (gio::AppLaunchContext*)(self);


<* Maps to get_display *>
extern fn Display* AppLaunchContext.get_display(&self) @extern("gdk_app_launch_context_get_display");

<* Maps to set_desktop *>
extern fn void AppLaunchContext.set_desktop(&self, int desktop) @extern("gdk_app_launch_context_set_desktop");

<* Maps to set_icon *>
extern fn void AppLaunchContext.set_icon(&self, gio::Icon* icon) @extern("gdk_app_launch_context_set_icon");

<* Maps to set_icon_name *>
extern fn void AppLaunchContext.set_icon_name(&self, ZString icon_name) @extern("gdk_app_launch_context_set_icon_name");

<* Maps to set_timestamp *>
extern fn void AppLaunchContext.set_timestamp(&self, uint timestamp) @extern("gdk_app_launch_context_set_timestamp");


<* Maps to GdkButtonEvent *>
distinct ButtonEvent = void*;

fn Event* ButtonEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_button *>
extern fn uint ButtonEvent.get_button(&self) @extern("gdk_button_event_get_button");


<* Maps to GdkCairoContext *>
distinct CairoContext = void*;

fn DrawContext* CairoContext.as_DrawContext(&self) => (DrawContext*)(self);


<* Maps to cairo_create *>
extern fn cairo::Context* CairoContext.cairo_create(&self) @extern("gdk_cairo_context_cairo_create");


<* Maps to GdkCicpParams *>
distinct CicpParams = void*;

fn gobject::Object* CicpParams.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to build_color_state *>
extern fn ColorState* CicpParams.build_color_state(&self) @extern("gdk_cicp_params_build_color_state");

<* Maps to get_color_primaries *>
extern fn uint CicpParams.get_color_primaries(&self) @extern("gdk_cicp_params_get_color_primaries");

<* Maps to get_matrix_coefficients *>
extern fn uint CicpParams.get_matrix_coefficients(&self) @extern("gdk_cicp_params_get_matrix_coefficients");

<* Maps to get_range *>
extern fn CicpRange CicpParams.get_range(&self) @extern("gdk_cicp_params_get_range");

<* Maps to get_transfer_function *>
extern fn uint CicpParams.get_transfer_function(&self) @extern("gdk_cicp_params_get_transfer_function");

<* Maps to set_color_primaries *>
extern fn void CicpParams.set_color_primaries(&self, uint color_primaries) @extern("gdk_cicp_params_set_color_primaries");

<* Maps to set_matrix_coefficients *>
extern fn void CicpParams.set_matrix_coefficients(&self, uint matrix_coefficients) @extern("gdk_cicp_params_set_matrix_coefficients");

<* Maps to set_range *>
extern fn void CicpParams.set_range(&self, CicpRange range) @extern("gdk_cicp_params_set_range");

<* Maps to set_transfer_function *>
extern fn void CicpParams.set_transfer_function(&self, uint transfer_function) @extern("gdk_cicp_params_set_transfer_function");


<* Maps to GdkClipboard *>
distinct Clipboard = void*;

fn gobject::Object* Clipboard.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_content *>
extern fn ContentProvider* Clipboard.get_content(&self) @extern("gdk_clipboard_get_content");

<* Maps to get_display *>
extern fn Display* Clipboard.get_display(&self) @extern("gdk_clipboard_get_display");

<* Maps to get_formats *>
extern fn ContentFormats* Clipboard.get_formats(&self) @extern("gdk_clipboard_get_formats");

<* Maps to is_local *>
extern fn bool Clipboard.is_local(&self) @extern("gdk_clipboard_is_local");

<* Maps to read_async *>
extern fn void Clipboard.read_async(&self, ZString* mime_types, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_async");

<* Maps to read_finish *>
extern fn gio::InputStream* Clipboard.read_finish(&self, gio::AsyncResult* result, ZString* out_mime_type) @extern("gdk_clipboard_read_finish");

<* Maps to read_text_async *>
extern fn void Clipboard.read_text_async(&self, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_text_async");

<* Maps to read_text_finish *>
extern fn ZString* Clipboard.read_text_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_read_text_finish");

<* Maps to read_texture_async *>
extern fn void Clipboard.read_texture_async(&self, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_texture_async");

<* Maps to read_texture_finish *>
extern fn Texture* Clipboard.read_texture_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_read_texture_finish");

<* Maps to read_value_async *>
extern fn void Clipboard.read_value_async(&self, usz type, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_value_async");

<* Maps to read_value_finish *>
extern fn gobject::Value* Clipboard.read_value_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_read_value_finish");

<* Maps to set *>
extern fn void Clipboard.set(&self, usz type, any rest) @extern("gdk_clipboard_set");

<* Maps to set_content *>
extern fn bool Clipboard.set_content(&self, ContentProvider* provider) @extern("gdk_clipboard_set_content");

<* Maps to set_text *>
extern fn void Clipboard.set_text(&self, ZString text) @extern("gdk_clipboard_set_text");

<* Maps to set_texture *>
extern fn void Clipboard.set_texture(&self, Texture* texture) @extern("gdk_clipboard_set_texture");

<* Maps to set_value *>
extern fn void Clipboard.set_value(&self, gobject::Value* value) @extern("gdk_clipboard_set_value");

<* Maps to store_async *>
extern fn void Clipboard.store_async(&self, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_store_async");

<* Maps to store_finish *>
extern fn bool Clipboard.store_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_store_finish");


<* Maps to GdkContentDeserializer *>
distinct ContentDeserializer = void*;

fn gobject::Object* ContentDeserializer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_cancellable *>
extern fn gio::Cancellable* ContentDeserializer.get_cancellable(&self) @extern("gdk_content_deserializer_get_cancellable");

<* Maps to get_gtype *>
extern fn usz ContentDeserializer.get_gtype(&self) @extern("gdk_content_deserializer_get_gtype");

<* Maps to get_input_stream *>
extern fn gio::InputStream* ContentDeserializer.get_input_stream(&self) @extern("gdk_content_deserializer_get_input_stream");

<* Maps to get_mime_type *>
extern fn ZString ContentDeserializer.get_mime_type(&self) @extern("gdk_content_deserializer_get_mime_type");

<* Maps to get_priority *>
extern fn int ContentDeserializer.get_priority(&self) @extern("gdk_content_deserializer_get_priority");

<* Maps to get_task_data *>
extern fn void* ContentDeserializer.get_task_data(&self) @extern("gdk_content_deserializer_get_task_data");

<* Maps to get_user_data *>
extern fn void* ContentDeserializer.get_user_data(&self) @extern("gdk_content_deserializer_get_user_data");

<* Maps to get_value *>
extern fn gobject::Value* ContentDeserializer.get_value(&self) @extern("gdk_content_deserializer_get_value");

<* Maps to return_error *>
extern fn void ContentDeserializer.return_error(&self, glib::Error* error) @extern("gdk_content_deserializer_return_error");

<* Maps to return_success *>
extern fn void ContentDeserializer.return_success(&self) @extern("gdk_content_deserializer_return_success");

<* Maps to set_task_data *>
extern fn void ContentDeserializer.set_task_data(&self, void* data, glib::DestroyNotify notify) @extern("gdk_content_deserializer_set_task_data");


<* Maps to GdkContentProvider *>
distinct ContentProvider = void*;

fn gobject::Object* ContentProvider.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to content_changed *>
extern fn void ContentProvider.content_changed(&self) @extern("gdk_content_provider_content_changed");

<* Maps to get_value *>
extern fn bool ContentProvider.get_value(&self, gobject::Value* value) @extern("gdk_content_provider_get_value");

<* Maps to ref_formats *>
extern fn ContentFormats* ContentProvider.ref_formats(&self) @extern("gdk_content_provider_ref_formats");

<* Maps to ref_storable_formats *>
extern fn ContentFormats* ContentProvider.ref_storable_formats(&self) @extern("gdk_content_provider_ref_storable_formats");

<* Maps to write_mime_type_async *>
extern fn void ContentProvider.write_mime_type_async(&self, ZString mime_type, gio::OutputStream* stream, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_content_provider_write_mime_type_async");

<* Maps to write_mime_type_finish *>
extern fn bool ContentProvider.write_mime_type_finish(&self, gio::AsyncResult* result) @extern("gdk_content_provider_write_mime_type_finish");


<* Maps to GdkContentSerializer *>
distinct ContentSerializer = void*;

fn gobject::Object* ContentSerializer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_cancellable *>
extern fn gio::Cancellable* ContentSerializer.get_cancellable(&self) @extern("gdk_content_serializer_get_cancellable");

<* Maps to get_gtype *>
extern fn usz ContentSerializer.get_gtype(&self) @extern("gdk_content_serializer_get_gtype");

<* Maps to get_mime_type *>
extern fn ZString ContentSerializer.get_mime_type(&self) @extern("gdk_content_serializer_get_mime_type");

<* Maps to get_output_stream *>
extern fn gio::OutputStream* ContentSerializer.get_output_stream(&self) @extern("gdk_content_serializer_get_output_stream");

<* Maps to get_priority *>
extern fn int ContentSerializer.get_priority(&self) @extern("gdk_content_serializer_get_priority");

<* Maps to get_task_data *>
extern fn void* ContentSerializer.get_task_data(&self) @extern("gdk_content_serializer_get_task_data");

<* Maps to get_user_data *>
extern fn void* ContentSerializer.get_user_data(&self) @extern("gdk_content_serializer_get_user_data");

<* Maps to get_value *>
extern fn gobject::Value* ContentSerializer.get_value(&self) @extern("gdk_content_serializer_get_value");

<* Maps to return_error *>
extern fn void ContentSerializer.return_error(&self, glib::Error* error) @extern("gdk_content_serializer_return_error");

<* Maps to return_success *>
extern fn void ContentSerializer.return_success(&self) @extern("gdk_content_serializer_return_success");

<* Maps to set_task_data *>
extern fn void ContentSerializer.set_task_data(&self, void* data, glib::DestroyNotify notify) @extern("gdk_content_serializer_set_task_data");


<* Maps to GdkCrossingEvent *>
distinct CrossingEvent = void*;

fn Event* CrossingEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_detail *>
extern fn NotifyType CrossingEvent.get_detail(&self) @extern("gdk_crossing_event_get_detail");

<* Maps to get_focus *>
extern fn bool CrossingEvent.get_focus(&self) @extern("gdk_crossing_event_get_focus");

<* Maps to get_mode *>
extern fn CrossingMode CrossingEvent.get_mode(&self) @extern("gdk_crossing_event_get_mode");


<* Maps to GdkCursor *>
distinct Cursor = void*;

fn gobject::Object* Cursor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_fallback *>
extern fn Cursor* Cursor.get_fallback(&self) @extern("gdk_cursor_get_fallback");

<* Maps to get_hotspot_x *>
extern fn int Cursor.get_hotspot_x(&self) @extern("gdk_cursor_get_hotspot_x");

<* Maps to get_hotspot_y *>
extern fn int Cursor.get_hotspot_y(&self) @extern("gdk_cursor_get_hotspot_y");

<* Maps to get_name *>
extern fn ZString Cursor.get_name(&self) @extern("gdk_cursor_get_name");

<* Maps to get_texture *>
extern fn Texture* Cursor.get_texture(&self) @extern("gdk_cursor_get_texture");


<* Maps to GdkDNDEvent *>
distinct DNDEvent = void*;

fn Event* DNDEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_drop *>
extern fn Drop* DNDEvent.get_drop(&self) @extern("gdk_dnd_event_get_drop");


<* Maps to GdkDeleteEvent *>
distinct DeleteEvent = void*;

fn Event* DeleteEvent.as_Event(&self) => (Event*)(self);



<* Maps to GdkDevice *>
distinct Device = void*;

fn gobject::Object* Device.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_caps_lock_state *>
extern fn bool Device.get_caps_lock_state(&self) @extern("gdk_device_get_caps_lock_state");

<* Maps to get_device_tool *>
extern fn DeviceTool* Device.get_device_tool(&self) @extern("gdk_device_get_device_tool");

<* Maps to get_direction *>
extern fn pango::Direction Device.get_direction(&self) @extern("gdk_device_get_direction");

<* Maps to get_display *>
extern fn Display* Device.get_display(&self) @extern("gdk_device_get_display");

<* Maps to get_has_cursor *>
extern fn bool Device.get_has_cursor(&self) @extern("gdk_device_get_has_cursor");

<* Maps to get_modifier_state *>
extern fn ModifierType Device.get_modifier_state(&self) @extern("gdk_device_get_modifier_state");

<* Maps to get_name *>
extern fn ZString Device.get_name(&self) @extern("gdk_device_get_name");

<* Maps to get_num_lock_state *>
extern fn bool Device.get_num_lock_state(&self) @extern("gdk_device_get_num_lock_state");

<* Maps to get_num_touches *>
extern fn uint Device.get_num_touches(&self) @extern("gdk_device_get_num_touches");

<* Maps to get_product_id *>
extern fn ZString Device.get_product_id(&self) @extern("gdk_device_get_product_id");

<* Maps to get_scroll_lock_state *>
extern fn bool Device.get_scroll_lock_state(&self) @extern("gdk_device_get_scroll_lock_state");

<* Maps to get_seat *>
extern fn Seat* Device.get_seat(&self) @extern("gdk_device_get_seat");

<* Maps to get_source *>
extern fn InputSource Device.get_source(&self) @extern("gdk_device_get_source");

<* Maps to get_surface_at_position *>
extern fn Surface* Device.get_surface_at_position(&self, double* win_x, double* win_y) @extern("gdk_device_get_surface_at_position");

<* Maps to get_timestamp *>
extern fn uint Device.get_timestamp(&self) @extern("gdk_device_get_timestamp");

<* Maps to get_vendor_id *>
extern fn ZString Device.get_vendor_id(&self) @extern("gdk_device_get_vendor_id");

<* Maps to has_bidi_layouts *>
extern fn bool Device.has_bidi_layouts(&self) @extern("gdk_device_has_bidi_layouts");


<* Maps to GdkDeviceTool *>
distinct DeviceTool = void*;

fn gobject::Object* DeviceTool.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_axes *>
extern fn AxisFlags DeviceTool.get_axes(&self) @extern("gdk_device_tool_get_axes");

<* Maps to get_hardware_id *>
extern fn ulong DeviceTool.get_hardware_id(&self) @extern("gdk_device_tool_get_hardware_id");

<* Maps to get_serial *>
extern fn ulong DeviceTool.get_serial(&self) @extern("gdk_device_tool_get_serial");

<* Maps to get_tool_type *>
extern fn DeviceToolType DeviceTool.get_tool_type(&self) @extern("gdk_device_tool_get_tool_type");


<* Maps to GdkDisplay *>
distinct Display = void*;

fn gobject::Object* Display.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to beep *>
extern fn void Display.beep(&self) @extern("gdk_display_beep");

<* Maps to close *>
extern fn void Display.close(&self) @extern("gdk_display_close");

<* Maps to create_gl_context *>
extern fn GLContext* Display.create_gl_context(&self) @extern("gdk_display_create_gl_context");

<* Maps to device_is_grabbed *>
extern fn bool Display.device_is_grabbed(&self, Device* device) @extern("gdk_display_device_is_grabbed");

<* Maps to flush *>
extern fn void Display.flush(&self) @extern("gdk_display_flush");

<* Maps to get_app_launch_context *>
extern fn AppLaunchContext* Display.get_app_launch_context(&self) @extern("gdk_display_get_app_launch_context");

<* Maps to get_clipboard *>
extern fn Clipboard* Display.get_clipboard(&self) @extern("gdk_display_get_clipboard");

<* Maps to get_default_seat *>
extern fn Seat* Display.get_default_seat(&self) @extern("gdk_display_get_default_seat");

<* Maps to get_dmabuf_formats *>
extern fn DmabufFormats* Display.get_dmabuf_formats(&self) @extern("gdk_display_get_dmabuf_formats");

<* Maps to get_monitor_at_surface *>
extern fn Monitor* Display.get_monitor_at_surface(&self, Surface* surface) @extern("gdk_display_get_monitor_at_surface");

<* Maps to get_monitors *>
extern fn gio::ListModel* Display.get_monitors(&self) @extern("gdk_display_get_monitors");

<* Maps to get_name *>
extern fn ZString Display.get_name(&self) @extern("gdk_display_get_name");

<* Maps to get_primary_clipboard *>
extern fn Clipboard* Display.get_primary_clipboard(&self) @extern("gdk_display_get_primary_clipboard");

<* Maps to get_setting *>
extern fn bool Display.get_setting(&self, ZString name, gobject::Value* value) @extern("gdk_display_get_setting");

<* Maps to get_startup_notification_id *>
extern fn ZString Display.get_startup_notification_id(&self) @extern("gdk_display_get_startup_notification_id");

<* Maps to is_closed *>
extern fn bool Display.is_closed(&self) @extern("gdk_display_is_closed");

<* Maps to is_composited *>
extern fn bool Display.is_composited(&self) @extern("gdk_display_is_composited");

<* Maps to is_rgba *>
extern fn bool Display.is_rgba(&self) @extern("gdk_display_is_rgba");

<* Maps to list_seats *>
extern fn glib::List* Display.list_seats(&self) @extern("gdk_display_list_seats");

<* Maps to map_keycode *>
extern fn bool Display.map_keycode(&self, uint keycode, KeymapKey* keys, uint* keyvals, int* n_entries) @extern("gdk_display_map_keycode");

<* Maps to map_keyval *>
extern fn bool Display.map_keyval(&self, uint keyval, KeymapKey* keys, int* n_keys) @extern("gdk_display_map_keyval");

<* Maps to notify_startup_complete *>
extern fn void Display.notify_startup_complete(&self, ZString startup_id) @extern("gdk_display_notify_startup_complete");

<* Maps to prepare_gl *>
extern fn bool Display.prepare_gl(&self) @extern("gdk_display_prepare_gl");

<* Maps to put_event *>
extern fn void Display.put_event(&self, Event* event) @extern("gdk_display_put_event");

<* Maps to supports_input_shapes *>
extern fn bool Display.supports_input_shapes(&self) @extern("gdk_display_supports_input_shapes");

<* Maps to supports_shadow_width *>
extern fn bool Display.supports_shadow_width(&self) @extern("gdk_display_supports_shadow_width");

<* Maps to sync *>
extern fn void Display.sync(&self) @extern("gdk_display_sync");

<* Maps to translate_key *>
extern fn bool Display.translate_key(&self, uint keycode, ModifierType state, int group, uint* keyval, int* effective_group, int* level, ModifierType* consumed) @extern("gdk_display_translate_key");


<* Maps to GdkDisplayManager *>
distinct DisplayManager = void*;

fn gobject::Object* DisplayManager.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_default_display *>
extern fn Display* DisplayManager.get_default_display(&self) @extern("gdk_display_manager_get_default_display");

<* Maps to list_displays *>
extern fn glib::SList* DisplayManager.list_displays(&self) @extern("gdk_display_manager_list_displays");

<* Maps to open_display *>
extern fn Display* DisplayManager.open_display(&self, ZString name) @extern("gdk_display_manager_open_display");

<* Maps to set_default_display *>
extern fn void DisplayManager.set_default_display(&self, Display* display) @extern("gdk_display_manager_set_default_display");


<* Maps to GdkDmabufTexture *>
distinct DmabufTexture = void*;

fn Texture* DmabufTexture.as_Texture(&self) => (Texture*)(self);



<* Maps to GdkDmabufTextureBuilder *>
distinct DmabufTextureBuilder = void*;

fn gobject::Object* DmabufTextureBuilder.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to build *>
extern fn Texture* DmabufTextureBuilder.build(&self, glib::DestroyNotify destroy, void* data) @extern("gdk_dmabuf_texture_builder_build");

<* Maps to get_color_state *>
extern fn ColorState* DmabufTextureBuilder.get_color_state(&self) @extern("gdk_dmabuf_texture_builder_get_color_state");

<* Maps to get_display *>
extern fn Display* DmabufTextureBuilder.get_display(&self) @extern("gdk_dmabuf_texture_builder_get_display");

<* Maps to get_fd *>
extern fn int DmabufTextureBuilder.get_fd(&self, uint plane) @extern("gdk_dmabuf_texture_builder_get_fd");

<* Maps to get_fourcc *>
extern fn uint DmabufTextureBuilder.get_fourcc(&self) @extern("gdk_dmabuf_texture_builder_get_fourcc");

<* Maps to get_height *>
extern fn uint DmabufTextureBuilder.get_height(&self) @extern("gdk_dmabuf_texture_builder_get_height");

<* Maps to get_modifier *>
extern fn ulong DmabufTextureBuilder.get_modifier(&self) @extern("gdk_dmabuf_texture_builder_get_modifier");

<* Maps to get_n_planes *>
extern fn uint DmabufTextureBuilder.get_n_planes(&self) @extern("gdk_dmabuf_texture_builder_get_n_planes");

<* Maps to get_offset *>
extern fn uint DmabufTextureBuilder.get_offset(&self, uint plane) @extern("gdk_dmabuf_texture_builder_get_offset");

<* Maps to get_premultiplied *>
extern fn bool DmabufTextureBuilder.get_premultiplied(&self) @extern("gdk_dmabuf_texture_builder_get_premultiplied");

<* Maps to get_stride *>
extern fn uint DmabufTextureBuilder.get_stride(&self, uint plane) @extern("gdk_dmabuf_texture_builder_get_stride");

<* Maps to get_update_region *>
extern fn cairo::Region* DmabufTextureBuilder.get_update_region(&self) @extern("gdk_dmabuf_texture_builder_get_update_region");

<* Maps to get_update_texture *>
extern fn Texture* DmabufTextureBuilder.get_update_texture(&self) @extern("gdk_dmabuf_texture_builder_get_update_texture");

<* Maps to get_width *>
extern fn uint DmabufTextureBuilder.get_width(&self) @extern("gdk_dmabuf_texture_builder_get_width");

<* Maps to set_color_state *>
extern fn void DmabufTextureBuilder.set_color_state(&self, ColorState* color_state) @extern("gdk_dmabuf_texture_builder_set_color_state");

<* Maps to set_display *>
extern fn void DmabufTextureBuilder.set_display(&self, Display* display) @extern("gdk_dmabuf_texture_builder_set_display");

<* Maps to set_fd *>
extern fn void DmabufTextureBuilder.set_fd(&self, uint plane, int fd) @extern("gdk_dmabuf_texture_builder_set_fd");

<* Maps to set_fourcc *>
extern fn void DmabufTextureBuilder.set_fourcc(&self, uint fourcc) @extern("gdk_dmabuf_texture_builder_set_fourcc");

<* Maps to set_height *>
extern fn void DmabufTextureBuilder.set_height(&self, uint height) @extern("gdk_dmabuf_texture_builder_set_height");

<* Maps to set_modifier *>
extern fn void DmabufTextureBuilder.set_modifier(&self, ulong modifier) @extern("gdk_dmabuf_texture_builder_set_modifier");

<* Maps to set_n_planes *>
extern fn void DmabufTextureBuilder.set_n_planes(&self, uint n_planes) @extern("gdk_dmabuf_texture_builder_set_n_planes");

<* Maps to set_offset *>
extern fn void DmabufTextureBuilder.set_offset(&self, uint plane, uint offset) @extern("gdk_dmabuf_texture_builder_set_offset");

<* Maps to set_premultiplied *>
extern fn void DmabufTextureBuilder.set_premultiplied(&self, bool premultiplied) @extern("gdk_dmabuf_texture_builder_set_premultiplied");

<* Maps to set_stride *>
extern fn void DmabufTextureBuilder.set_stride(&self, uint plane, uint stride) @extern("gdk_dmabuf_texture_builder_set_stride");

<* Maps to set_update_region *>
extern fn void DmabufTextureBuilder.set_update_region(&self, cairo::Region* region) @extern("gdk_dmabuf_texture_builder_set_update_region");

<* Maps to set_update_texture *>
extern fn void DmabufTextureBuilder.set_update_texture(&self, Texture* texture) @extern("gdk_dmabuf_texture_builder_set_update_texture");

<* Maps to set_width *>
extern fn void DmabufTextureBuilder.set_width(&self, uint width) @extern("gdk_dmabuf_texture_builder_set_width");


<* Maps to GdkDrag *>
distinct Drag = void*;

fn gobject::Object* Drag.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to drop_done *>
extern fn void Drag.drop_done(&self, bool success) @extern("gdk_drag_drop_done");

<* Maps to get_actions *>
extern fn DragAction Drag.get_actions(&self) @extern("gdk_drag_get_actions");

<* Maps to get_content *>
extern fn ContentProvider* Drag.get_content(&self) @extern("gdk_drag_get_content");

<* Maps to get_device *>
extern fn Device* Drag.get_device(&self) @extern("gdk_drag_get_device");

<* Maps to get_display *>
extern fn Display* Drag.get_display(&self) @extern("gdk_drag_get_display");

<* Maps to get_drag_surface *>
extern fn Surface* Drag.get_drag_surface(&self) @extern("gdk_drag_get_drag_surface");

<* Maps to get_formats *>
extern fn ContentFormats* Drag.get_formats(&self) @extern("gdk_drag_get_formats");

<* Maps to get_selected_action *>
extern fn DragAction Drag.get_selected_action(&self) @extern("gdk_drag_get_selected_action");

<* Maps to get_surface *>
extern fn Surface* Drag.get_surface(&self) @extern("gdk_drag_get_surface");

<* Maps to set_hotspot *>
extern fn void Drag.set_hotspot(&self, int hot_x, int hot_y) @extern("gdk_drag_set_hotspot");


<* Maps to GdkDrawContext *>
distinct DrawContext = void*;

fn gobject::Object* DrawContext.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to begin_frame *>
extern fn void DrawContext.begin_frame(&self, cairo::Region* region) @extern("gdk_draw_context_begin_frame");

<* Maps to end_frame *>
extern fn void DrawContext.end_frame(&self) @extern("gdk_draw_context_end_frame");

<* Maps to get_display *>
extern fn Display* DrawContext.get_display(&self) @extern("gdk_draw_context_get_display");

<* Maps to get_frame_region *>
extern fn cairo::Region* DrawContext.get_frame_region(&self) @extern("gdk_draw_context_get_frame_region");

<* Maps to get_surface *>
extern fn Surface* DrawContext.get_surface(&self) @extern("gdk_draw_context_get_surface");

<* Maps to is_in_frame *>
extern fn bool DrawContext.is_in_frame(&self) @extern("gdk_draw_context_is_in_frame");


<* Maps to GdkDrop *>
distinct Drop = void*;

fn gobject::Object* Drop.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to finish *>
extern fn void Drop.finish(&self, DragAction action) @extern("gdk_drop_finish");

<* Maps to get_actions *>
extern fn DragAction Drop.get_actions(&self) @extern("gdk_drop_get_actions");

<* Maps to get_device *>
extern fn Device* Drop.get_device(&self) @extern("gdk_drop_get_device");

<* Maps to get_display *>
extern fn Display* Drop.get_display(&self) @extern("gdk_drop_get_display");

<* Maps to get_drag *>
extern fn Drag* Drop.get_drag(&self) @extern("gdk_drop_get_drag");

<* Maps to get_formats *>
extern fn ContentFormats* Drop.get_formats(&self) @extern("gdk_drop_get_formats");

<* Maps to get_surface *>
extern fn Surface* Drop.get_surface(&self) @extern("gdk_drop_get_surface");

<* Maps to read_async *>
extern fn void Drop.read_async(&self, ZString mime_types, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_drop_read_async");

<* Maps to read_finish *>
extern fn gio::InputStream* Drop.read_finish(&self, gio::AsyncResult* result, ZString* out_mime_type) @extern("gdk_drop_read_finish");

<* Maps to read_value_async *>
extern fn void Drop.read_value_async(&self, usz type, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_drop_read_value_async");

<* Maps to read_value_finish *>
extern fn gobject::Value* Drop.read_value_finish(&self, gio::AsyncResult* result) @extern("gdk_drop_read_value_finish");

<* Maps to status *>
extern fn void Drop.status(&self, DragAction actions, DragAction preferred) @extern("gdk_drop_status");


<* Maps to GdkEvent *>
distinct Event = void*;


<* Maps to _get_angle *>
extern fn bool Event._get_angle(&self, Event* event2, double* angle) @extern("gdk_events_get_angle");

<* Maps to _get_center *>
extern fn bool Event._get_center(&self, Event* event2, double* x, double* y) @extern("gdk_events_get_center");

<* Maps to _get_distance *>
extern fn bool Event._get_distance(&self, Event* event2, double* distance) @extern("gdk_events_get_distance");

<* Maps to get_axes *>
extern fn bool Event.get_axes(&self, double* axes, uint* n_axes) @extern("gdk_event_get_axes");

<* Maps to get_axis *>
extern fn bool Event.get_axis(&self, AxisUse axis_use, double* value) @extern("gdk_event_get_axis");

<* Maps to get_device *>
extern fn Device* Event.get_device(&self) @extern("gdk_event_get_device");

<* Maps to get_device_tool *>
extern fn DeviceTool* Event.get_device_tool(&self) @extern("gdk_event_get_device_tool");

<* Maps to get_display *>
extern fn Display* Event.get_display(&self) @extern("gdk_event_get_display");

<* Maps to get_event_sequence *>
extern fn EventSequence* Event.get_event_sequence(&self) @extern("gdk_event_get_event_sequence");

<* Maps to get_event_type *>
extern fn EventType Event.get_event_type(&self) @extern("gdk_event_get_event_type");

<* Maps to get_history *>
extern fn TimeCoord Event.get_history(&self, uint* out_n_coords) @extern("gdk_event_get_history");

<* Maps to get_modifier_state *>
extern fn ModifierType Event.get_modifier_state(&self) @extern("gdk_event_get_modifier_state");

<* Maps to get_pointer_emulated *>
extern fn bool Event.get_pointer_emulated(&self) @extern("gdk_event_get_pointer_emulated");

<* Maps to get_position *>
extern fn bool Event.get_position(&self, double* x, double* y) @extern("gdk_event_get_position");

<* Maps to get_seat *>
extern fn Seat* Event.get_seat(&self) @extern("gdk_event_get_seat");

<* Maps to get_surface *>
extern fn Surface* Event.get_surface(&self) @extern("gdk_event_get_surface");

<* Maps to get_time *>
extern fn uint Event.get_time(&self) @extern("gdk_event_get_time");

<* Maps to ref *>
extern fn Event* Event.ref(&self) @extern("gdk_event_ref");

<* Maps to triggers_context_menu *>
extern fn bool Event.triggers_context_menu(&self) @extern("gdk_event_triggers_context_menu");

<* Maps to unref *>
extern fn void Event.unref(&self) @extern("gdk_event_unref");


<* Maps to GdkFocusEvent *>
distinct FocusEvent = void*;

fn Event* FocusEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_in *>
extern fn bool FocusEvent.get_in(&self) @extern("gdk_focus_event_get_in");


<* Maps to GdkFrameClock *>
distinct FrameClock = void*;

fn gobject::Object* FrameClock.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to begin_updating *>
extern fn void FrameClock.begin_updating(&self) @extern("gdk_frame_clock_begin_updating");

<* Maps to end_updating *>
extern fn void FrameClock.end_updating(&self) @extern("gdk_frame_clock_end_updating");

<* Maps to get_current_timings *>
extern fn FrameTimings* FrameClock.get_current_timings(&self) @extern("gdk_frame_clock_get_current_timings");

<* Maps to get_fps *>
extern fn double FrameClock.get_fps(&self) @extern("gdk_frame_clock_get_fps");

<* Maps to get_frame_counter *>
extern fn long FrameClock.get_frame_counter(&self) @extern("gdk_frame_clock_get_frame_counter");

<* Maps to get_frame_time *>
extern fn long FrameClock.get_frame_time(&self) @extern("gdk_frame_clock_get_frame_time");

<* Maps to get_history_start *>
extern fn long FrameClock.get_history_start(&self) @extern("gdk_frame_clock_get_history_start");

<* Maps to get_refresh_info *>
extern fn void FrameClock.get_refresh_info(&self, long base_time, long* refresh_interval_return, long* presentation_time_return) @extern("gdk_frame_clock_get_refresh_info");

<* Maps to get_timings *>
extern fn FrameTimings* FrameClock.get_timings(&self, long frame_counter) @extern("gdk_frame_clock_get_timings");

<* Maps to request_phase *>
extern fn void FrameClock.request_phase(&self, FrameClockPhase phase) @extern("gdk_frame_clock_request_phase");


<* Maps to GdkGLContext *>
distinct GLContext = void*;

fn DrawContext* GLContext.as_DrawContext(&self) => (DrawContext*)(self);


<* Maps to get_allowed_apis *>
extern fn Glapi GLContext.get_allowed_apis(&self) @extern("gdk_gl_context_get_allowed_apis");

<* Maps to get_api *>
extern fn Glapi GLContext.get_api(&self) @extern("gdk_gl_context_get_api");

<* Maps to get_debug_enabled *>
extern fn bool GLContext.get_debug_enabled(&self) @extern("gdk_gl_context_get_debug_enabled");

<* Maps to get_display *>
extern fn Display* GLContext.get_display(&self) @extern("gdk_gl_context_get_display");

<* Maps to get_forward_compatible *>
extern fn bool GLContext.get_forward_compatible(&self) @extern("gdk_gl_context_get_forward_compatible");

<* Maps to get_required_version *>
extern fn void GLContext.get_required_version(&self, int* major, int* minor) @extern("gdk_gl_context_get_required_version");

<* Maps to get_shared_context *>
extern fn GLContext* GLContext.get_shared_context(&self) @extern("gdk_gl_context_get_shared_context");

<* Maps to get_surface *>
extern fn Surface* GLContext.get_surface(&self) @extern("gdk_gl_context_get_surface");

<* Maps to get_use_es *>
extern fn bool GLContext.get_use_es(&self) @extern("gdk_gl_context_get_use_es");

<* Maps to get_version *>
extern fn void GLContext.get_version(&self, int* major, int* minor) @extern("gdk_gl_context_get_version");

<* Maps to is_legacy *>
extern fn bool GLContext.is_legacy(&self) @extern("gdk_gl_context_is_legacy");

<* Maps to is_shared *>
extern fn bool GLContext.is_shared(&self, GLContext* other) @extern("gdk_gl_context_is_shared");

<* Maps to make_current *>
extern fn void GLContext.make_current(&self) @extern("gdk_gl_context_make_current");

<* Maps to realize *>
extern fn bool GLContext.realize(&self) @extern("gdk_gl_context_realize");

<* Maps to set_allowed_apis *>
extern fn void GLContext.set_allowed_apis(&self, Glapi apis) @extern("gdk_gl_context_set_allowed_apis");

<* Maps to set_debug_enabled *>
extern fn void GLContext.set_debug_enabled(&self, bool enabled) @extern("gdk_gl_context_set_debug_enabled");

<* Maps to set_forward_compatible *>
extern fn void GLContext.set_forward_compatible(&self, bool compatible) @extern("gdk_gl_context_set_forward_compatible");

<* Maps to set_required_version *>
extern fn void GLContext.set_required_version(&self, int major, int minor) @extern("gdk_gl_context_set_required_version");

<* Maps to set_use_es *>
extern fn void GLContext.set_use_es(&self, int use_es) @extern("gdk_gl_context_set_use_es");


<* Maps to GdkGLTexture *>
distinct GLTexture = void*;

fn Texture* GLTexture.as_Texture(&self) => (Texture*)(self);


<* Maps to release *>
extern fn void GLTexture.release(&self) @extern("gdk_gl_texture_release");


<* Maps to GdkGLTextureBuilder *>
distinct GLTextureBuilder = void*;

fn gobject::Object* GLTextureBuilder.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to build *>
extern fn Texture* GLTextureBuilder.build(&self, glib::DestroyNotify destroy, void* data) @extern("gdk_gl_texture_builder_build");

<* Maps to get_color_state *>
extern fn ColorState* GLTextureBuilder.get_color_state(&self) @extern("gdk_gl_texture_builder_get_color_state");

<* Maps to get_context *>
extern fn GLContext* GLTextureBuilder.get_context(&self) @extern("gdk_gl_texture_builder_get_context");

<* Maps to get_format *>
extern fn MemoryFormat GLTextureBuilder.get_format(&self) @extern("gdk_gl_texture_builder_get_format");

<* Maps to get_has_mipmap *>
extern fn bool GLTextureBuilder.get_has_mipmap(&self) @extern("gdk_gl_texture_builder_get_has_mipmap");

<* Maps to get_height *>
extern fn int GLTextureBuilder.get_height(&self) @extern("gdk_gl_texture_builder_get_height");

<* Maps to get_id *>
extern fn uint GLTextureBuilder.get_id(&self) @extern("gdk_gl_texture_builder_get_id");

<* Maps to get_sync *>
extern fn void* GLTextureBuilder.get_sync(&self) @extern("gdk_gl_texture_builder_get_sync");

<* Maps to get_update_region *>
extern fn cairo::Region* GLTextureBuilder.get_update_region(&self) @extern("gdk_gl_texture_builder_get_update_region");

<* Maps to get_update_texture *>
extern fn Texture* GLTextureBuilder.get_update_texture(&self) @extern("gdk_gl_texture_builder_get_update_texture");

<* Maps to get_width *>
extern fn int GLTextureBuilder.get_width(&self) @extern("gdk_gl_texture_builder_get_width");

<* Maps to set_color_state *>
extern fn void GLTextureBuilder.set_color_state(&self, ColorState* color_state) @extern("gdk_gl_texture_builder_set_color_state");

<* Maps to set_context *>
extern fn void GLTextureBuilder.set_context(&self, GLContext* context) @extern("gdk_gl_texture_builder_set_context");

<* Maps to set_format *>
extern fn void GLTextureBuilder.set_format(&self, MemoryFormat format) @extern("gdk_gl_texture_builder_set_format");

<* Maps to set_has_mipmap *>
extern fn void GLTextureBuilder.set_has_mipmap(&self, bool has_mipmap) @extern("gdk_gl_texture_builder_set_has_mipmap");

<* Maps to set_height *>
extern fn void GLTextureBuilder.set_height(&self, int height) @extern("gdk_gl_texture_builder_set_height");

<* Maps to set_id *>
extern fn void GLTextureBuilder.set_id(&self, uint id) @extern("gdk_gl_texture_builder_set_id");

<* Maps to set_sync *>
extern fn void GLTextureBuilder.set_sync(&self, void* sync) @extern("gdk_gl_texture_builder_set_sync");

<* Maps to set_update_region *>
extern fn void GLTextureBuilder.set_update_region(&self, cairo::Region* region) @extern("gdk_gl_texture_builder_set_update_region");

<* Maps to set_update_texture *>
extern fn void GLTextureBuilder.set_update_texture(&self, Texture* texture) @extern("gdk_gl_texture_builder_set_update_texture");

<* Maps to set_width *>
extern fn void GLTextureBuilder.set_width(&self, int width) @extern("gdk_gl_texture_builder_set_width");


<* Maps to GdkGrabBrokenEvent *>
distinct GrabBrokenEvent = void*;

fn Event* GrabBrokenEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_grab_surface *>
extern fn Surface* GrabBrokenEvent.get_grab_surface(&self) @extern("gdk_grab_broken_event_get_grab_surface");

<* Maps to get_implicit *>
extern fn bool GrabBrokenEvent.get_implicit(&self) @extern("gdk_grab_broken_event_get_implicit");


<* Maps to GdkKeyEvent *>
distinct KeyEvent = void*;

fn Event* KeyEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_consumed_modifiers *>
extern fn ModifierType KeyEvent.get_consumed_modifiers(&self) @extern("gdk_key_event_get_consumed_modifiers");

<* Maps to get_keycode *>
extern fn uint KeyEvent.get_keycode(&self) @extern("gdk_key_event_get_keycode");

<* Maps to get_keyval *>
extern fn uint KeyEvent.get_keyval(&self) @extern("gdk_key_event_get_keyval");

<* Maps to get_layout *>
extern fn uint KeyEvent.get_layout(&self) @extern("gdk_key_event_get_layout");

<* Maps to get_level *>
extern fn uint KeyEvent.get_level(&self) @extern("gdk_key_event_get_level");

<* Maps to get_match *>
extern fn bool KeyEvent.get_match(&self, uint* keyval, ModifierType* modifiers) @extern("gdk_key_event_get_match");

<* Maps to is_modifier *>
extern fn bool KeyEvent.is_modifier(&self) @extern("gdk_key_event_is_modifier");

<* Maps to matches *>
extern fn KeyMatch KeyEvent.matches(&self, uint keyval, ModifierType modifiers) @extern("gdk_key_event_matches");


<* Maps to GdkMemoryTexture *>
distinct MemoryTexture = void*;

fn Texture* MemoryTexture.as_Texture(&self) => (Texture*)(self);



<* Maps to GdkMemoryTextureBuilder *>
distinct MemoryTextureBuilder = void*;

fn gobject::Object* MemoryTextureBuilder.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to build *>
extern fn Texture* MemoryTextureBuilder.build(&self) @extern("gdk_memory_texture_builder_build");

<* Maps to get_bytes *>
extern fn glib::Bytes* MemoryTextureBuilder.get_bytes(&self) @extern("gdk_memory_texture_builder_get_bytes");

<* Maps to get_color_state *>
extern fn ColorState* MemoryTextureBuilder.get_color_state(&self) @extern("gdk_memory_texture_builder_get_color_state");

<* Maps to get_format *>
extern fn MemoryFormat MemoryTextureBuilder.get_format(&self) @extern("gdk_memory_texture_builder_get_format");

<* Maps to get_height *>
extern fn int MemoryTextureBuilder.get_height(&self) @extern("gdk_memory_texture_builder_get_height");

<* Maps to get_stride *>
extern fn usz MemoryTextureBuilder.get_stride(&self) @extern("gdk_memory_texture_builder_get_stride");

<* Maps to get_update_region *>
extern fn cairo::Region* MemoryTextureBuilder.get_update_region(&self) @extern("gdk_memory_texture_builder_get_update_region");

<* Maps to get_update_texture *>
extern fn Texture* MemoryTextureBuilder.get_update_texture(&self) @extern("gdk_memory_texture_builder_get_update_texture");

<* Maps to get_width *>
extern fn int MemoryTextureBuilder.get_width(&self) @extern("gdk_memory_texture_builder_get_width");

<* Maps to set_bytes *>
extern fn void MemoryTextureBuilder.set_bytes(&self, glib::Bytes* bytes) @extern("gdk_memory_texture_builder_set_bytes");

<* Maps to set_color_state *>
extern fn void MemoryTextureBuilder.set_color_state(&self, ColorState* color_state) @extern("gdk_memory_texture_builder_set_color_state");

<* Maps to set_format *>
extern fn void MemoryTextureBuilder.set_format(&self, MemoryFormat format) @extern("gdk_memory_texture_builder_set_format");

<* Maps to set_height *>
extern fn void MemoryTextureBuilder.set_height(&self, int height) @extern("gdk_memory_texture_builder_set_height");

<* Maps to set_stride *>
extern fn void MemoryTextureBuilder.set_stride(&self, usz stride) @extern("gdk_memory_texture_builder_set_stride");

<* Maps to set_update_region *>
extern fn void MemoryTextureBuilder.set_update_region(&self, cairo::Region* region) @extern("gdk_memory_texture_builder_set_update_region");

<* Maps to set_update_texture *>
extern fn void MemoryTextureBuilder.set_update_texture(&self, Texture* texture) @extern("gdk_memory_texture_builder_set_update_texture");

<* Maps to set_width *>
extern fn void MemoryTextureBuilder.set_width(&self, int width) @extern("gdk_memory_texture_builder_set_width");


<* Maps to GdkMonitor *>
distinct Monitor = void*;

fn gobject::Object* Monitor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_connector *>
extern fn ZString Monitor.get_connector(&self) @extern("gdk_monitor_get_connector");

<* Maps to get_description *>
extern fn ZString Monitor.get_description(&self) @extern("gdk_monitor_get_description");

<* Maps to get_display *>
extern fn Display* Monitor.get_display(&self) @extern("gdk_monitor_get_display");

<* Maps to get_geometry *>
extern fn void Monitor.get_geometry(&self, Rectangle* geometry) @extern("gdk_monitor_get_geometry");

<* Maps to get_height_mm *>
extern fn int Monitor.get_height_mm(&self) @extern("gdk_monitor_get_height_mm");

<* Maps to get_manufacturer *>
extern fn ZString Monitor.get_manufacturer(&self) @extern("gdk_monitor_get_manufacturer");

<* Maps to get_model *>
extern fn ZString Monitor.get_model(&self) @extern("gdk_monitor_get_model");

<* Maps to get_refresh_rate *>
extern fn int Monitor.get_refresh_rate(&self) @extern("gdk_monitor_get_refresh_rate");

<* Maps to get_scale *>
extern fn double Monitor.get_scale(&self) @extern("gdk_monitor_get_scale");

<* Maps to get_scale_factor *>
extern fn int Monitor.get_scale_factor(&self) @extern("gdk_monitor_get_scale_factor");

<* Maps to get_subpixel_layout *>
extern fn SubpixelLayout Monitor.get_subpixel_layout(&self) @extern("gdk_monitor_get_subpixel_layout");

<* Maps to get_width_mm *>
extern fn int Monitor.get_width_mm(&self) @extern("gdk_monitor_get_width_mm");

<* Maps to is_valid *>
extern fn bool Monitor.is_valid(&self) @extern("gdk_monitor_is_valid");


<* Maps to GdkMotionEvent *>
distinct MotionEvent = void*;

fn Event* MotionEvent.as_Event(&self) => (Event*)(self);



<* Maps to GdkPadEvent *>
distinct PadEvent = void*;

fn Event* PadEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_axis_value *>
extern fn void PadEvent.get_axis_value(&self, uint* index, double* value) @extern("gdk_pad_event_get_axis_value");

<* Maps to get_button *>
extern fn uint PadEvent.get_button(&self) @extern("gdk_pad_event_get_button");

<* Maps to get_group_mode *>
extern fn void PadEvent.get_group_mode(&self, uint* group, uint* mode) @extern("gdk_pad_event_get_group_mode");


<* Maps to GdkProximityEvent *>
distinct ProximityEvent = void*;

fn Event* ProximityEvent.as_Event(&self) => (Event*)(self);



<* Maps to GdkScrollEvent *>
distinct ScrollEvent = void*;

fn Event* ScrollEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_deltas *>
extern fn void ScrollEvent.get_deltas(&self, double* delta_x, double* delta_y) @extern("gdk_scroll_event_get_deltas");

<* Maps to get_direction *>
extern fn ScrollDirection ScrollEvent.get_direction(&self) @extern("gdk_scroll_event_get_direction");

<* Maps to get_unit *>
extern fn ScrollUnit ScrollEvent.get_unit(&self) @extern("gdk_scroll_event_get_unit");

<* Maps to is_stop *>
extern fn bool ScrollEvent.is_stop(&self) @extern("gdk_scroll_event_is_stop");


<* Maps to GdkSeat *>
distinct Seat = void*;

fn gobject::Object* Seat.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_capabilities *>
extern fn SeatCapabilities Seat.get_capabilities(&self) @extern("gdk_seat_get_capabilities");

<* Maps to get_devices *>
extern fn glib::List* Seat.get_devices(&self, SeatCapabilities capabilities) @extern("gdk_seat_get_devices");

<* Maps to get_display *>
extern fn Display* Seat.get_display(&self) @extern("gdk_seat_get_display");

<* Maps to get_keyboard *>
extern fn Device* Seat.get_keyboard(&self) @extern("gdk_seat_get_keyboard");

<* Maps to get_pointer *>
extern fn Device* Seat.get_pointer(&self) @extern("gdk_seat_get_pointer");

<* Maps to get_tools *>
extern fn glib::List* Seat.get_tools(&self) @extern("gdk_seat_get_tools");


<* Maps to GdkSnapshot *>
distinct Snapshot = void*;

fn gobject::Object* Snapshot.as_gobject_Object(&self) => (gobject::Object*)(self);



<* Maps to GdkSurface *>
distinct Surface = void*;

fn gobject::Object* Surface.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to beep *>
extern fn void Surface.beep(&self) @extern("gdk_surface_beep");

<* Maps to create_cairo_context *>
extern fn CairoContext* Surface.create_cairo_context(&self) @extern("gdk_surface_create_cairo_context");

<* Maps to create_gl_context *>
extern fn GLContext* Surface.create_gl_context(&self) @extern("gdk_surface_create_gl_context");

<* Maps to create_vulkan_context *>
extern fn VulkanContext* Surface.create_vulkan_context(&self) @extern("gdk_surface_create_vulkan_context");

<* Maps to destroy *>
extern fn void Surface.destroy(&self) @extern("gdk_surface_destroy");

<* Maps to get_cursor *>
extern fn Cursor* Surface.get_cursor(&self) @extern("gdk_surface_get_cursor");

<* Maps to get_device_cursor *>
extern fn Cursor* Surface.get_device_cursor(&self, Device* device) @extern("gdk_surface_get_device_cursor");

<* Maps to get_device_position *>
extern fn bool Surface.get_device_position(&self, Device* device, double* x, double* y, ModifierType* mask) @extern("gdk_surface_get_device_position");

<* Maps to get_display *>
extern fn Display* Surface.get_display(&self) @extern("gdk_surface_get_display");

<* Maps to get_frame_clock *>
extern fn FrameClock* Surface.get_frame_clock(&self) @extern("gdk_surface_get_frame_clock");

<* Maps to get_height *>
extern fn int Surface.get_height(&self) @extern("gdk_surface_get_height");

<* Maps to get_mapped *>
extern fn bool Surface.get_mapped(&self) @extern("gdk_surface_get_mapped");

<* Maps to get_scale *>
extern fn double Surface.get_scale(&self) @extern("gdk_surface_get_scale");

<* Maps to get_scale_factor *>
extern fn int Surface.get_scale_factor(&self) @extern("gdk_surface_get_scale_factor");

<* Maps to get_width *>
extern fn int Surface.get_width(&self) @extern("gdk_surface_get_width");

<* Maps to hide *>
extern fn void Surface.hide(&self) @extern("gdk_surface_hide");

<* Maps to is_destroyed *>
extern fn bool Surface.is_destroyed(&self) @extern("gdk_surface_is_destroyed");

<* Maps to queue_render *>
extern fn void Surface.queue_render(&self) @extern("gdk_surface_queue_render");

<* Maps to request_layout *>
extern fn void Surface.request_layout(&self) @extern("gdk_surface_request_layout");

<* Maps to set_cursor *>
extern fn void Surface.set_cursor(&self, Cursor* cursor) @extern("gdk_surface_set_cursor");

<* Maps to set_device_cursor *>
extern fn void Surface.set_device_cursor(&self, Device* device, Cursor* cursor) @extern("gdk_surface_set_device_cursor");

<* Maps to set_input_region *>
extern fn void Surface.set_input_region(&self, cairo::Region* region) @extern("gdk_surface_set_input_region");

<* Maps to set_opaque_region *>
extern fn void Surface.set_opaque_region(&self, cairo::Region* region) @extern("gdk_surface_set_opaque_region");

<* Maps to translate_coordinates *>
extern fn bool Surface.translate_coordinates(&self, Surface* to, double* x, double* y) @extern("gdk_surface_translate_coordinates");


<* Maps to GdkTexture *>
distinct Texture = void*;

fn gobject::Object* Texture.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to download *>
extern fn void Texture.download(&self, char data, usz stride) @extern("gdk_texture_download");

<* Maps to get_color_state *>
extern fn ColorState* Texture.get_color_state(&self) @extern("gdk_texture_get_color_state");

<* Maps to get_format *>
extern fn MemoryFormat Texture.get_format(&self) @extern("gdk_texture_get_format");

<* Maps to get_height *>
extern fn int Texture.get_height(&self) @extern("gdk_texture_get_height");

<* Maps to get_width *>
extern fn int Texture.get_width(&self) @extern("gdk_texture_get_width");

<* Maps to save_to_png *>
extern fn bool Texture.save_to_png(&self, ZString filename) @extern("gdk_texture_save_to_png");

<* Maps to save_to_png_bytes *>
extern fn glib::Bytes* Texture.save_to_png_bytes(&self) @extern("gdk_texture_save_to_png_bytes");

<* Maps to save_to_tiff *>
extern fn bool Texture.save_to_tiff(&self, ZString filename) @extern("gdk_texture_save_to_tiff");

<* Maps to save_to_tiff_bytes *>
extern fn glib::Bytes* Texture.save_to_tiff_bytes(&self) @extern("gdk_texture_save_to_tiff_bytes");


<* Maps to GdkTouchEvent *>
distinct TouchEvent = void*;

fn Event* TouchEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_emulating_pointer *>
extern fn bool TouchEvent.get_emulating_pointer(&self) @extern("gdk_touch_event_get_emulating_pointer");


<* Maps to GdkTouchpadEvent *>
distinct TouchpadEvent = void*;

fn Event* TouchpadEvent.as_Event(&self) => (Event*)(self);


<* Maps to get_deltas *>
extern fn void TouchpadEvent.get_deltas(&self, double* dx, double* dy) @extern("gdk_touchpad_event_get_deltas");

<* Maps to get_gesture_phase *>
extern fn TouchpadGesturePhase TouchpadEvent.get_gesture_phase(&self) @extern("gdk_touchpad_event_get_gesture_phase");

<* Maps to get_n_fingers *>
extern fn uint TouchpadEvent.get_n_fingers(&self) @extern("gdk_touchpad_event_get_n_fingers");

<* Maps to get_pinch_angle_delta *>
extern fn double TouchpadEvent.get_pinch_angle_delta(&self) @extern("gdk_touchpad_event_get_pinch_angle_delta");

<* Maps to get_pinch_scale *>
extern fn double TouchpadEvent.get_pinch_scale(&self) @extern("gdk_touchpad_event_get_pinch_scale");


<* Maps to GdkVulkanContext *>
distinct VulkanContext = void*;

fn DrawContext* VulkanContext.as_DrawContext(&self) => (DrawContext*)(self);





<* Maps to GdkDevicePad *>
interface DevicePad {

  fn int get_feature_group(DevicePadFeature feature, int feature_idx);

  fn int get_group_n_modes(int group_idx);

  fn int get_n_features(DevicePadFeature feature);

  fn int get_n_groups();

}

<* Maps to GdkDragSurface *>
interface DragSurface {

  fn bool present(int width, int height);

}

<* Maps to GdkPaintable *>
interface Paintable {

  fn void compute_concrete_size(double specified_width, double specified_height, double default_width, double default_height, double* concrete_width, double* concrete_height);

  fn Paintable* get_current_image();

  fn PaintableFlags get_flags();

  fn double get_intrinsic_aspect_ratio();

  fn int get_intrinsic_height();

  fn int get_intrinsic_width();

  fn void invalidate_contents();

  fn void invalidate_size();

  fn void snapshot(Snapshot* snapshot, double width, double height);

}

<* Maps to GdkPopup *>
interface Popup {

  fn bool get_autohide();

  fn Surface* get_parent();

  fn int get_position_x();

  fn int get_position_y();

  fn Gravity get_rect_anchor();

  fn Gravity get_surface_anchor();

  fn bool present(int width, int height, PopupLayout* layout);

}

<* Maps to GdkToplevel *>
interface Toplevel {

  fn void begin_move(Device* device, int button, double x, double y, uint timestamp);

  fn void begin_resize(SurfaceEdge edge, Device* device, int button, double x, double y, uint timestamp);

  fn void focus(uint timestamp);

  fn ToplevelState get_state();

  fn void inhibit_system_shortcuts(Event* event);

  fn bool lower();

  fn bool minimize();

  fn void present(ToplevelLayout* layout);

  fn void restore_system_shortcuts();

  fn void set_decorated(bool decorated);

  fn void set_deletable(bool deletable);

  fn void set_icon_list(glib::List* surfaces);

  fn void set_modal(bool modal);

  fn void set_startup_id(ZString startup_id);

  fn void set_title(ZString title);

  fn void set_transient_for(Surface* parent);

  fn bool show_window_menu(Event* event);

  fn bool supports_edge_constraints();

  fn bool titlebar_gesture(TitlebarGesture gesture);

}
    
///END MODULE gdk
