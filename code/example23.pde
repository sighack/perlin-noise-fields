// Sanguine
void example23() {
  background(#c5725c);
  force_scale = 4;

  for (int i = 0; i < 10; i++) {
    pset_begin_layer();
    pset_add(new ParticleSet(100 * (10 - i), 50, color(#c5725c)) {
      public void step(Particle p) {
        noStroke();
        fill(p.pcolor, map(p.lifetime, 0, 50, 0, 80));
        float r = map(p.lifetime, 0, 50, 20, 30);
        //float r = 10 + random(-2, 2);
        ellipse(p.x, p.y, r, r);
      }
    });
    pset_end_layer();
    
    pset_begin_layer();
    pset_add(new ParticleSet(100 * (10 - i), 50, color(#DBBEA1)) {
      public void step(Particle p) {
        noStroke();
        fill(p.pcolor, map(p.lifetime, 0, 50, 0, 50));
        float r = map(p.lifetime, 0, 50, 20, 30);
        //float r = 10 + random(-2, 2);
        ellipse(p.x, p.y, r, r);
      }
    });
    pset_end_layer();
  }
  
  for (int i = 0; i < 10; i++) {
    pset_begin_layer();
    pset_add(new ParticleSet(10 * (5 - i), 50, color(#c5725c)) {
      public void step(Particle p) {
        noStroke();
        fill(p.pcolor, map(p.lifetime, 0, 50, 0, 80));
        float r = map(p.lifetime, 0, 50, 10, 20);
        //float r = 10 + random(-2, 2);
        ellipse(p.x, p.y, r, r);
      }
    });
    pset_end_layer();
    
    pset_begin_layer();
    pset_add(new ParticleSet(10 * (5 - i), 50, color(#DBBEA1)) {
      public void step(Particle p) {
        noStroke();
        fill(p.pcolor, map(p.lifetime, 0, 50, 0, 50));
        float r = map(p.lifetime, 0, 50, 10, 20);
        //float r = 10 + random(-2, 2);
        ellipse(p.x, p.y, r, r);
      }
    });
    pset_end_layer();
  }
}