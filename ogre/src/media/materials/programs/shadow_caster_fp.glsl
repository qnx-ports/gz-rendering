OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

// uniform vec4 depth_range;

MAIN_PARAMETERS
IN(vec4 vertex_depth, 0)
MAIN_DECLARATION
{
  float depth = (vertex_depth.z) / vertex_depth.w;

  // Linear
  // float depth = (vertex_depth.z - depth_range.x) / depth_range.w;

  gl_FragColor = vec4(depth, depth, depth, 1.0);
}

