// GENERATED FILE //
#ifndef GL_ES
#define lowp
#define mediump
#define highp
#endif
attribute vec2 a_position;
uniform float u_time;
uniform vec4 u_rect;
varying vec4 v_billboardCoordAndAlphas;
varying vec4 v_texCoord;
void main ()
{
  vec2 tmpvar_1;
  tmpvar_1.x = u_time;
  tmpvar_1.y = (u_time + 3.0);
  vec2 tmpvar_2;
  tmpvar_2 = ((vec2(mod (tmpvar_1, 6.0))) * 0.166667);
  v_billboardCoordAndAlphas.zw = sin((tmpvar_2 * 3.14159));
  vec2 tmpvar_3;
  tmpvar_3 = (0.5 * (a_position + vec2(1.0, 1.0)));
  v_texCoord = (((tmpvar_3.xyxy * mix (vec2(0.3, 0.3), vec2(0.06, 0.06), tmpvar_2).xxyy) + (vec4(0.3, -0.9, -0.3, -0.9) * tmpvar_2.xxyy)) + vec4(0.0, 0.0, 0.5, 0.5));
  v_billboardCoordAndAlphas.xy = a_position;
  vec4 tmpvar_4;
  tmpvar_4.zw = vec2(0.0, 1.0);
  tmpvar_4.xy = (u_rect.xy + (u_rect.zw * tmpvar_3));
  gl_Position = tmpvar_4;
}

