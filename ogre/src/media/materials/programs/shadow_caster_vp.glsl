OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

uniform mat4 world_view_proj_mat;
uniform vec4 texel_offsets;

MAIN_PARAMETERS
IN(vec4 pos, POSITION)
OUT(vec4 vertex_depth, 0)
MAIN_DECLARATION
{
  vertex_depth = world_view_proj_mat * pos;
  gl_Position = vertex_depth;
  gl_Position.xy += texel_offsets.zw * gl_Position.w;
}
