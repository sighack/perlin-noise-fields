void example24() {
  force_scale = 5;
  
  background(255);
  colorMode(HSB, 255, 255, 255);

  pset_begin_layer();
  for (int i = 0; i < 2000; i++) {
    pset_add(new ParticleSet(1, 10, color(100)) {
      public void step(Particle p) {
        noStroke();
        fill(185,
             random(50, 200),
             random(0, 255),
             60);
        rect(p.x, p.y, p.lifetime * 20, p.lifetime * 20);
      }
    });
  }
  pset_end_layer();
}