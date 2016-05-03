
vec3 bisector(vec3 a, vec3 b) {
  return normalize(length(b) * a + length(a) * b);
}

highp vec2 func(highp vec2 a, highp vec2 b) {

  //TODO: Implement the exercise here
  vec3 a3 = vec3(a, 0);
  vec3 b3 = vec3(b, 0);
  vec3 result = bisector(a3, b3);

  return vec2(result.xy);
}

//Do not change this line
#pragma glslify: export(func)
