PImage bg;
int y;

void setup() {
  size(640, 360);
  // Load the background image
  bg = loadImage("dino.jpg");
  // Resize the background image to match the size of the application window
  bg.resize(width, height);
}

void draw() {
  background(bg);

  stroke(226, 204, 0);
  line(2, y, width, y);

  y++;
  if (y > height) {
    y = 0;
  }
}
