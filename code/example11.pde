float angle(float x1, float y1, float x2, float y2) {
  float dy = y2 - y1;
  float dx = x2 - x1;
  return atan2(dy, dx); // range (-PI, PI]
}

void example11() {
  background(0);
  pset_begin_layer();
  pset_add(new ParticleSet(20000, 40, color(200)) {
    public void step(Particle p) {
      stroke(255, 10);
      //strokeWeight(map(p.lifetime, 0, 50, 20, 1));
      strokeWeight(1);
      float xmid = p.prev_x + (p.x - p.prev_x);
      float ymid = p.prev_y + (p.y - p.prev_y);
      translate(xmid, ymid);
      rotate(angle(xmid, ymid, p.x, p.y) - PI/2.0);
      //rotate(-PI/4.0);
      line(0, -p.lifetime/1.0, 0, p.lifetime/1.0);
      resetMatrix();
      //line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
}
