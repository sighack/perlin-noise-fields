void example10() {
  strokeJoin(BEVEL);
  background(0);
  pset_begin_layer();
  pset_add(new ParticleSet(20000, 50, color(200)) {
    public void step(Particle p) {
      //noStroke();
      stroke(255, 10);
      //noFill();
      strokeWeight(map(p.lifetime, 0, 50, 20, 1));
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(20000, 50, color(200)) {
    public void step(Particle p) {
      //noStroke();
      stroke(random(0, 100), 10);
      //noFill();
      strokeWeight(1);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
}
