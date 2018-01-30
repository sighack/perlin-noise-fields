// A school of spacefish
// You know what? Stars look cooler when they're behind!
void example16() {
  colorMode(HSB);
  color c;
  background(0);
  
  pset_begin_layer();
  pset_add(new ParticleSet(200, 2, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255);
      ellipse(p.x, p.y, 6, 6);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(500, 2, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255);
      ellipse(p.x, p.y, 4, 4);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(2000, 2, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255);
      ellipse(p.x, p.y, 3, 3);
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(10000, 2, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255);
      ellipse(p.x, p.y, 1, 1);
    }
  });
  pset_end_layer();


  c = color(200, 220, 220);
  pset_begin_layer();
  pset_add(new ParticleSet(2000, 30, c) {
    public void step(Particle p) {
      noStroke();
      fill(hue(p.pcolor),
           saturation(p.pcolor) + random(-10, 10),
           brightness(p.pcolor) + random(-10, 10),
           map(p.lifetime, 0, 30, 0, 80));
      float r = map(p.lifetime, 0, 30, 1, 15);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
  c = color(210, 220, 220);
  pset_begin_layer();
  pset_add(new ParticleSet(4000, 20, c) {
    public void step(Particle p) {
      noStroke();
      fill(hue(p.pcolor),
           saturation(p.pcolor) + random(-10, 10),
           brightness(p.pcolor) + random(-10, 10),
           map(p.lifetime, 0, 20, 0, 80));
      float r = map(p.lifetime, 0, 20, 1, 10);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
  c = color(190, 220, 220);
  pset_begin_layer();
  pset_add(new ParticleSet(10000, 20, c) {
    public void step(Particle p) {
      noStroke();
      fill(hue(p.pcolor),
           saturation(p.pcolor) + random(-10, 10),
           brightness(p.pcolor) + random(-10, 10),
           map(p.lifetime, 0, 20, 0, 100));
      float r = map(p.lifetime, 0, 20, 1, 5);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
  c = color(180, 220, 220);
  pset_begin_layer();
  pset_add(new ParticleSet(20000, 20, c) {
    public void step(Particle p) {
      noStroke();
      fill(hue(p.pcolor),
           saturation(p.pcolor) + random(-10, 10),
           brightness(p.pcolor) + random(-10, 10),
           map(p.lifetime, 0, 20, 0, 80));
      float r = map(p.lifetime, 0, 20, 1, 2);
      ellipse(p.x, p.y, r, r);
    }
  });
  pset_end_layer();
  
}