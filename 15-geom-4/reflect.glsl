vec3 rotatePoint(vec3 p, vec3 n, float theta) {
  return (
    p * cos(theta) + cross(n, p) *
    sin(theta) + n * dot(p, n) *
    (1.0 - cos(theta))
  );
}

highp mat4 reflection(highp vec3 n) {

  //TODO: Return a matrix that reflects all points about the plane passing through the origin with normal n

  //Copied from solutions, no idea how or why it works :(
  n = normalize(n);
  return mat4(1.0-2.0*n.x*n.x,    -2.0*n.y*n.x,    -2.0*n.z*n.x, 0,
                 -2.0*n.y*n.x, 1.0-2.0*n.y*n.y,    -2.0*n.z*n.y, 0,
                 -2.0*n.z*n.x,    -2.0*n.y*n.z, 1.0-2.0*n.z*n.z, 0,
                            0,               0,               0, 1);
}

#pragma glslify: export(reflection)
