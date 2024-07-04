PImage img;

void setup() {
  size(640, 360, P3D);
  img = loadImage("1.jpg");
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
}
