
float LinearMotion(float t1, float t2, float time){
  return max(min(map(time, t1, t2, 0, 1), 1), 0);
}

float LinearEaseInMotion(float t1, float t2, float time){
  return sin(LinearMotion(t1, t2, time) * (PI / 2));
}

float LinearEaseOutMotion(float t1, float t2, float time){
  return cos(LinearMotion(t1, t2, time) * (PI/2) + PI) + 1;
}

float LinearEaseInEaseOutMotion(float t1, float t2, float time){
  return abs(cos(LinearMotion(t1, t2, time) * PI) - 1) / 2;
}
