OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

// Model Level Inputs
uniform mat4 worldViewProj;

// Vertex Inputs
//in vec4 position;
//in vec2 texCoord0;
 
// Outputs
// out vec4 oPosition;
// out vec2 uv0;

MAIN_PARAMETERS
IN(vec4 pos, POSITION)
IN(vec4 uv, TEXCOORD0);
OUT(vec4 v_texcoord, 0)
MAIN_DECLARATION
{
  // Calculate output position
  //oPosition = worldViewProj * position;
  gl_Position = worldViewProj * pos;
 
  // Simply copy the input vertex UV to the output
  //uv0 = texCoord0;
  v_texcoord = uv;
}
