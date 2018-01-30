void example25() {
  force_scale = 20;
  
  background(255);
  colorMode(HSB, 255, 255, 255);

  pset_begin_layer();
  pset_add(new ParticleSet(1000, 50, color(100)) {
    public void step(Particle p) {
      noStroke();
      int jump = 5000;
      fill(150,
           random(200, 255),
           random(200, 255),
           10);
      triangle(p.prev_x, p.prev_y, p.x, p.y, p.x + random(-jump, jump), p.y + random(-jump, jump));
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(5000, 100, color(100)) {
    public void step(Particle p) {
      noStroke();
      int jump = 50;
      fill(150,
           random(100, 255),
           random(0, 150),
           10);
      triangle(p.prev_x, p.prev_y, p.x, p.y, p.x + random(-jump, jump), p.y + random(-jump, jump));
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(2000, 100, color(100)) {
    public void step(Particle p) {
      noStroke();
      int jump = 20;
      fill(150,
           random(200, 255),
           random(100, 255),
           10);
      triangle(p.prev_x, p.prev_y, p.x, p.y, p.x + random(-jump, jump), p.y + random(-jump, jump));
    }
  });
  pset_end_layer();
}