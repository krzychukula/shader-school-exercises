precision highp float;

attribute vec4 position;
attribute vec3 color;

//pass color to fragment shader
varying vec3 fragColor;

void main() {
  //Set fragColor variable for the
  //fragment shader output
  fragColor = color;

  gl_Position = position;
}
