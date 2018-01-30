void example22() {
  // Color picking algorithm taken from:
  // https://martin.ankerl.com/2009/12/09/how-to-create-random-colors-programmatically/
  float golden_ratio_conjugate = 0.618033988749895;
  float h = random(1);
  
  force_scale = 10;

  background(255);
  colorMode(HSB);

  pset_begin_layer();
  for (int i = 0; i < 4000; i++) {
    pset_add(new ParticleSet(1, 5, color(h * 255, 0.8 * 255, 255)) {
      public void step(Particle p) {
        noStroke();
        fill(hue(p.pcolor),
             saturation(p.pcolor),
             brightness(p.pcolor),
             100);
        ellipse(p.x, p.y, 8, 8);
        stroke(hue(p.pcolor),
               saturation(p.pcolor),
               brightness(p.pcolor),
               20);
        line(p.prev_x, p.prev_y, p.x, p.y);
      }
    });
    h += golden_ratio_conjugate;
    h %= 1;
  }
  pset_end_layer();
}