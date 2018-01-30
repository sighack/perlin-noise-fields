// Strewn autumn leaves
// Static background color: background(100, 200, 100);
// Then picked background from example13
void example19() {
  noise_scale = 0.1;
  
  background(255);
  colorMode(HSB, 255, 255, 255);
  
  for (int i = 0; i < 10; i++) {
    color c = color(map(i, 0, 10, 0, 255), 200, 255);
    pset_begin_layer();
    pset_add(new ParticleSet(10000, 25, c) {
      public void step(Particle p) {
        noStroke();
        fill(p.pcolor, map(p.lifetime, 0, 25, 0, 100));
        ellipse(p.x, p.y, 1, 1);
      }
    });
    pset_end_layer();
  }
}