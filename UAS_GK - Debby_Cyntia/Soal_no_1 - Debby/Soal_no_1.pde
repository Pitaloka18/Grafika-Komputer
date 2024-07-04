void setup() {
  size(600, 600);
  textSize(20);
  background(251, 255, 140);

  // Warna kepala (biru)
  fill(91, 155, 213);
  // Kepala
  ellipseMode(CENTER);
  ellipse(300, 250, 300, 270); // (left/right, top/bott, lebar, tinggi)


  // Warna muka (putih)
  fill(255);
  // Muka
  noStroke();
  ellipse(304, 270, 270, 230); // (left/right, top/bott, lebar, tinggi)
  

  // Warna mata (putih)
  fill(255);
  // Mata
  stroke(1);
  ellipse(275, 170, 60, 80); // Mata kiri
  ellipse(335, 170, 60, 80); // Mata kanan


  // Warna pupil (hitam)
  fill(0);
  // Pupil
  ellipse(290, 175, 13, 20); // Pupil kiri
  ellipse(320, 175, 13, 20); // Pupil kanan


  // Warna pupil (putih)
  fill(255);
  // Pupil
  ellipse(290, 177, 7, 10); // Pupil kiri
  ellipse(320, 177, 7, 10); // Pupil kanan


  // Warna hidung (merah)
  fill(255, 0, 0);
  // Hidung
  ellipse(305, 214, 37, 35); // Hidung


  // Warna hidung (putih)
  noStroke();
  fill(255);
  // Hidung
  ellipse(297, 207, 9, 9); // Hidung
  

  // Mulut
  stroke(0);
  strokeWeight(2);
  fill(255, 0, 0);
  arc(305, 280, 150, 110, 0, PI, CHORD); // (left/right, top/bott, lebar, tinggi)


  //Garis penghubung nose & mouth
  stroke(0);
  strokeWeight(1.2);
  line(305, 232, 305, 280); //(tegak lurus top, turun-naik, tegak lurus bott, turun-naik) 


  // Kumis
  stroke(0);
  strokeWeight(2);
  line(255, 220, 187, 210); // Kumis kiri atas
  line(255, 240, 172, 240); // Kumis kiri tengah
  line(255, 260, 175, 275); // Kumis kiri bawah
  line(355, 220, 417, 210); // Kumis kanan atas
  line(355, 240, 432, 240); // Kumis kanan tengah
  line(355, 260, 432, 275); // Kumis kanan bawah


  // Warna kerah (merah)
  fill(255, 0, 0);
  rect(222, 364, 160, 20); // (left/right, top/bott, lebar, tinggi)


  // Warna lonceng (kuning)
  stroke(0);
  strokeWeight(2);
  fill(255, 204, 0);
  ellipse(300, 383, 40, 41); // (left/right, top/bott, lebar, tinggi)


  // titik lonceng (hitam)
  fill(0);
  ellipse(302, 385, 7, 7); // (left/right, top/bott, lebar, tinggi)

  // Garis lonceng
  stroke(0);
  strokeWeight(1.5);
  line(302, 390, 302, 403); // Garis lonceng
  line(285, 372, 315, 369);
  line(282, 378, 317, 375);
}

void draw() {
  // Nothing to do here
}
