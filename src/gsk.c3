
///START MODULE gsk
module gsk;

import glib;

import gobject;

import cairo;

import pango;

import gdk;

import graphene;


enum PathForeachFlags : int (inline int s) {
  CONIC = 4,
  CUBIC = 2,
  ONLY_LINES = 0,
  QUAD = 1,
}

enum BlendMode : int (inline int s) {
  COLOR = 12,
  COLOR_BURN = 7,
  COLOR_DODGE = 6,
  DARKEN = 4,
  DEFAULT = 0,
  DIFFERENCE = 10,
  EXCLUSION = 11,
  HARD_LIGHT = 8,
  HUE = 13,
  LIGHTEN = 5,
  LUMINOSITY = 15,
  MULTIPLY = 1,
  OVERLAY = 3,
  SATURATION = 14,
  SCREEN = 2,
  SOFT_LIGHT = 9,
}

enum Corner : int (inline int s) {
  BOTTOM_LEFT = 3,
  BOTTOM_RIGHT = 2,
  TOP_LEFT = 0,
  TOP_RIGHT = 1,
}

enum FillRule : int (inline int s) {
  EVEN_ODD = 1,
  WINDING = 0,
}

enum GLUniformType : int (inline int s) {
  BOOL = 4,
  FLOAT = 1,
  INT = 2,
  NONE = 0,
  UINT = 3,
  VEC2 = 5,
  VEC3 = 6,
  VEC4 = 7,
}

enum LineCap : int (inline int s) {
  BUTT = 0,
  ROUND = 1,
  SQUARE = 2,
}

enum LineJoin : int (inline int s) {
  BEVEL = 2,
  MITER = 0,
  ROUND = 1,
}

enum MaskMode : int (inline int s) {
  ALPHA = 0,
  INVERTED_ALPHA = 1,
  INVERTED_LUMINANCE = 3,
  LUMINANCE = 2,
}

enum PathDirection : int (inline int s) {
  FROM_END = 3,
  FROM_START = 0,
  TO_END = 2,
  TO_START = 1,
}

enum PathOperation : int (inline int s) {
  CLOSE = 1,
  CONIC = 5,
  CUBIC = 4,
  LINE = 2,
  MOVE = 0,
  QUAD = 3,
}

enum RenderNodeType : int (inline int s) {
  BLEND_NODE = 20,
  BLUR_NODE = 23,
  BORDER_NODE = 9,
  CAIRO_NODE = 2,
  CLIP_NODE = 17,
  COLOR_MATRIX_NODE = 15,
  COLOR_NODE = 3,
  CONIC_GRADIENT_NODE = 8,
  CONTAINER_NODE = 1,
  CROSS_FADE_NODE = 21,
  DEBUG_NODE = 24,
  FILL_NODE = 28,
  GL_SHADER_NODE = 25,
  INSET_SHADOW_NODE = 11,
  LINEAR_GRADIENT_NODE = 4,
  MASK_NODE = 27,
  NOT_A_RENDER_NODE = 0,
  OPACITY_NODE = 14,
  OUTSET_SHADOW_NODE = 12,
  RADIAL_GRADIENT_NODE = 6,
  REPEATING_LINEAR_GRADIENT_NODE = 5,
  REPEATING_RADIAL_GRADIENT_NODE = 7,
  REPEAT_NODE = 16,
  ROUNDED_CLIP_NODE = 18,
  SHADOW_NODE = 19,
  STROKE_NODE = 29,
  SUBSURFACE_NODE = 30,
  TEXTURE_NODE = 10,
  TEXTURE_SCALE_NODE = 26,
  TEXT_NODE = 22,
  TRANSFORM_NODE = 13,
}

enum ScalingFilter : int (inline int s) {
  LINEAR = 0,
  NEAREST = 1,
  TRILINEAR = 2,
}

enum SerializationError : int (inline int s) {
  INVALID_DATA = 2,
  UNSUPPORTED_FORMAT = 0,
  UNSUPPORTED_VERSION = 1,
}

enum TransformCategory : int (inline int s) {
  ANY = 1,
  IDENTITY = 6,
  TRANSFORM_CATEGORY_2D = 3,
  TRANSFORM_CATEGORY_2D_AFFINE = 4,
  TRANSFORM_CATEGORY_2D_TRANSLATE = 5,
  TRANSFORM_CATEGORY_3D = 2,
  UNKNOWN = 0,
}



distinct BroadwayRendererClass = void*;

distinct CairoRendererClass = void*;

distinct ColorStop = void*;

distinct GLRendererClass = void*;

distinct GLShaderClass = void*;

distinct ParseLocation = void*;

distinct Path = void*;

distinct PathBuilder = void*;

distinct PathMeasure = void*;

distinct PathPoint = void*;

distinct RendererClass = void*;

distinct RoundedRect = void*;

distinct ShaderArgsBuilder = void*;

distinct Shadow = void*;

distinct Stroke = void*;

distinct Transform = void*;

distinct VulkanRendererClass = void*;


def ParseErrorFunc = fn void(ParseLocation* start, ParseLocation* end, glib::Error* error, void* user_data);

def PathForeachFunc = fn bool(PathOperation op, graphene::Point* pts, usz n_pts, float weight, void* user_data);


<* Maps to GskBlendNode *>
distinct BlendNode = void*;

fn RenderNode* BlendNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_blend_mode *>
extern fn BlendMode BlendNode.get_blend_mode(&self) @extern("gsk_blend_node_get_blend_mode");

<* Maps to get_bottom_child *>
extern fn RenderNode* BlendNode.get_bottom_child(&self) @extern("gsk_blend_node_get_bottom_child");

<* Maps to get_top_child *>
extern fn RenderNode* BlendNode.get_top_child(&self) @extern("gsk_blend_node_get_top_child");


<* Maps to GskBlurNode *>
distinct BlurNode = void*;

fn RenderNode* BlurNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* BlurNode.get_child(&self) @extern("gsk_blur_node_get_child");

<* Maps to get_radius *>
extern fn float BlurNode.get_radius(&self) @extern("gsk_blur_node_get_radius");


<* Maps to GskBorderNode *>
distinct BorderNode = void*;

fn RenderNode* BorderNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_colors *>
extern fn gdk::Rgba* BorderNode.get_colors(&self) @extern("gsk_border_node_get_colors");

<* Maps to get_outline *>
extern fn RoundedRect* BorderNode.get_outline(&self) @extern("gsk_border_node_get_outline");

<* Maps to get_widths *>
extern fn float BorderNode.get_widths(&self) @extern("gsk_border_node_get_widths");


<* Maps to GskBroadwayRenderer *>
distinct BroadwayRenderer = void*;

fn Renderer* BroadwayRenderer.as_Renderer(&self) => (Renderer*)(self);



<* Maps to GskCairoNode *>
distinct CairoNode = void*;

fn RenderNode* CairoNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_draw_context *>
extern fn cairo::Context* CairoNode.get_draw_context(&self) @extern("gsk_cairo_node_get_draw_context");

<* Maps to get_surface *>
extern fn cairo::Surface* CairoNode.get_surface(&self) @extern("gsk_cairo_node_get_surface");


<* Maps to GskCairoRenderer *>
distinct CairoRenderer = void*;

fn Renderer* CairoRenderer.as_Renderer(&self) => (Renderer*)(self);



<* Maps to GskClipNode *>
distinct ClipNode = void*;

fn RenderNode* ClipNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* ClipNode.get_child(&self) @extern("gsk_clip_node_get_child");

<* Maps to get_clip *>
extern fn graphene::Rect* ClipNode.get_clip(&self) @extern("gsk_clip_node_get_clip");


<* Maps to GskColorMatrixNode *>
distinct ColorMatrixNode = void*;

fn RenderNode* ColorMatrixNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* ColorMatrixNode.get_child(&self) @extern("gsk_color_matrix_node_get_child");

<* Maps to get_color_matrix *>
extern fn graphene::Matrix* ColorMatrixNode.get_color_matrix(&self) @extern("gsk_color_matrix_node_get_color_matrix");

<* Maps to get_color_offset *>
extern fn graphene::Vec4* ColorMatrixNode.get_color_offset(&self) @extern("gsk_color_matrix_node_get_color_offset");


<* Maps to GskColorNode *>
distinct ColorNode = void*;

fn RenderNode* ColorNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_color *>
extern fn gdk::Rgba* ColorNode.get_color(&self) @extern("gsk_color_node_get_color");


<* Maps to GskConicGradientNode *>
distinct ConicGradientNode = void*;

fn RenderNode* ConicGradientNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_angle *>
extern fn float ConicGradientNode.get_angle(&self) @extern("gsk_conic_gradient_node_get_angle");

<* Maps to get_center *>
extern fn graphene::Point* ConicGradientNode.get_center(&self) @extern("gsk_conic_gradient_node_get_center");

<* Maps to get_color_stops *>
extern fn ColorStop ConicGradientNode.get_color_stops(&self, usz* n_stops) @extern("gsk_conic_gradient_node_get_color_stops");

<* Maps to get_n_color_stops *>
extern fn usz ConicGradientNode.get_n_color_stops(&self) @extern("gsk_conic_gradient_node_get_n_color_stops");

<* Maps to get_rotation *>
extern fn float ConicGradientNode.get_rotation(&self) @extern("gsk_conic_gradient_node_get_rotation");


<* Maps to GskContainerNode *>
distinct ContainerNode = void*;

fn RenderNode* ContainerNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* ContainerNode.get_child(&self, uint idx) @extern("gsk_container_node_get_child");

<* Maps to get_n_children *>
extern fn uint ContainerNode.get_n_children(&self) @extern("gsk_container_node_get_n_children");


<* Maps to GskCrossFadeNode *>
distinct CrossFadeNode = void*;

fn RenderNode* CrossFadeNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_end_child *>
extern fn RenderNode* CrossFadeNode.get_end_child(&self) @extern("gsk_cross_fade_node_get_end_child");

<* Maps to get_progress *>
extern fn float CrossFadeNode.get_progress(&self) @extern("gsk_cross_fade_node_get_progress");

<* Maps to get_start_child *>
extern fn RenderNode* CrossFadeNode.get_start_child(&self) @extern("gsk_cross_fade_node_get_start_child");


<* Maps to GskDebugNode *>
distinct DebugNode = void*;

fn RenderNode* DebugNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* DebugNode.get_child(&self) @extern("gsk_debug_node_get_child");

<* Maps to get_message *>
extern fn ZString DebugNode.get_message(&self) @extern("gsk_debug_node_get_message");


<* Maps to GskFillNode *>
distinct FillNode = void*;

fn RenderNode* FillNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* FillNode.get_child(&self) @extern("gsk_fill_node_get_child");

<* Maps to get_fill_rule *>
extern fn FillRule FillNode.get_fill_rule(&self) @extern("gsk_fill_node_get_fill_rule");

<* Maps to get_path *>
extern fn Path* FillNode.get_path(&self) @extern("gsk_fill_node_get_path");


<* Maps to GskGLRenderer *>
distinct GLRenderer = void*;

fn Renderer* GLRenderer.as_Renderer(&self) => (Renderer*)(self);



<* Maps to GskGLShader *>
distinct GLShader = void*;

fn gobject::Object* GLShader.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to compile *>
extern fn bool GLShader.compile(&self, Renderer* renderer) @extern("gsk_gl_shader_compile");

<* Maps to find_uniform_by_name *>
extern fn int GLShader.find_uniform_by_name(&self, ZString name) @extern("gsk_gl_shader_find_uniform_by_name");

<* Maps to format_args *>
extern fn glib::Bytes* GLShader.format_args(&self, any rest) @extern("gsk_gl_shader_format_args");

<* Maps to get_arg_bool *>
extern fn bool GLShader.get_arg_bool(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_bool");

<* Maps to get_arg_float *>
extern fn float GLShader.get_arg_float(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_float");

<* Maps to get_arg_int *>
extern fn int GLShader.get_arg_int(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_int");

<* Maps to get_arg_uint *>
extern fn uint GLShader.get_arg_uint(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_uint");

<* Maps to get_arg_vec2 *>
extern fn void GLShader.get_arg_vec2(&self, glib::Bytes* args, int idx, graphene::Vec2* out_value) @extern("gsk_gl_shader_get_arg_vec2");

<* Maps to get_arg_vec3 *>
extern fn void GLShader.get_arg_vec3(&self, glib::Bytes* args, int idx, graphene::Vec3* out_value) @extern("gsk_gl_shader_get_arg_vec3");

<* Maps to get_arg_vec4 *>
extern fn void GLShader.get_arg_vec4(&self, glib::Bytes* args, int idx, graphene::Vec4* out_value) @extern("gsk_gl_shader_get_arg_vec4");

<* Maps to get_args_size *>
extern fn usz GLShader.get_args_size(&self) @extern("gsk_gl_shader_get_args_size");

<* Maps to get_n_textures *>
extern fn int GLShader.get_n_textures(&self) @extern("gsk_gl_shader_get_n_textures");

<* Maps to get_n_uniforms *>
extern fn int GLShader.get_n_uniforms(&self) @extern("gsk_gl_shader_get_n_uniforms");

<* Maps to get_resource *>
extern fn ZString GLShader.get_resource(&self) @extern("gsk_gl_shader_get_resource");

<* Maps to get_source *>
extern fn glib::Bytes* GLShader.get_source(&self) @extern("gsk_gl_shader_get_source");

<* Maps to get_uniform_name *>
extern fn ZString GLShader.get_uniform_name(&self, int idx) @extern("gsk_gl_shader_get_uniform_name");

<* Maps to get_uniform_offset *>
extern fn int GLShader.get_uniform_offset(&self, int idx) @extern("gsk_gl_shader_get_uniform_offset");

<* Maps to get_uniform_type *>
extern fn GLUniformType GLShader.get_uniform_type(&self, int idx) @extern("gsk_gl_shader_get_uniform_type");


<* Maps to GskGLShaderNode *>
distinct GLShaderNode = void*;

fn RenderNode* GLShaderNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_args *>
extern fn glib::Bytes* GLShaderNode.get_args(&self) @extern("gsk_gl_shader_node_get_args");

<* Maps to get_child *>
extern fn RenderNode* GLShaderNode.get_child(&self, uint idx) @extern("gsk_gl_shader_node_get_child");

<* Maps to get_n_children *>
extern fn uint GLShaderNode.get_n_children(&self) @extern("gsk_gl_shader_node_get_n_children");

<* Maps to get_shader *>
extern fn GLShader* GLShaderNode.get_shader(&self) @extern("gsk_gl_shader_node_get_shader");


<* Maps to GskInsetShadowNode *>
distinct InsetShadowNode = void*;

fn RenderNode* InsetShadowNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_blur_radius *>
extern fn float InsetShadowNode.get_blur_radius(&self) @extern("gsk_inset_shadow_node_get_blur_radius");

<* Maps to get_color *>
extern fn gdk::Rgba* InsetShadowNode.get_color(&self) @extern("gsk_inset_shadow_node_get_color");

<* Maps to get_dx *>
extern fn float InsetShadowNode.get_dx(&self) @extern("gsk_inset_shadow_node_get_dx");

<* Maps to get_dy *>
extern fn float InsetShadowNode.get_dy(&self) @extern("gsk_inset_shadow_node_get_dy");

<* Maps to get_outline *>
extern fn RoundedRect* InsetShadowNode.get_outline(&self) @extern("gsk_inset_shadow_node_get_outline");

<* Maps to get_spread *>
extern fn float InsetShadowNode.get_spread(&self) @extern("gsk_inset_shadow_node_get_spread");


<* Maps to GskLinearGradientNode *>
distinct LinearGradientNode = void*;

fn RenderNode* LinearGradientNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_color_stops *>
extern fn ColorStop LinearGradientNode.get_color_stops(&self, usz* n_stops) @extern("gsk_linear_gradient_node_get_color_stops");

<* Maps to get_end *>
extern fn graphene::Point* LinearGradientNode.get_end(&self) @extern("gsk_linear_gradient_node_get_end");

<* Maps to get_n_color_stops *>
extern fn usz LinearGradientNode.get_n_color_stops(&self) @extern("gsk_linear_gradient_node_get_n_color_stops");

<* Maps to get_start *>
extern fn graphene::Point* LinearGradientNode.get_start(&self) @extern("gsk_linear_gradient_node_get_start");


<* Maps to GskMaskNode *>
distinct MaskNode = void*;

fn RenderNode* MaskNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_mask *>
extern fn RenderNode* MaskNode.get_mask(&self) @extern("gsk_mask_node_get_mask");

<* Maps to get_mask_mode *>
extern fn MaskMode MaskNode.get_mask_mode(&self) @extern("gsk_mask_node_get_mask_mode");

<* Maps to get_source *>
extern fn RenderNode* MaskNode.get_source(&self) @extern("gsk_mask_node_get_source");


<* Maps to  *>
distinct NglRenderer = void*;

fn Renderer* NglRenderer.as_Renderer(&self) => (Renderer*)(self);



<* Maps to GskOpacityNode *>
distinct OpacityNode = void*;

fn RenderNode* OpacityNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* OpacityNode.get_child(&self) @extern("gsk_opacity_node_get_child");

<* Maps to get_opacity *>
extern fn float OpacityNode.get_opacity(&self) @extern("gsk_opacity_node_get_opacity");


<* Maps to GskOutsetShadowNode *>
distinct OutsetShadowNode = void*;

fn RenderNode* OutsetShadowNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_blur_radius *>
extern fn float OutsetShadowNode.get_blur_radius(&self) @extern("gsk_outset_shadow_node_get_blur_radius");

<* Maps to get_color *>
extern fn gdk::Rgba* OutsetShadowNode.get_color(&self) @extern("gsk_outset_shadow_node_get_color");

<* Maps to get_dx *>
extern fn float OutsetShadowNode.get_dx(&self) @extern("gsk_outset_shadow_node_get_dx");

<* Maps to get_dy *>
extern fn float OutsetShadowNode.get_dy(&self) @extern("gsk_outset_shadow_node_get_dy");

<* Maps to get_outline *>
extern fn RoundedRect* OutsetShadowNode.get_outline(&self) @extern("gsk_outset_shadow_node_get_outline");

<* Maps to get_spread *>
extern fn float OutsetShadowNode.get_spread(&self) @extern("gsk_outset_shadow_node_get_spread");


<* Maps to GskRadialGradientNode *>
distinct RadialGradientNode = void*;

fn RenderNode* RadialGradientNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_center *>
extern fn graphene::Point* RadialGradientNode.get_center(&self) @extern("gsk_radial_gradient_node_get_center");

<* Maps to get_color_stops *>
extern fn ColorStop RadialGradientNode.get_color_stops(&self, usz* n_stops) @extern("gsk_radial_gradient_node_get_color_stops");

<* Maps to get_end *>
extern fn float RadialGradientNode.get_end(&self) @extern("gsk_radial_gradient_node_get_end");

<* Maps to get_hradius *>
extern fn float RadialGradientNode.get_hradius(&self) @extern("gsk_radial_gradient_node_get_hradius");

<* Maps to get_n_color_stops *>
extern fn usz RadialGradientNode.get_n_color_stops(&self) @extern("gsk_radial_gradient_node_get_n_color_stops");

<* Maps to get_start *>
extern fn float RadialGradientNode.get_start(&self) @extern("gsk_radial_gradient_node_get_start");

<* Maps to get_vradius *>
extern fn float RadialGradientNode.get_vradius(&self) @extern("gsk_radial_gradient_node_get_vradius");


<* Maps to GskRenderNode *>
distinct RenderNode = void*;


<* Maps to draw *>
extern fn void RenderNode.draw(&self, cairo::Context* cr) @extern("gsk_render_node_draw");

<* Maps to get_bounds *>
extern fn void RenderNode.get_bounds(&self, graphene::Rect* bounds) @extern("gsk_render_node_get_bounds");

<* Maps to get_node_type *>
extern fn RenderNodeType RenderNode.get_node_type(&self) @extern("gsk_render_node_get_node_type");

<* Maps to get_opaque_rect *>
extern fn bool RenderNode.get_opaque_rect(&self, graphene::Rect* out_opaque) @extern("gsk_render_node_get_opaque_rect");

<* Maps to ref *>
extern fn RenderNode* RenderNode.ref(&self) @extern("gsk_render_node_ref");

<* Maps to serialize *>
extern fn glib::Bytes* RenderNode.serialize(&self) @extern("gsk_render_node_serialize");

<* Maps to unref *>
extern fn void RenderNode.unref(&self) @extern("gsk_render_node_unref");

<* Maps to write_to_file *>
extern fn bool RenderNode.write_to_file(&self, ZString filename) @extern("gsk_render_node_write_to_file");


<* Maps to GskRenderer *>
distinct Renderer = void*;

fn gobject::Object* Renderer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_surface *>
extern fn gdk::Surface* Renderer.get_surface(&self) @extern("gsk_renderer_get_surface");

<* Maps to is_realized *>
extern fn bool Renderer.is_realized(&self) @extern("gsk_renderer_is_realized");

<* Maps to realize *>
extern fn bool Renderer.realize(&self, gdk::Surface* surface) @extern("gsk_renderer_realize");

<* Maps to realize_for_display *>
extern fn bool Renderer.realize_for_display(&self, gdk::Display* display) @extern("gsk_renderer_realize_for_display");

<* Maps to render *>
extern fn void Renderer.render(&self, RenderNode* root, cairo::Region* region) @extern("gsk_renderer_render");

<* Maps to render_texture *>
extern fn gdk::Texture* Renderer.render_texture(&self, RenderNode* root, graphene::Rect* viewport) @extern("gsk_renderer_render_texture");

<* Maps to unrealize *>
extern fn void Renderer.unrealize(&self) @extern("gsk_renderer_unrealize");


<* Maps to GskRepeatNode *>
distinct RepeatNode = void*;

fn RenderNode* RepeatNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* RepeatNode.get_child(&self) @extern("gsk_repeat_node_get_child");

<* Maps to get_child_bounds *>
extern fn graphene::Rect* RepeatNode.get_child_bounds(&self) @extern("gsk_repeat_node_get_child_bounds");


<* Maps to GskRepeatingLinearGradientNode *>
distinct RepeatingLinearGradientNode = void*;

fn RenderNode* RepeatingLinearGradientNode.as_RenderNode(&self) => (RenderNode*)(self);



<* Maps to GskRepeatingRadialGradientNode *>
distinct RepeatingRadialGradientNode = void*;

fn RenderNode* RepeatingRadialGradientNode.as_RenderNode(&self) => (RenderNode*)(self);



<* Maps to GskRoundedClipNode *>
distinct RoundedClipNode = void*;

fn RenderNode* RoundedClipNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* RoundedClipNode.get_child(&self) @extern("gsk_rounded_clip_node_get_child");

<* Maps to get_clip *>
extern fn RoundedRect* RoundedClipNode.get_clip(&self) @extern("gsk_rounded_clip_node_get_clip");


<* Maps to GskShadowNode *>
distinct ShadowNode = void*;

fn RenderNode* ShadowNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* ShadowNode.get_child(&self) @extern("gsk_shadow_node_get_child");

<* Maps to get_n_shadows *>
extern fn usz ShadowNode.get_n_shadows(&self) @extern("gsk_shadow_node_get_n_shadows");

<* Maps to get_shadow *>
extern fn Shadow* ShadowNode.get_shadow(&self, usz i) @extern("gsk_shadow_node_get_shadow");


<* Maps to GskStrokeNode *>
distinct StrokeNode = void*;

fn RenderNode* StrokeNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* StrokeNode.get_child(&self) @extern("gsk_stroke_node_get_child");

<* Maps to get_path *>
extern fn Path* StrokeNode.get_path(&self) @extern("gsk_stroke_node_get_path");

<* Maps to get_stroke *>
extern fn Stroke* StrokeNode.get_stroke(&self) @extern("gsk_stroke_node_get_stroke");


<* Maps to GskSubsurfaceNode *>
distinct SubsurfaceNode = void*;

fn RenderNode* SubsurfaceNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* SubsurfaceNode.get_child(&self) @extern("gsk_subsurface_node_get_child");


<* Maps to GskTextNode *>
distinct TextNode = void*;

fn RenderNode* TextNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_color *>
extern fn gdk::Rgba* TextNode.get_color(&self) @extern("gsk_text_node_get_color");

<* Maps to get_font *>
extern fn pango::Font* TextNode.get_font(&self) @extern("gsk_text_node_get_font");

<* Maps to get_glyphs *>
extern fn pango::GlyphInfo TextNode.get_glyphs(&self, uint* n_glyphs) @extern("gsk_text_node_get_glyphs");

<* Maps to get_num_glyphs *>
extern fn uint TextNode.get_num_glyphs(&self) @extern("gsk_text_node_get_num_glyphs");

<* Maps to get_offset *>
extern fn graphene::Point* TextNode.get_offset(&self) @extern("gsk_text_node_get_offset");

<* Maps to has_color_glyphs *>
extern fn bool TextNode.has_color_glyphs(&self) @extern("gsk_text_node_has_color_glyphs");


<* Maps to GskTextureNode *>
distinct TextureNode = void*;

fn RenderNode* TextureNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_texture *>
extern fn gdk::Texture* TextureNode.get_texture(&self) @extern("gsk_texture_node_get_texture");


<* Maps to GskTextureScaleNode *>
distinct TextureScaleNode = void*;

fn RenderNode* TextureScaleNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_filter *>
extern fn ScalingFilter TextureScaleNode.get_filter(&self) @extern("gsk_texture_scale_node_get_filter");

<* Maps to get_texture *>
extern fn gdk::Texture* TextureScaleNode.get_texture(&self) @extern("gsk_texture_scale_node_get_texture");


<* Maps to GskTransformNode *>
distinct TransformNode = void*;

fn RenderNode* TransformNode.as_RenderNode(&self) => (RenderNode*)(self);


<* Maps to get_child *>
extern fn RenderNode* TransformNode.get_child(&self) @extern("gsk_transform_node_get_child");

<* Maps to get_transform *>
extern fn Transform* TransformNode.get_transform(&self) @extern("gsk_transform_node_get_transform");


<* Maps to GskVulkanRenderer *>
distinct VulkanRenderer = void*;

fn Renderer* VulkanRenderer.as_Renderer(&self) => (Renderer*)(self);




    
///END MODULE gsk
