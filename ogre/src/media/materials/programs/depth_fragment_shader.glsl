OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

uniform float pNear;
uniform float pFar;

MAIN_PARAMETERS
IN(float depth, 0)
MAIN_DECLARATION
{
  // This normalizes the depth value
  // gl_FragColor = vec4(vec3(depth / (pFar - pNear)), 1.0);

  // This returns the world position
  gl_FragColor = vec4(vec3(depth), 1.0);
}
