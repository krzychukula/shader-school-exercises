mat2 matrixPower(highp mat2 m, int n) {

  //Raise the matrix m to nth power

  // For example:
  //
  //  matrixPower(m, 2) = m * m

  if(n == 0) return mat2(1.0);
  mat2 p = m;
  for(int i = 1; i < 16; i++){
    //loops need static number of steps
    //so we have to use static number and escape fromt he inside
    if (i < n){
      p = p * m;
    } else {
      return p;
    }
  }
}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)
