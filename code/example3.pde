void example3() {
  background(#11060f);

  pset_begin_layer();
  pset_add(new ParticleSet(5000, 30, color(#371331)) {
    public void step(Particle p) {
      strokeWeight(12);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 80);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(2000, 30, color(#11060f)) {
    public void step(Particle p) {
      strokeWeight(6);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 80);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(5000, 30, color(#4A1942)) {
    public void step(Particle p) {
      strokeWeight(3);
      stroke(p.pcolor, 100);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(5000, 40, color(#5d1f53)) {
    public void step(Particle p) {
      strokeWeight(2);
      //stroke(random(255), 0, 0, 10);
      stroke(p.pcolor, 80);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(10000, 30, color(#702664)) {
    public void step(Particle p) {
      strokeWeight(2);
      stroke(p.pcolor, 70);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(10000, 15, color(#832c75)) {
    public void step(Particle p) {
      strokeWeight(1);
      stroke(p.pcolor, 50);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(10000, 30, color(#eeeeee)) {
    public void step(Particle p) {
      strokeWeight(2);
      stroke(p.pcolor, 5);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_add(new ParticleSet(3000, 30, color(#ffffff)) {
    public void step(Particle p) {
      strokeWeight(2);
      stroke(p.pcolor, 10);
      line(p.prev_x, p.prev_y, p.x, p.y);
    }
  });
  pset_end_layer();
}
