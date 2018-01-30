void example7() {
  colorMode(HSB);
  pset_begin_layer();
  for (int i = 0; i < 1000; i++) {
    pset_add(new ParticleSet(1, 200, color(200, random(100, 255), random(100, 255))) {
      public void step(Particle p) {
        //noStroke();
        stroke(p.pcolor, map(p.lifetime, 0, 200, 0, 255), 255);
        //noFill();
        strokeWeight(p.lifetime/2);
        line(p.prev_x, p.prev_y, p.x, p.y);
      }
    });
  }
  pset_end_layer();
}
