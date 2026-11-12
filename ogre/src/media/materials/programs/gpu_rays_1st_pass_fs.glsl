OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

uniform float retro;

uniform float near;
uniform float far;
uniform float max;
uniform float min;

MAIN_PARAMETERS
IN(vec4 point, 0)
MAIN_DECLARATION
{
  float l = length(point.xyz);

  if (l > far)
    l = max;
  if (l < near)
    l = min;

  gl_FragColor = vec4(l, retro, 0, 1.0);
}
