// GENERATED FILE //
#ifndef GL_ES
#define lowp
#define mediump
#define highp
#endif
#ifdef GL_ES
precision mediump float;
#endif
uniform sampler2D u_texture;
uniform vec4 u_color;
varying vec2 v_texCoord0;
void main ()
{
vec4 tmpvar_1;
  tmpvar_1 = texture2D (u_texture, v_texCoord0);
vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = tmpvar_1.xyz;
vec4 tmpvar_3;
  tmpvar_3 = mix (u_color, tmpvar_2, tmpvar_1.w);
  gl_FragColor = tmpvar_3;
}

