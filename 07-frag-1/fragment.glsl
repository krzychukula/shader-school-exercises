precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)

void main() {

  //TODO: Replace this with a function that draws a circle at (256.5,256.5) with radius 128
  float radius = 128.0;
  vec2 center = vec2(256.5, 256.5);
  // vec2 lo = vec2(center.x - radius, center.y - radius);
  // vec2 hi = vec2(center.x + radius, center.y + radius);
  //
  // bool inBox = all(lessThanEqual(lo, gl_FragCoord.xy)) && all(lessThanEqual(gl_FragCoord.xy, hi));

  float x = gl_FragCoord.x - center.x;
  float y = gl_FragCoord.y - center.y;

  float d2 = x * x + y * y;
  float radius2 = radius * radius;

  bool inCircle = d2 < radius2;

  //float dist = length(center.xy - gl_FragCoord.xy);
  float dist = distance(center.xy, gl_FragCoord.xy);
  bool inCircleLength = dist < radius;

  if(inCircleLength) {
    gl_FragColor = CIRCLE_COLOR;
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }
}
