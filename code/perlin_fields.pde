void keyPressed() {
  if (key == 's')
    saveFrame();
}

void setup() {
  size(720, 720);
  init(false);
  //save_pdf("14");
  example13();
}

void draw() {
  draw_and_update();
}