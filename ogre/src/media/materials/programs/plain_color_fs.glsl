OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

uniform vec4 inColor;

MAIN_PARAMETERS
MAIN_DECLARATION
{
  gl_FragColor = inColor;
}
