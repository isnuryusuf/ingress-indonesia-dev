// GENERATED FILE //
#ifndef GL_ES
#define lowp
#define mediump
#define highp
#endif
#ifdef GL_ES
precision mediump float;
#endif
uniform vec4 u_levelColor;
uniform vec4 u_teamColor;
uniform sampler2D u_texture;
varying vec2 v_texCoord0;
void main ()
{
vec4 tmpvar_1;
  tmpvar_1 = texture2D (u_texture, v_texCoord0);
  vec4 tmpvar_2;
  if ((v_texCoord0.y >= 0.7)) {
    tmpvar_2 = u_levelColor;
  } else {
    tmpvar_2 = u_teamColor;
  };
vec4 tmpvar_3;
  tmpvar_3 = (tmpvar_1 * tmpvar_2);
  gl_FragColor = tmpvar_3;
}

