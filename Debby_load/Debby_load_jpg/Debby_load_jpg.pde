/**
 * Load and Display a Shape. 
 * Illustration by George Brower. 
 * 
 * The loadShape() command is used to read simple SVG (Scalable Vector Graphics)
 * files and OBJ (Object) files into a Processing sketch. This example loads an
 * SVG file of a monster robot face and displays it to the screen. 
 */

PImage bot; // Menggunakan PImage untuk gambar JPG

void setup() {
  size(1500, 1000);
  // The file "bot1.jpg" must be in the data folder
  // of the current sketch to load successfully
  bot = loadImage("dino.jpg");
} 

void draw(){
  background(60, 179, 113);
  image(bot, 110, 90, 150, 100);  // Draw at coordinate (110, 90) with size 100 x 100
  image(bot, 280, 40);            // Draw at coordinate (280, 40) with default size
}
