float angleX = 0; // Sudut rotasi wajah sepanjang sumbu X
float angleY = 0; // Sudut rotasi wajah sepanjang sumbu Y
float angleZ = 0; // Sudut rotasi wajah sepanjang sumbu Z

void setup() {
  size(400, 400, P3D); // Membuat tampilan 3D
}

void draw() {
  background(255); // Hapus layar setiap frame
  
  lights(); // Aktifkan pencahayaan
  
  // Pindahkan asal koordinat ke tengah layar
  translate(width/2, height/2);
  
  // Pergerakan otomatis
  float autoRotateSpeed = 0.01;
  angleX += autoRotateSpeed;
  angleY += autoRotateSpeed;
  angleZ += autoRotateSpeed / 2;
  
  // Menerapkan rotasi
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
  
  drawFace(); // Gambar wajah
}

void drawFace() {
  // Menggambar kepala
  fill(255, 200, 150);
  sphere(150);
  
  // Menggambar mata
  pushMatrix();
  translate(-40, -40, 70);
  fill(0);
  sphere(20);
  translate(80, 0, 0);
  sphere(20);
  popMatrix();
  
  // Menggambar mulut
  pushMatrix();
  translate(0, 60, 70);
  fill(255, 0, 0);
  ellipse(0, 0, 60, 30);
  popMatrix();
}

void mouseDragged() {
  float sensitivity = 0.01; // Sensitivitas rotasi
  
  // Menghitung perubahan posisi mouse
  float dx = mouseX - pmouseX;
  float dy = mouseY - pmouseY;
  
  // Mengubah sudut rotasi berdasarkan perubahan posisi mouse
  angleX += dy * sensitivity;
  angleY += dx * sensitivity;
}
