// GENERATED FILE //
#ifndef GL_ES
#define lowp
#define mediump
#define highp
#endif
#ifdef GL_ES
precision mediump float;
#endif
varying vec4 v_texCoord;
varying vec4 v_billboardCoordAndAlphas;
uniform sampler2D u_texture;
uniform vec2 u_yCuttoff;
uniform vec4 u_color;
void main() {
 float texColor1 = texture2D(u_texture, v_texCoord.xy).a * v_billboardCoordAndAlphas.z;
 float texColor2 = texture2D(u_texture, v_texCoord.zw).a * v_billboardCoordAndAlphas.w;
 float texColor = texColor1 + texColor2;
 float glow = 1.0 - smoothstep(0.0, 1.0, length(v_billboardCoordAndAlphas.xy));
 glow *= 1.0 - smoothstep(u_yCuttoff.x, u_yCuttoff.y, v_billboardCoordAndAlphas.y);
 gl_FragColor = vec4(u_color.rgb, u_color.a * glow * texColor);
}

