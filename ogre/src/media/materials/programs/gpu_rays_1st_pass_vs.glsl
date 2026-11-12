OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

MAIN_PARAMETERS
IN(vec4 pos, POSITION)
OUT(vec4 point, 0)
MAIN_DECLARATION
{
  gl_Position = ftransform();

  // Vertex in world space
  point = gl_ModelViewMatrix * pos;
}
