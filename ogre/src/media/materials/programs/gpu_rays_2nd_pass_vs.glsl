OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

MAIN_PARAMETERS
IN(vec4 pos, POSITION)
IN(vec4 uv, TEXCOORD0);
OUT(float tex, 0)
OUT(vec4 v_texcoord, 1)
MAIN_DECLARATION
{
  gl_Position = ftransform();
  tex = pos.x;
  v_texcoord = uv;
}
