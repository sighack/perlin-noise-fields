void example15() {
  background(255);

  for (int i = 0; i < 10; i++) {
  pset_begin_layer();
  pset_add(new ParticleSet(100 * (10 - i), 300, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(0, map(p.lifetime, 0, 300, 0, 80));
      float r = map(p.lifetime, 0, 300, 1, 15);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(100 * (10 - i), 300, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255, map(p.lifetime, 0, 300, 0, 80));
      float r = map(p.lifetime, 0, 300, 1, 10);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  }
}
