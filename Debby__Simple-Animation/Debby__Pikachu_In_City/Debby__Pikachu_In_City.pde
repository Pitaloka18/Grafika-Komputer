// Project: Aquarium
PImage img;
PImage[] pikachu = new PImage[3];
int pikachux = 100;

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("city.jpg");
  pikachu[0] = loadImage("p0.gif");
  pikachu[1] = loadImage("p1.gif");
  pikachu[2] = loadImage("p2.gif");
  
  frameRate(10);
}

void draw() {
  image(img, 0, 0, width, height);
  image(pikachu[frameCount%3], pikachux, 200);
  pikachux = pikachux + 5;
  if ( pikachux > width ) {
    pikachux = -200;
  }
}
