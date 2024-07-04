/**
 * Texture Sphere 
 * by Gillian Ramsay
 * 
 * Rewritten by Gillian Ramsay to better display the poles.
 * Previous version by Mike 'Flux' Chang (and cleaned up by Aaron Koblin). 
 * Original based on code by Toxi.
 * 
 * A 3D textured sphere with simple rotation control.
 */

int ptsW, ptsH;
PImage img;
int numPointsW;
int numPointsH_2pi; 
int numPointsH;
float[] coorX;
float[] coorY;
float[] coorZ;
float[] multXZ;

void setup() {
  size(640, 360, P3D);
  background(0);
  noStroke();
  img = loadImage("4.jpg");
  if (img == null) {
    println("Error: image not found");
    exit();
  }
  ptsW = 30;
  ptsH = 30;
  // Parameters below are the number of vertices around the width and height
  initializeSphere(ptsW, ptsH);
}

// Use arrow keys to change detail settings
void keyPressed() {
  if (keyCode == ENTER) saveFrame();
  if (keyCode == UP) ptsH++;
  if (keyCode == DOWN) ptsH--;
  if (keyCode == LEFT) ptsW--;
  if (keyCode == RIGHT) ptsW++;
  if (ptsW == 0) ptsW = 1;
  if (ptsH == 0) ptsH = 2;
  // Parameters below are the number of vertices around the width and height
  initializeSphere(ptsW, ptsH);
}

void draw() {
  background(0);
  camera(width/2 + map(mouseX, 0, width, -2*width, 2*width), 
         height/2 + map(mouseY, 0, height, -height, height),
         height/2 / tan(PI * 30.0 / 180.0), 
         width, height / 2.0, 0, 
         0, 1, 0);
    
  pushMatrix();
  translate(width / 2, height / 2, 0);  
  textureSphere(200, 200, 200, img);
  popMatrix();
}

void initializeSphere(int numPtsW, int numPtsH_2pi) {
  numPointsW = numPtsW + 1;
  numPointsH_2pi = numPtsH_2pi;
  numPointsH = ceil((float)numPointsH_2pi / 2) + 1;

  coorX = new float[numPointsW];
  coorY = new float[numPointsH];
  coorZ = new float[numPointsW];
  multXZ = new float[numPointsH];

  for (int i = 0; i < numPointsW; i++) {
    float thetaW = i * 2 * PI / (numPointsW - 1);
    coorX[i] = sin(thetaW);
    coorZ[i] = cos(thetaW);
  }
  
  for (int i = 0; i < numPointsH; i++) {
    if (int(numPointsH_2pi / 2) != (float)numPointsH_2pi / 2 && i == numPointsH - 1) {
      float thetaH = (i - 1) * 2 * PI / (numPointsH_2pi);
      coorY[i] = cos(PI + thetaH); 
      multXZ[i] = 0;
    } else {
      float thetaH = i * 2 * PI / (numPointsH_2pi);
      coorY[i] = cos(PI + thetaH); 
      multXZ[i] = sin(thetaH);
    }
  }
}

void textureSphere(float rx, float ry, float rz, PImage t) { 
  float changeU = t.width / (float)(numPointsW - 1); 
  float changeV = t.height / (float)(numPointsH - 1); 
  float u = 0;
  float v = 0;

  beginShape(TRIANGLE_STRIP);
  texture(t);
  for (int i = 0; i < (numPointsH - 1); i++) {
    float coory = coorY[i];
    float cooryPlus = coorY[i + 1];
    float multxz = multXZ[i];
    float multxzPlus = multXZ[i + 1];

    for (int j = 0; j < numPointsW; j++) {
      normal(-coorX[j] * multxz, -coory, -coorZ[j] * multxz);
      vertex(coorX[j] * multxz * rx, coory * ry, coorZ[j] * multxz * rz, u, v);
      normal(-coorX[j] * multxzPlus, -cooryPlus, -coorZ[j] * multxzPlus);
      vertex(coorX[j] * multxzPlus * rx, cooryPlus * ry, coorZ[j] * multxzPlus * rz, u, v + changeV);
      u += changeU;
    }
    v += changeV;
    u = 0;
  }
  endShape();
}
