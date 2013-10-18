// GENERATED FILE //
#ifndef GL_ES
#define lowp
#define mediump
#define highp
#endif
uniform mat4 u_modelViewProject;
uniform vec3 u_cameraPos;
attribute vec3 a_position;
attribute vec2 a_texCoord0;
attribute float a_scale;
varying vec2 v_texCoord0;
varying vec4 v_color;
const vec3 y_hat = vec3(0.0, 1.0, 0.0);
vec3 buildBillboardOffset(vec3 particle_position, float camScale) {
 vec3 camVec = normalize(particle_position - u_cameraPos);
 vec3 right = cross(camVec, y_hat);
 vec3 up = cross(right, camVec);
 vec2 scales = a_scale * (a_texCoord0.xy - vec2(0.5)) * camScale;
 right = right * scales.x;
 up = up * scales.y;
 v_texCoord0 = a_texCoord0;
 return up + right;
}
uniform vec4 u_color;
uniform vec4 u_position;
uniform vec4 u_params;
attribute float a_speed;
attribute float a_tOffset;
attribute float a_index;
void main() {
 vec3 system_position = u_position.xyz;
 float radius = u_position.w;
 float elapsedTime = u_params.x + a_tOffset;
 float tModulus = u_params.y / a_speed;
 float spread = u_params.z;
 float camScale = u_params.w;
 float p = mod(elapsedTime, tModulus) / tModulus;
 vec3 dynamics = vec3(-cos(p * 2.0 * 3.1415926535897932384626433832795) * radius, 0.0, sin(p * 2.0 * 3.1415926535897932384626433832795) * radius);
 vec3 particle_position = system_position + a_position * spread + dynamics;
 vec3 billboard_offset = buildBillboardOffset(particle_position, camScale);
 v_color = u_color;
 gl_Position = u_modelViewProject * vec4(particle_position + billboard_offset, 1.0);
}

