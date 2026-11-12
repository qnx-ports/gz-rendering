OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

// Generic vertex shader for point sprites
// sets position and point size.
// Works for perspective and orthographic projection.

uniform mat4 worldviewproj_matrix;
uniform float size;

MAIN_PARAMETERS
IN(vec4 pos, POSITION)
IN(vec4 a_color, COLOUR)
OUT(vec4 v_frontColor, 0)
MAIN_DECLARATION
{
  gl_Position = worldviewproj_matrix * gl_Vertex;
  v_frontColor = a_color;
  gl_PointSize = size;
}
