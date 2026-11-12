OGRE_NATIVE_GLSL_VERSION_DIRECTIVE
#include "OgreUnifiedShader.h"

uniform sampler2D tex1;
uniform sampler2D tex2;
uniform sampler2D tex3;

uniform vec4 texSize;

MAIN_PARAMETERS
IN(float tex, 0)
IN(vec4 v_texcoord, 1)
MAIN_DECLARATION
{
  if ((v_texcoord.s < 0.0) || (v_texcoord.s > 1.0) ||
      (v_texcoord.t < 0.0) || (v_texcoord.t > 1.0))
    gl_FragColor = vec4(1,1,1,1);
  else
  {
    int int_tex = int(tex * 1000.0);
    if (int_tex == 0)
      //gl_FragColor=vec4(12,34,56,1);
      gl_FragColor = texture2D( tex1, v_texcoord.st);
    else
      if (int_tex == 1)
        //gl_FragColor=vec4(2,1,0,1);
        gl_FragColor = texture2D( tex2, v_texcoord.st);
      else
        //gl_FragColor=vec4(3,2,1,1);
        gl_FragColor = texture2D( tex3, v_texcoord.st);
   }
}
