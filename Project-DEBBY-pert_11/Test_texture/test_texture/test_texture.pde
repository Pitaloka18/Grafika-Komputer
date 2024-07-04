PImage img;

void setup() {
  size(640, 360, P3D);
  img = loadImage("2.jpeg");  // Use a PNG image with transparency
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  beginShape();
  texture(img);
  vertex(-100, -100, 0, 0,   0);
  vertex( 100, -100, 0, img.width, 0);
  vertex( 100,  100, 0, img.width, img.height);
  vertex(-100,  100, 0, 0,   img.height);
  endShape();
}
