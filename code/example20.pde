// Find some way to change noise_scale after a layer. Some callback...
void example20() {
  background(#1C0E01);

  pset_begin_layer();
  pset_add(new ParticleSet(1000, 50, color(#553E29)) {
    public void step(Particle p) {
      noStroke();
      fill(p.pcolor, map(p.lifetime, 0, 50, 0, 100));
      textSize(p.lifetime);
      text("X", p.x, p.y); 
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(800, 50, color(#AA6E39)) {
    public void step(Particle p) {
      noStroke();
      fill(p.pcolor, map(p.lifetime, 0, 50, 0, 100));
      textSize(p.lifetime);
      text("X", p.x, p.y); 
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(500, 50, color(#FF902E)) {
    public void step(Particle p) {
      noStroke();
      fill(p.pcolor, map(p.lifetime, 0, 50, 0, 100));
      textSize(p.lifetime);
      text("X", p.x, p.y); 
    }
  });
  pset_end_layer();
  
  pset_begin_layer();
  pset_add(new ParticleSet(500, 50, color(#FF7B06)) {
    public void step(Particle p) {
      noStroke();
      fill(p.pcolor, map(p.lifetime, 0, 50, 0, 100));
      textSize(p.lifetime);
      text("X", p.x, p.y); 
    }
  });
  pset_end_layer();

  pset_begin_layer();
  pset_add(new ParticleSet(100, 50, color(#FFCDA0)) {
    public void step(Particle p) {
      noStroke();
      fill(p.pcolor, map(p.lifetime, 0, 50, 0, 100));
      textSize(p.lifetime);
      text("X", p.x, p.y); 
    }
  });
  pset_end_layer();


  pset_begin_layer();
  pset_add(new ParticleSet(10000, 10, color(200)) {
    public void step(Particle p) {
      noStroke();
      fill(255, 60);
      ellipse(p.x, p.y, 1, 1);
    }
  });
  pset_end_layer();

}