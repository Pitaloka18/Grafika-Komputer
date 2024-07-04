PShape rocket;
float ry;

void setup() {
  size(640, 360, P3D);
  rocket = loadShape("mangkuk.obj");
  // Melebarkan objek agar lebih terlihat
  rocket.scale(100);
}

void draw() {
  background(0);
  lights(); // Mengaktifkan pencahayaan

  // Mengatur pencahayaan ambient dengan warna tertentu
  ambientLight(255, 255, 255); // Pencahayaan putih merata dari semua arah

  // Posisikan objek di tengah layar dan atur rotasi
  translate(width / 2, height / 2, -200);
  rotateZ(PI);
  rotateY(ry);

  // Atur warna objek dan gambar objek
  fill(60, 179, 113); // Warna objek
  shape(rocket);

  // Memutar objek secara perlahan
  ry += 0.02;
}
