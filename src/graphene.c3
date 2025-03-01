
///START MODULE graphene
module graphene;

import gobject;


enum EulerOrder : int (inline int s) {
  DEFAULT = -1,
  RXYX = 19,
  RXYZ = 28,
  RXZX = 21,
  RXZY = 22,
  RYXY = 25,
  RYXZ = 26,
  RYZX = 20,
  RYZY = 23,
  RZXY = 24,
  RZXZ = 27,
  RZYX = 18,
  RZYZ = 29,
  SXYX = 7,
  SXYZ = 6,
  SXZX = 9,
  SXZY = 8,
  SYXY = 13,
  SYXZ = 12,
  SYZX = 10,
  SYZY = 11,
  SZXY = 14,
  SZXZ = 15,
  SZYX = 16,
  SZYZ = 17,
  XYZ = 0,
  XZY = 3,
  YXZ = 4,
  YZX = 1,
  ZXY = 2,
  ZYX = 5,
}

enum RayIntersectionKind : int (inline int s) {
  ENTER = 1,
  LEAVE = 2,
  NONE = 0,
}



distinct Box = void*;

distinct Euler = void*;

distinct Frustum = void*;

distinct Matrix = void*;

distinct Plane = void*;

distinct Point = void*;

distinct Point3D = void*;

distinct Quad = void*;

distinct Quaternion = void*;

distinct Ray = void*;

distinct Rect = void*;

distinct Simd4F = void*;

distinct Simd4X4F = void*;

distinct Size = void*;

distinct Sphere = void*;

distinct Triangle = void*;

distinct Vec2 = void*;

distinct Vec3 = void*;

distinct Vec4 = void*;




    
///END MODULE graphene
