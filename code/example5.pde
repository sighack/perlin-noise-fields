void example5() {
  // Color picking algorithm taken from:
  // https://martin.ankerl.com/2009/12/09/how-to-create-random-colors-programmatically/
  float golden_ratio_conjugate = 0.618033988749895;
  float h = random(1);

  background(255);
  colorMode(HSB);

  pset_begin_layer();
  for (int i = 0; i < 2000; i++) {
    pset_add(new ParticleSet(1, 100, color(h * 255, 0.4 * 255, 255)) {
      public void step(Particle p) {
        //noStroke();
        stroke(p.pcolor);
        noFill();
        strokeWeight(5);
        arc(p.x, p.y, p.lifetime, p.lifetime, 0, PI);
      }
    });
    h += golden_ratio_conjugate;
    h %= 1;
  }
  pset_end_layer();
  
  pset_begin_layer();
  for (int i = 0; i < 300; i++) {
    pset_add(new ParticleSet(1, 100, color(h * 255, 0.6 * 255, 255)) {
      public void step(Particle p) {
        //noStroke();
        stroke(p.pcolor);
        noFill();
        strokeWeight(5);
        arc(p.x, p.y, p.lifetime, p.lifetime, 0, PI);
      }
    });
    h += golden_ratio_conjugate;
    h %= 1;
  }
  pset_end_layer();
  
  pset_begin_layer();
  for (int i = 0; i < 100; i++) {
    pset_add(new ParticleSet(1, 100, color(h * 255, 0.7 * 255, 255)) {
      public void step(Particle p) {
        //noStroke();
        stroke(p.pcolor);
        noFill();
        strokeWeight(5);
        arc(p.x, p.y, p.lifetime, p.lifetime, 0, PI);
      }
    });
    h += golden_ratio_conjugate;
    h %= 1;
  }
  pset_end_layer();
}
