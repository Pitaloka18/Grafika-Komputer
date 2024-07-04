// Project: Aquarium
PImage img;
PImage[] fish = new PImage[7];
PImage[] fish1 = new PImage[16];
int fishx = 100;

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("aquarium.jpg");
  fish[0] = loadImage("fish0.gif");
  fish[1] = loadImage("fish1.gif");
  fish[2] = loadImage("fish2.gif");
  fish[3] = loadImage("fish3.gif");
  fish[4] = loadImage("fish4.gif");
  fish[5] = loadImage("fish5.gif");
  fish[6] = loadImage("fish6.gif");
  
  fish1[0] = loadImage("f0.gif");
  fish1[1] = loadImage("f1.gif");
  fish1[2] = loadImage("f2.gif");
  fish1[3] = loadImage("f3.gif");
  fish1[4] = loadImage("f4.gif");
  fish1[5] = loadImage("f5.gif");
  fish1[6] = loadImage("f6.gif");
  fish1[7] = loadImage("f7.gif");
  fish1[8] = loadImage("f8.gif");
  fish1[9] = loadImage("f9.gif");
  fish1[10] = loadImage("f10.gif");
  fish1[11] = loadImage("f11.gif");
  fish1[12] = loadImage("f12.gif");
  fish1[13] = loadImage("f13.gif");
  fish1[14] = loadImage("f14.gif");
  fish1[15] = loadImage("f15.gif");
  
  frameRate(10);
}

void draw() {
  image(img, 0, 0, width, height);
  image(fish[frameCount%7], fishx, 200);
  image(fish1[frameCount%16], 250, 200);
  fishx = fishx + 5;
  if ( fishx > width ) {
    fishx = -200;
  }
}
