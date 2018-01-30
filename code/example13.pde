void example13() {
  background(255);
  pset_begin_layer();
  pset_add(new ParticleSet(8000, 50, color(200)) {
    public void step(Particle p) {
      stroke(0, 20);
      strokeWeight(1);
      for (int i = 0; i < p.lifetime/10; i++) {
        line(p.prev_x + random(-p.lifetime, p.lifetime), p.prev_y + random(-p.lifetime, p.lifetime), p.x + + random(-p.lifetime, p.lifetime), p.y + random(-p.lifetime, p.lifetime));
      }
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(500, 2, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255);
      ellipse(p.x, p.y, 4, 4);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(3000, 2, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255);
      ellipse(p.x, p.y, 3, 3);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(20000, 2, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255);
      ellipse(p.x, p.y, 1, 1);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(100, 50, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255, map(p.lifetime, 0, 50, 0, 100));
      float r = map(p.lifetime, 0, 50, 1, 5);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
}
