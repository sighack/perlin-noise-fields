// A base canvas texture
void example26() {
  force_scale = 5;
  
  background(255);
  colorMode(HSB, 360, 255, 255);

  pset_begin_layer();
  for (int i = 0; i < 2000; i++) {
    pset_add(new ParticleSet(1, 10, color(100)) {
      public void step(Particle p) {
        noStroke();
        fill(60,
             random(0, 100),
             random(240, 255),
             60);
        rect(p.x, p.y, p.lifetime * 10, p.lifetime * 10);
      }
    });
  }
  pset_end_layer();
}