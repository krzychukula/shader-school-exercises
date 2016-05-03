//Now all floats are high precision
precision highp float;

void sideLengths(
  highp float hypotenuse,
  highp float angleInDegrees,
  out highp float opposite,
  out highp float adjacent) {


  //TODO: Calculate side lengths here
  float angle = radians(angleInDegrees);

  opposite = hypotenuse * sin(angle);
  adjacent = hypotenuse * cos(angle);
}

//Do not change this line
#pragma glslify: export(sideLengths)
