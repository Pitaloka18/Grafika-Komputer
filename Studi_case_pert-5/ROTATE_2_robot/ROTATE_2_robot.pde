int armAngle = 0;
int leftLegAngle = 0;
int rightLegAngle = 0;
int armAngleChange = 5; // Perubahan sudut untuk tangan
int leftLegAngleChange = 5; // Perubahan sudut untuk kaki kiri
int rightLegAngleChange = 5; // Perubahan sudut untuk kaki kanan
final int ANGLE_LIMIT = 135;

void setup() {
  size(200, 200);
  smooth();
  frameRate(30);
}

void draw() {
  background(255);
  pushMatrix();
  translate(width/2, height/2); // let's center the robot
  drawRobot();
  armAngle += armAngleChange;

  // if the arm has moved past its limit,
  // reverse direction and set within limits.
  if (armAngle > ANGLE_LIMIT || armAngle < 0) {
    armAngleChange = -armAngleChange;
    armAngle += armAngleChange;
  }
  //popMatrix();


  // KAKI KIRI
  leftLegAngle += leftLegAngleChange;
  if (leftLegAngle > ANGLE_LIMIT || leftLegAngle < 0) {
    leftLegAngleChange = -leftLegAngleChange;
    leftLegAngle += leftLegAngleChange;
  }

  // KAKI KANAN
  rightLegAngle += rightLegAngleChange;
  if (rightLegAngle > ANGLE_LIMIT || rightLegAngle < 0) {
    rightLegAngleChange = -rightLegAngleChange;
    rightLegAngle += rightLegAngleChange;
  }
  popMatrix();
}

void drawRobot() {
  noStroke();
  fill(38, 38, 200);
  rect(20, 0, 38, 30); // head
  rect(14, 32, 50, 50); // body
  drawLeftArm();
  drawRightArm();

  drawLeftLeg();
  drawRightLeg();

  fill(222, 222, 249);
  ellipse(30, 12, 12, 12); // left eye
  ellipse(47, 12, 12, 12);  // right eye
}

void drawLeftArm() {
  pushMatrix();
  translate(12, 32);
  rotate(radians(armAngle));
  rect(-12, 0, 12, 37); // left arm
  popMatrix();
}

void drawRightArm() {
  pushMatrix();
  translate(66, 32);
  rotate(radians(-armAngle));
  rect(0, 0, 12, 37); // right arm
  popMatrix();
}

// KAKI KIRI
void drawLeftLeg() {
  pushMatrix();
  translate(22, 84);
  rotate(radians(leftLegAngle));
  rect(-6, 0, 12, 50); // left leg
  popMatrix();
}

// KAKI KANAN
void drawRightLeg() {
  pushMatrix();
  translate(48, 84);
  rotate(radians(rightLegAngle));
  rect(-6, 0, 12, 50); // right leg
  popMatrix();
}
