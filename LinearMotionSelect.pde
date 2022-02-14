float LinearMotionSelect(float t1, float t2, float time, String mSelect) {
  float r = 0.0; 
  switch(mSelect) {
    case "LL":
    r = max(min(map(time, t1, t2, 0, 1), 1), 0);
    case "EL":
    r = sin(max(min(map(time, t1, t2, 0, 1), 1), 0) * (PI / 2));
    case "LE":
    r = cos(max(min(map(time, t1, t2, 0, 1), 1), 0) * (PI/2) + PI) + 1;
    case "EE":
    r = abs(cos(max(min(map(time, t1, t2, 0, 1), 1), 0) * PI) - 1) / 2;
  }
  return r;
}
