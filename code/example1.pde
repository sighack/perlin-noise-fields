void example1() {
  background(255);
  
  pset_begin_layer();
  pset_add(new ParticleSet(10000, 100, color(0)) {
    public void step(Particle p) {
      strokeWeight(2);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 10);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
}