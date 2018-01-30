void example21() {
  // Color picking algorithm taken from:
  // https://martin.ankerl.com/2009/12/09/how-to-create-random-colors-programmatically/
  float golden_ratio_conjugate = 0.618033988749895;
  float h = random(1);

  background(255);
  colorMode(HSB);

  pset_begin_layer();
  for (int i = 0; i < 300; i++) {
    pset_add(new ParticleSet(1, 20, color(h * 255, 0.8 * 255, 255)) {
      public void step(Particle p) {
        // Adapted from: https://www.openprocessing.org/sketch/394081
        float a = 0;
        float r = 0;
        float x1 = p.x;
        float y1 = p.y;
        float u = random(0.5, 1);
        float angle = random(TWO_PI);
        //strokeWeight(p.lifetime/20);
        //strokeCap(SQUARE);
        //stroke(p.pcolor);
        //line(p.prev_x, p.prev_y, p.x, p.y);
        
        fill(p.pcolor, 5);
        noStroke();    
    
        beginShape();
        while (a < TWO_PI) {
          vertex(x1, y1); 
          float v = random(0.85, 1);
          x1 = p.x + r * cos(angle + a) * u * v;
          y1 = p.y + r * sin(angle + a) * u * v;
          a += PI / 180;
          for (int i = 0; i < 2; i++) {
            r += sin(a * int(random(1, 4)));
          }
        }
        endShape(CLOSE);
      }
    });
    h += golden_ratio_conjugate;
    h %= 1;
  }
  pset_end_layer();
}