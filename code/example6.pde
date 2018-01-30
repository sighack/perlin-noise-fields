void example6() {
  colorMode(HSB);
  pset_begin_layer();
  for (int i = 0; i < 5000; i++) {
    pset_add(new ParticleSet(1, 75, color(180, random(100, 200), random(200, 250))) {
      public void step(Particle p) {
        //noStroke();
        stroke(p.pcolor);
        noFill();
        strokeWeight(5);
        arc(p.x, p.y, p.lifetime, p.lifetime, 0, PI);
      }
    });
  }
  pset_end_layer();
}
