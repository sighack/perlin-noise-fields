// Strewn autumn leaves
// Static background color: background(100, 200, 100);
// Then picked background from example13
void example17() {
  colorMode(HSB, 255, 255, 255);
  color c;
  background(255);
  
  pset_begin_layer();
  pset_add(new ParticleSet(5000, 50, color(200)) {
    public void step(Particle p) {
      //stroke(0, 20);
      stroke(100, 200, 100, 20);
      strokeWeight(1);
      for (int i = 0; i < p.lifetime/10; i++) {
        line(p.prev_x + random(-p.lifetime, p.lifetime), p.prev_y + random(-p.lifetime, p.lifetime), p.x + + random(-p.lifetime, p.lifetime), p.y + random(-p.lifetime, p.lifetime));
      }
    }
  });
  pset_end_layer();


  for (int i = 5; i < 40; i+=5) {
    c = color(i, 220, 220);
    pset_begin_layer();
    pset_add(new ParticleSet(1500, 25, c) {
      public void step(Particle p) {
        noStroke();
        fill(hue(p.pcolor),
             saturation(p.pcolor) + random(-10, 10),
             brightness(p.pcolor) + random(-10, 10),
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