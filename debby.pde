/**
 * Arctangent. 
 * 
 * Move the mouse to change the direction of the eyes. 
 * The atan2() function computes the angle from each eye 
 * to the cursor. 
 */
 
Eye e1;

void setup() {
  size(640, 450, P3D);
  noStroke();

  e1 = new Eye( 250, 130, 50);  
}

void draw() {
  background(172, 209, 175);
  
  fill(247, 233, 72);
  quad(144, 50, 432, 50, 216, 200, 144, 200);
  
  fill(255, 10, 0);
  ellipse(432, 52, 30, 30);
  
  stroke(0);
  strokeWeight(2);
  line(320, 30, 380, 60);
  line(320, 90, 380, 70);
  line(320, 140, 380, 80);
  line(180, 185, 180, 338);
  
  fill(246, 200, 0);
  ellipse(180, 260, 230, 150 );
  
  fill(255, 10, 0);
  ellipse(150, 230, 15, 15);
  ellipse(110, 240, 15, 15);
  ellipse(115, 280, 15, 15);
  ellipse(145, 290, 15, 15);
  
  ellipse(205, 230, 15, 15);
  ellipse(250, 240, 15, 15);
  ellipse(245, 280, 15, 15);
  ellipse(210, 290, 15, 15);
  
  fill(246, 170, 0);
  ellipse(180, 260, 130, 50 );
  
  fill(246, 170, 0);
  ellipse(120, 350, 100, 50 );
  
  fill(246, 170, 0);
  ellipse(240, 350, 100, 50 );
  
  fill(246, 170, 0);
  ellipse(80, 180, 100, 50 );
  
  fill(246, 170, 0);
  ellipse(300, 190, 100, 50 );
  
  e1.update(mouseX, mouseY);

  e1.display();
}

class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
 }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(255, 10, 0);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
}
