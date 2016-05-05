precision highp float;

uniform float theta;

attribute vec2 position;

void main() {

  //TODO: rotate position by theta radians about the origin

  //ok I had to copy-paste this one from soulutions
  float c = cos(theta);
  float s = sin(theta);
  //this matrix is really magical for me, how am I supposed to know
  //that I have to create rotation matrix and even then
  //how am I supposed to figure out the order of cos and sin not to mention
  //the signs...
  mat2 rot = mat2(c, s, -s, c);

  gl_Position = vec4(rot * position, 0, 1.0);

}
