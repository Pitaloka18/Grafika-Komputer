/*
Nama : Debby C.P
NPM  : 011210003

POLA beruang / 3 bear

Sumber teori : https://youtu.be/Vi3SUrNRtmg?si=lTxDdM2FzPnqsIDE 
*/


// Variabel untuk mengontrol animasi
float angle = 0.0;
float angleSpeed = 0.02;
Bear[] bears = new Bear[3];

void setup() {
  size(800, 600);
  smooth();
  
  // Inisialisasi objek beruang
  for (int i = 0; i < bears.length; i++) {
    bears[i] = new Bear(random(width), random(height));
  }
}

void draw() {
  background(144, 238, 144);
  
  // Perulangan untuk setiap objek beruang
  for (int i = 0; i < bears.length; i++) {
    Bear bear = bears[i];
    
    // Mendapatkan vektor arah menuju tengah canvas
    PVector target = new PVector(width/2, height/2);
    PVector direction = PVector.sub(target, bear.position);
    direction.normalize();
    
    // Menambahkan kecepatan pergerakan ke arah tengah canvas
    float speed = 2.0;
    PVector velocity = direction.mult(speed);
    bear.position.add(velocity);
    
    // Translasi ke posisi objek beruang
    translate(bear.position.x, bear.position.y);
    
    // Rotasi dan skala berdasarkan sudut acak
    rotate(bear.rotation);
    scale(bear.scale);
    
    // Menggambar beruang dengan gradasi warna
    bear.display();
    
    // Reset transformasi untuk objek berikutnya
    resetMatrix();
    
    // Update posisi dan transformasi acak
    bear.update();
  }
}

class Bear {
  PVector position;
  float rotation;
  float scale;
  float rotationSpeed;
  float scaleSpeed;
  
  Bear(float x, float y) {
    position = new PVector(x, y);
    rotation = random(TWO_PI); // Rotasi acak
    scale = random(0.5, 1.5); // Skala acak
    rotationSpeed = random(-0.05, 0.05); // Kecepatan rotasi acak
    scaleSpeed = random(-0.01, 0.01); // Kecepatan skala acak
  }
  
  void update() {
    // Perubahan transformasi acak
    rotation += rotationSpeed;
    scale += scaleSpeed;
    
    // Batasan nilai transformasi
    if (scale < 0.5 || scale > 1.5) {
      scaleSpeed *= -1;
    }
  }
  
  void display() {
    // Badan beruang
    fill(150, 75, 0); // coklat
    ellipse(0, 0, 100, 120); // badan
    
    // Kepala beruang
    fill(150, 75, 0); // coklat
    ellipse(0, -70, 80, 80); // kepala
    
    // Telinga beruang
    fill(150, 75, 0); // coklat
    ellipse(-30, -90, 30, 50); // telinga kiri
    ellipse(30, -90, 30, 50); // telinga kanan
    
    // Mata beruang
    fill(255); // putih
    ellipse(-20, -85, 15, 25); // mata kiri
    ellipse(20, -85, 15, 25); // mata kanan
    fill(0); // hitam
    ellipse(-20, -85, 5, 5); // pupil mata kiri
    ellipse(20, -85, 5, 5); // pupil mata kanan
    
    // Hidung beruang
    fill(0); // hitam
    triangle(0, -65, -10, -50, 10, -50); // hidung
    
    // Mulut beruang
    stroke(0); // hitam
    strokeWeight(2);
    noFill();
    arc(0, -45, 40, 20, 0, PI); // mulut
  }
}
