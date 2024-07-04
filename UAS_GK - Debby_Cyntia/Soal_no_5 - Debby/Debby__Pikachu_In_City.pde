PImage img;
PImage[] pikachu = new PImage[3];
float pikachuX;
float pikachuY;
float targetX;
float targetY;
float speed = 3.0;
float easing = 0.05;

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("city.jpg");
  pikachu[0] = loadImage("p0.gif");
  pikachu[1] = loadImage("p1.gif");
  pikachu[2] = loadImage("p2.gif");
  
  // Start pikachu at a random position
  pikachuX = random(width);
  pikachuY = random(height);
  targetX = pikachuX;
  targetY = pikachuY;
  
  frameRate(30);
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Draw pikachu at its current position
  image(pikachu[frameCount % 3], pikachuX, pikachuY);
  
  // Smoothly move pikachu towards the target position
  float dx = targetX - pikachuX;
  float dy = targetY - pikachuY;
  pikachuX += dx * easing;
  pikachuY += dy * easing;
  
  // Check if pikachu has reached the target position
  float d = dist(pikachuX, pikachuY, targetX, targetY);
  if (d < 1.0) {
    // Update target position to a new random position within screen bounds
    targetX = random(width);
    targetY = random(height);
  }
}
