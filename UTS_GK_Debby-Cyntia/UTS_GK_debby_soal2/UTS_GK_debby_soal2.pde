size (600, 600);
textSize(20);
background (0);


//Nama :
text("5. Debby Cyntia Pitaloka = A", 20, 30);


// Warna kulit (krim kulit)
  fill(255, 240, 220);
  
// Kepala
  ellipseMode(CENTER);
  ellipse(300, 300, 300, 350); // Lingkaran besar untuk kepala
  
// alis
  strokeWeight(5); // Mengatur ketebalan garis menjadi 5 piksel
  line(230, 250, 290, 250);
  line(310, 250, 360, 250);

// Warna mata (hitam)
  fill(0);
  
// Mata
  ellipse(260, 280, 40, 20); // Mata kiri
  ellipse(340, 280, 40, 20); // Mata kanan

// Warna pupil (putih)
  fill(255);
  
// Pupil
  ellipse(260, 280, 15, 15); // Pupil kiri
  ellipse(340, 280, 15, 15); // Pupil kanan
  
// Detail wajah
  noFill();
  stroke(0);
  strokeWeight(2);
  arc(300, 310, 80, 60, 0, PI); // Detail wajah (dagu)
