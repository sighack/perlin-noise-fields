void example8() {
  colorMode(HSB);
  pset_begin_layer();
  for (int i = 0; i < 1000; i++) {
    pset_add(new ParticleSet(1, 200, color(200)) {
      public void step(Particle p) {
        //noStroke();
        stroke(60, 255, map(p.lifetime, 0, 200, 100, 255));
        //noFill();
        strokeWeight(p.lifetime/2);
        line(p.prev_x, p.prev_y, p.x, p.y);
      }
    });
  }
  pset_end_layer();
  
  pset_begin_layer();
    pset_add(new ParticleSet(20000, 100, color(200)) {
      public void step(Particle p) {
        //noStroke();
        stroke(60, map(p.lifetime, 0, 100, 100, 255), map(p.lifetime, 0, 100, 100, 255), 5);
        //noFill();
        strokeWeight(map(p.lifetime, 0, 100, 1, 5));
        line(p.prev_x, p.prev_y, p.x, p.y);
      }
    });

  pset_end_layer();
}
