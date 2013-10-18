// GENERATED FILE //
#ifndef GL_ES
#define lowp
#define mediump
#define highp
#endif
#ifdef GL_ES
precision mediump float;
#endif
uniform float mask;
uniform sampler2D u_texture;
varying vec3 v_texCoords;
varying vec4 v_color;
void main ()
{
vec4 tmpvar_1;
  tmpvar_1 = texture2D (u_texture, v_texCoords.xy);
vec4 tmpvar_2;
  tmpvar_2.xyz = tmpvar_1.xyz;
  tmpvar_2.w = (tmpvar_1.w * max (0.0, (1.0 - (50.0 * max (0.0, (texture2D (u_texture, v_texCoords.zy).w - mask))))));
vec4 tmpvar_3;
  tmpvar_3 = (v_color * tmpvar_2);
  gl_FragColor = tmpvar_3;
}

