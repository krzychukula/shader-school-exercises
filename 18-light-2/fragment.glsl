precision mediump float;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform mat4 inverseModel;
uniform mat4 inverseView;
uniform mat4 inverseProjection;

uniform vec3 ambient;
uniform vec3 diffuse;
uniform vec3 lightDirection;

varying vec3 fragNormal;

void main() {
  float brightness = dot(fragNormal, lightDirection);
  gl_FragColor = vec4(ambient + diffuse * max(brightness, 0.0), 1);

}
