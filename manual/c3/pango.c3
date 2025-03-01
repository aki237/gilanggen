module pango;

import gobject;

distinct Font = void*;

enum Direction {
  LTR,
  RTL,
  TTB_LTR,
  TTB_RTL,
  WEAK_LTR,
  WEAK_RTL,
  NEUTRAL
}

def Glyph = uint;
def GlyphUnit = int;

struct GlyphGeometry {
  GlyphUnit width;
  GlyphUnit x_offset;
  GlyphUnit y_offset;
}

struct GlyphVisAttr {
  bool is_cluster_start;
  bool is_color;
}

struct GlyphInfo {
  Glyph glyph;
  GlyphGeometry geometry;
  GlyphVisAttr attr;
}

distinct AttrList = void*;

distinct Context = void*;

fn gobject::Object* Context.as_gobject_Object(&self) => (gobject::Object*)(self);

enum EllipsizeMode: uint {
  NONE,
  START,
  MIDDLE,
  END
}

distinct FontDescription = void*;

distinct FontFace = void*;

fn gobject::Object* FontFace.as_gobject_Object(&self) => (gobject::Object*)(self);

distinct FontFamily = void*;

extern fn FontFace* FontFamily.get_face(&self, ZString name) @extern("pango_font_family_get_face");
extern fn ZString FontFamily.get_name(&self) @extern("pango_font_family_get_name");
extern fn bool FontFamily.is_monospace(&self) @extern("pango_font_family_is_monospace");
extern fn bool FontFamily.is_variable(&self) @extern("pango_font_family_is_variable");
fn gobject::Object* FontFamily.as_gobject_Object(&self) => (gobject::Object*)(self);

distinct FontMap = void*;

distinct Language = void*;

distinct Layout = void*;
fn gobject::Object* Layout.as_gobject_Object(&self) => (gobject::Object*)(self);

distinct TabArray = void*;

enum WrapMode {
  WORD,
  CHAR,
  WORD_CHAR,
  NONE
}
