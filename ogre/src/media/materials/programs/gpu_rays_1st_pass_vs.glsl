OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

uniform mat4 worldView;
uniform mat4 worldViewProj;

MAIN_PARAMETERS
IN(vec4 pos, POSITION)
OUT(vec4 point, 0)
MAIN_DECLARATION
{
  gl_Position = worldViewProj * pos;

  // Vertex in world space
  point = worldView * pos;
}
