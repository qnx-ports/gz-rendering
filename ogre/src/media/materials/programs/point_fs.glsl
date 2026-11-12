OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

MAIN_PARAMETERS
IN(vec4 v_frontColor, 0)
MAIN_DECLARATION
{
  gl_FragColor = v_frontColor;
}