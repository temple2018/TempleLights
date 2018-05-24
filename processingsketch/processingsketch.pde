// Particles, by Daniel Shiffman.


ParticleSystem ps;
PImage sprite;  

void setup() {
  size(1024, 768, P2D);
  orientation(LANDSCAPE);
  table = loadTable("points.csv", "header");

  println(table.getRowCount() + " total rows in table"); 

} 

Table table;

void draw () {
  int i=0;
  for (TableRow row : table.rows()) {
    float x = row.getFloat("x");
    float y = row.getFloat("y");
    float z = row.getFloat("z");
    point(x, y, z);    
    println(String.format("Light %d at %f %f %f", i, x, y, z));
    i++;    
  }
  
  point(mouseX,mouseY);
  fill(255);
  textSize(16);
  text("Frame rate: " + int(frameRate), 10, 20);
}
