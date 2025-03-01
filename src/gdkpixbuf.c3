
///START MODULE gdkpixbuf
module gdkpixbuf;

import gobject;

import glib;

import gmodule;

import gio;


enum PixbufFormatFlags : int (inline int s) {
  SCALABLE = 2,
  THREADSAFE = 4,
  WRITABLE = 1,
}

enum Colorspace : int (inline int s) {
  RGB = 0,
}

enum InterpType : int (inline int s) {
  BILINEAR = 2,
  HYPER = 3,
  NEAREST = 0,
  TILES = 1,
}

enum PixbufAlphaMode : int (inline int s) {
  BILEVEL = 0,
  FULL = 1,
}

enum PixbufError : int (inline int s) {
  BAD_OPTION = 2,
  CORRUPT_IMAGE = 0,
  FAILED = 5,
  INCOMPLETE_ANIMATION = 6,
  INSUFFICIENT_MEMORY = 1,
  UNKNOWN_TYPE = 3,
  UNSUPPORTED_OPERATION = 4,
}

enum PixbufRotation : int (inline int s) {
  CLOCKWISE = 270,
  COUNTERCLOCKWISE = 90,
  NONE = 0,
  UPSIDEDOWN = 180,
}



distinct PixbufAnimationClass = void*;

distinct PixbufAnimationIterClass = void*;

distinct PixbufFormat = void*;

distinct PixbufLoaderClass = void*;

distinct PixbufModule = void*;

distinct PixbufModulePattern = void*;

distinct PixbufSimpleAnimClass = void*;


def PixbufDestroyNotify = fn void(char pixels, void* data);

def PixbufModuleBeginLoadFunc = fn void*(PixbufModuleSizeFunc size_func, PixbufModulePreparedFunc prepared_func, PixbufModuleUpdatedFunc updated_func, void* user_data);

def PixbufModuleFillInfoFunc = fn void(PixbufFormat* info);

def PixbufModuleFillVtableFunc = fn void(PixbufModule* _module);

def PixbufModuleIncrementLoadFunc = fn bool(void* context, char buf, uint size);

def PixbufModuleLoadAnimationFunc = fn PixbufAnimation*(void* f);

def PixbufModuleLoadFunc = fn Pixbuf*(void* f);

def PixbufModuleLoadXpmDataFunc = fn Pixbuf*(ZString* data);

def PixbufModulePreparedFunc = fn void(Pixbuf* pixbuf, PixbufAnimation* anim, void* user_data);

def PixbufModuleSaveCallbackFunc = fn bool(PixbufSaveFunc save_func, void* user_data, Pixbuf* pixbuf, ZString* option_keys, ZString* option_values);

def PixbufModuleSaveFunc = fn bool(void* f, Pixbuf* pixbuf, ZString* param_keys, ZString* param_values);

def PixbufModuleSaveOptionSupportedFunc = fn bool(ZString option_key);

def PixbufModuleSizeFunc = fn void(int* width, int* height, void* user_data);

def PixbufModuleStopLoadFunc = fn bool(void* context);

def PixbufModuleUpdatedFunc = fn void(Pixbuf* pixbuf, int x, int y, int width, int height, void* user_data);

def PixbufSaveFunc = fn bool(char buf, usz count, glib::Error* error, void* data);


<* Maps to GdkPixbuf *>
distinct Pixbuf = void*;

fn gobject::Object* Pixbuf.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_alpha *>
extern fn Pixbuf* Pixbuf.add_alpha(&self, bool substitute_color, char r, char g, char b) @extern("gdk_pixbuf_add_alpha");

<* Maps to apply_embedded_orientation *>
extern fn Pixbuf* Pixbuf.apply_embedded_orientation(&self) @extern("gdk_pixbuf_apply_embedded_orientation");

<* Maps to composite *>
extern fn void Pixbuf.composite(&self, Pixbuf* dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, int overall_alpha) @extern("gdk_pixbuf_composite");

<* Maps to composite_color *>
extern fn void Pixbuf.composite_color(&self, Pixbuf* dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, int overall_alpha, int check_x, int check_y, int check_size, uint color1, uint color2) @extern("gdk_pixbuf_composite_color");

<* Maps to composite_color_simple *>
extern fn Pixbuf* Pixbuf.composite_color_simple(&self, int dest_width, int dest_height, InterpType interp_type, int overall_alpha, int check_size, uint color1, uint color2) @extern("gdk_pixbuf_composite_color_simple");

<* Maps to copy *>
extern fn Pixbuf* Pixbuf.copy(&self) @extern("gdk_pixbuf_copy");

<* Maps to copy_area *>
extern fn void Pixbuf.copy_area(&self, int src_x, int src_y, int width, int height, Pixbuf* dest_pixbuf, int dest_x, int dest_y) @extern("gdk_pixbuf_copy_area");

<* Maps to copy_options *>
extern fn bool Pixbuf.copy_options(&self, Pixbuf* dest_pixbuf) @extern("gdk_pixbuf_copy_options");

<* Maps to fill *>
extern fn void Pixbuf.fill(&self, uint pixel) @extern("gdk_pixbuf_fill");

<* Maps to flip *>
extern fn Pixbuf* Pixbuf.flip(&self, bool horizontal) @extern("gdk_pixbuf_flip");

<* Maps to get_bits_per_sample *>
extern fn int Pixbuf.get_bits_per_sample(&self) @extern("gdk_pixbuf_get_bits_per_sample");

<* Maps to get_byte_length *>
extern fn usz Pixbuf.get_byte_length(&self) @extern("gdk_pixbuf_get_byte_length");

<* Maps to get_colorspace *>
extern fn Colorspace Pixbuf.get_colorspace(&self) @extern("gdk_pixbuf_get_colorspace");

<* Maps to get_has_alpha *>
extern fn bool Pixbuf.get_has_alpha(&self) @extern("gdk_pixbuf_get_has_alpha");

<* Maps to get_height *>
extern fn int Pixbuf.get_height(&self) @extern("gdk_pixbuf_get_height");

<* Maps to get_n_channels *>
extern fn int Pixbuf.get_n_channels(&self) @extern("gdk_pixbuf_get_n_channels");

<* Maps to get_option *>
extern fn ZString Pixbuf.get_option(&self, ZString key) @extern("gdk_pixbuf_get_option");

<* Maps to get_options *>
extern fn glib::HashTable* Pixbuf.get_options(&self) @extern("gdk_pixbuf_get_options");

<* Maps to get_pixels *>
extern fn char Pixbuf.get_pixels(&self) @extern("gdk_pixbuf_get_pixels");

<* Maps to get_pixels_with_length *>
extern fn char Pixbuf.get_pixels_with_length(&self, uint* length) @extern("gdk_pixbuf_get_pixels_with_length");

<* Maps to get_rowstride *>
extern fn int Pixbuf.get_rowstride(&self) @extern("gdk_pixbuf_get_rowstride");

<* Maps to get_width *>
extern fn int Pixbuf.get_width(&self) @extern("gdk_pixbuf_get_width");

<* Maps to new_subpixbuf *>
extern fn Pixbuf* Pixbuf.new_subpixbuf(&self, int src_x, int src_y, int width, int height) @extern("gdk_pixbuf_new_subpixbuf");

<* Maps to read_pixel_bytes *>
extern fn glib::Bytes* Pixbuf.read_pixel_bytes(&self) @extern("gdk_pixbuf_read_pixel_bytes");

<* Maps to read_pixels *>
extern fn char* Pixbuf.read_pixels(&self) @extern("gdk_pixbuf_read_pixels");

<* Maps to ref *>
extern fn Pixbuf* Pixbuf.ref(&self) @extern("gdk_pixbuf_ref");

<* Maps to remove_option *>
extern fn bool Pixbuf.remove_option(&self, ZString key) @extern("gdk_pixbuf_remove_option");

<* Maps to rotate_simple *>
extern fn Pixbuf* Pixbuf.rotate_simple(&self, PixbufRotation angle) @extern("gdk_pixbuf_rotate_simple");

<* Maps to saturate_and_pixelate *>
extern fn void Pixbuf.saturate_and_pixelate(&self, Pixbuf* dest, float saturation, bool pixelate) @extern("gdk_pixbuf_saturate_and_pixelate");

<* Maps to save *>
extern fn bool Pixbuf.save(&self, ZString filename, ZString type, glib::Error* error, any rest) @extern("gdk_pixbuf_save");

<* Maps to save_to_buffer *>
extern fn bool Pixbuf.save_to_buffer(&self, char buffer, usz* buffer_size, ZString type, glib::Error* error, any rest) @extern("gdk_pixbuf_save_to_buffer");

<* Maps to save_to_bufferv *>
extern fn bool Pixbuf.save_to_bufferv(&self, char buffer, usz* buffer_size, ZString type, ZString option_keys, ZString option_values) @extern("gdk_pixbuf_save_to_bufferv");

<* Maps to save_to_callback *>
extern fn bool Pixbuf.save_to_callback(&self, PixbufSaveFunc save_func, void* user_data, ZString type, glib::Error* error, any rest) @extern("gdk_pixbuf_save_to_callback");

<* Maps to save_to_callbackv *>
extern fn bool Pixbuf.save_to_callbackv(&self, PixbufSaveFunc save_func, void* user_data, ZString type, ZString option_keys, ZString option_values) @extern("gdk_pixbuf_save_to_callbackv");

<* Maps to save_to_stream *>
extern fn bool Pixbuf.save_to_stream(&self, gio::OutputStream* stream, ZString type, gio::Cancellable* cancellable, glib::Error* error, any rest) @extern("gdk_pixbuf_save_to_stream");

<* Maps to save_to_stream_async *>
extern fn void Pixbuf.save_to_stream_async(&self, gio::OutputStream* stream, ZString type, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data, any rest) @extern("gdk_pixbuf_save_to_stream_async");

<* Maps to save_to_streamv *>
extern fn bool Pixbuf.save_to_streamv(&self, gio::OutputStream* stream, ZString type, ZString option_keys, ZString option_values, gio::Cancellable* cancellable) @extern("gdk_pixbuf_save_to_streamv");

<* Maps to save_to_streamv_async *>
extern fn void Pixbuf.save_to_streamv_async(&self, gio::OutputStream* stream, ZString type, ZString option_keys, ZString option_values, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_pixbuf_save_to_streamv_async");

<* Maps to savev *>
extern fn bool Pixbuf.savev(&self, ZString filename, ZString type, ZString option_keys, ZString option_values) @extern("gdk_pixbuf_savev");

<* Maps to scale *>
extern fn void Pixbuf.scale(&self, Pixbuf* dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type) @extern("gdk_pixbuf_scale");

<* Maps to scale_simple *>
extern fn Pixbuf* Pixbuf.scale_simple(&self, int dest_width, int dest_height, InterpType interp_type) @extern("gdk_pixbuf_scale_simple");

<* Maps to set_option *>
extern fn bool Pixbuf.set_option(&self, ZString key, ZString value) @extern("gdk_pixbuf_set_option");

<* Maps to unref *>
extern fn void Pixbuf.unref(&self) @extern("gdk_pixbuf_unref");


<* Maps to GdkPixbufAnimation *>
distinct PixbufAnimation = void*;

fn gobject::Object* PixbufAnimation.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_height *>
extern fn int PixbufAnimation.get_height(&self) @extern("gdk_pixbuf_animation_get_height");

<* Maps to get_iter *>
extern fn PixbufAnimationIter* PixbufAnimation.get_iter(&self, glib::TimeVal* start_time) @extern("gdk_pixbuf_animation_get_iter");

<* Maps to get_static_image *>
extern fn Pixbuf* PixbufAnimation.get_static_image(&self) @extern("gdk_pixbuf_animation_get_static_image");

<* Maps to get_width *>
extern fn int PixbufAnimation.get_width(&self) @extern("gdk_pixbuf_animation_get_width");

<* Maps to is_static_image *>
extern fn bool PixbufAnimation.is_static_image(&self) @extern("gdk_pixbuf_animation_is_static_image");

<* Maps to ref *>
extern fn PixbufAnimation* PixbufAnimation.ref(&self) @extern("gdk_pixbuf_animation_ref");

<* Maps to unref *>
extern fn void PixbufAnimation.unref(&self) @extern("gdk_pixbuf_animation_unref");


<* Maps to GdkPixbufAnimationIter *>
distinct PixbufAnimationIter = void*;

fn gobject::Object* PixbufAnimationIter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to advance *>
extern fn bool PixbufAnimationIter.advance(&self, glib::TimeVal* current_time) @extern("gdk_pixbuf_animation_iter_advance");

<* Maps to get_delay_time *>
extern fn int PixbufAnimationIter.get_delay_time(&self) @extern("gdk_pixbuf_animation_iter_get_delay_time");

<* Maps to get_pixbuf *>
extern fn Pixbuf* PixbufAnimationIter.get_pixbuf(&self) @extern("gdk_pixbuf_animation_iter_get_pixbuf");

<* Maps to on_currently_loading_frame *>
extern fn bool PixbufAnimationIter.on_currently_loading_frame(&self) @extern("gdk_pixbuf_animation_iter_on_currently_loading_frame");


<* Maps to GdkPixbufLoader *>
distinct PixbufLoader = void*;

fn gobject::Object* PixbufLoader.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to close *>
extern fn bool PixbufLoader.close(&self) @extern("gdk_pixbuf_loader_close");

<* Maps to get_animation *>
extern fn PixbufAnimation* PixbufLoader.get_animation(&self) @extern("gdk_pixbuf_loader_get_animation");

<* Maps to get_format *>
extern fn PixbufFormat* PixbufLoader.get_format(&self) @extern("gdk_pixbuf_loader_get_format");

<* Maps to get_pixbuf *>
extern fn Pixbuf* PixbufLoader.get_pixbuf(&self) @extern("gdk_pixbuf_loader_get_pixbuf");

<* Maps to set_size *>
extern fn void PixbufLoader.set_size(&self, int width, int height) @extern("gdk_pixbuf_loader_set_size");

<* Maps to write *>
extern fn bool PixbufLoader.write(&self, char buf, usz count) @extern("gdk_pixbuf_loader_write");

<* Maps to write_bytes *>
extern fn bool PixbufLoader.write_bytes(&self, glib::Bytes* buffer) @extern("gdk_pixbuf_loader_write_bytes");


<* Maps to  *>
distinct PixbufNonAnim = void*;

fn PixbufAnimation* PixbufNonAnim.as_PixbufAnimation(&self) => (PixbufAnimation*)(self);



<* Maps to GdkPixbufSimpleAnim *>
distinct PixbufSimpleAnim = void*;

fn PixbufAnimation* PixbufSimpleAnim.as_PixbufAnimation(&self) => (PixbufAnimation*)(self);


<* Maps to add_frame *>
extern fn void PixbufSimpleAnim.add_frame(&self, Pixbuf* pixbuf) @extern("gdk_pixbuf_simple_anim_add_frame");

<* Maps to get_loop *>
extern fn bool PixbufSimpleAnim.get_loop(&self) @extern("gdk_pixbuf_simple_anim_get_loop");

<* Maps to set_loop *>
extern fn void PixbufSimpleAnim.set_loop(&self, bool loop) @extern("gdk_pixbuf_simple_anim_set_loop");


<* Maps to  *>
distinct PixbufSimpleAnimIter = void*;

fn PixbufAnimationIter* PixbufSimpleAnimIter.as_PixbufAnimationIter(&self) => (PixbufAnimationIter*)(self);




    
///END MODULE gdkpixbuf
