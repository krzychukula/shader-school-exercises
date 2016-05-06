precision highp float;

attribute vec3 position;

uniform mat4 model, view, projection;

void main() {

  //TODO: Apply the model-view-projection matrix to `position`
  vec4 inTheWolrd = model * vec4(position, 1.0);
  vec4 inTheCameraView = view * inTheWolrd;
  vec4 InTheDeviceClipCoordinates = projection * inTheCameraView;

  gl_Position = InTheDeviceClipCoordinates;
}
