// Strewn autumn leaves
// Static background color: background(100, 200, 100);
// Then picked background from example13
void example18() {
  colorMode(HSB, 255, 255, 255);
  color c;
  background(0);
  
  for (int i = 200; i < 256; i+=5) {
    c = color(i, 220, 250);
    pset_begin_layer();
    pset_add(new ParticleSet(1000, 25, c) {
      public void step(Particle p) {
        noStroke();
        fill(hue(p.pcolor),
             saturation(p.pcolor) + random(-30, 30),
             brightness(p.pcolor) + random(-30, 30),
             map(p.lifetime, 0, 25, 0, 80));
        float r = map(p.lifetime, 0, 25, 1, 15);
        ellipse(p.x, p.y, r, r);
        //stroke(p.pcolor, 80);
        // Darker version of color for leaf stem
        stroke(hue(p.pcolor),
             saturation(p.pcolor),
             brightness(p.pcolor) - 50);
        strokeWeight(1);
        line(p.prev_x, p.prev_y, p.x, p.y);
      }
    });
    pset_end_layer();
  }
}