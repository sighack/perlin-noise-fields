void wobblycircle(float x, float y, float radius) {
  float radiusnoise = random(10);
  float prevx = -1, prevy = -1;
  float r = 0;
  for (int i = 0; i < 360 * 100; i++) {
    radiusnoise += 0.5;
    float rad = r + noise(radiusnoise)*100;
    if (prevx == -1 && prevy == -1) {
      prevx = x + rad * cos(radians(i));
      prevy = y + rad * sin(radians(i));
      continue;
    }
    float nx = x + rad * cos(radians(i));
    float ny = y + rad * sin(radians(i));
    
    line(prevx, prevy, nx, ny);
    
    prevx = nx;
    prevy = ny;
    r += 1;
    if (rad >= radius)
      break;
  }
}

void example12() {
  background(0);
  pset_begin_layer();
  pset_add(new ParticleSet(100, 25, color(200)) {
    public void step(Particle p) {
      stroke(255, 10);
      strokeWeight(1);
      float xmid = p.prev_x + (p.x - p.prev_x);
      float ymid = p.prev_y + (p.y - p.prev_y);
      wobblycircle(p.x, p.y, p.lifetime*50);
    }
  });
  pset_end_layer();
}
