void example2() {
  background(0);
  
  pset_begin_layer();
  pset_add(new ParticleSet(2000, 50, color(255)) {
    public void step(Particle p) {
      strokeWeight(24);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 2);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(2000, 50, color(255)) {
    public void step(Particle p) {
      strokeWeight(12);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 5);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(3000, 50, color(255)) {
    public void step(Particle p) {
      strokeWeight(6);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 10);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(10000, 50, color(255)) {
    public void step(Particle p) {
      strokeWeight(3);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 20);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(15000, 75, color(255)) {
    public void step(Particle p) {
      strokeWeight(1);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 30);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
}
