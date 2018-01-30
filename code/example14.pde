void example14() {
  background(255);
  
  pset_begin_layer();
  pset_add(new ParticleSet(1000, 30, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(0, map(p.lifetime, 0, 30, 0, 80));
      float r = map(p.lifetime, 0, 30, 1, 15);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(2000, 20, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(0, map(p.lifetime, 0, 20, 0, 80));
      float r = map(p.lifetime, 0, 20, 1, 10);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(5000, 20, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(0, map(p.lifetime, 0, 20, 0, 100));
      float r = map(p.lifetime, 0, 20, 1, 5);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(20000, 20, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(0, map(p.lifetime, 0, 20, 0, 80));
      float r = map(p.lifetime, 0, 20, 1, 2);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
}
