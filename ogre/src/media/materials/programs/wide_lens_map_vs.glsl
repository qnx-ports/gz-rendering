OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

// aspect ratio
uniform float ratio;
uniform mat4 worldViewProj;

MAIN_PARAMETERS
IN(vec4 pos, POSITION)
OUT(vec2 frag_pos, 0)
MAIN_DECLARATION
{
  gl_Position = worldViewProj * pos;

  // get normalized fragment coordinate (3D to 2D window space transformation)
  frag_pos = gl_Position.xy/gl_Position.w*vec2(-1.0,-1.0/ratio);
}
