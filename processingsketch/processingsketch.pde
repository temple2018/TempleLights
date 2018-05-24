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
  float units = 100.0;
  
  for (TableRow row : table.rows()) {
    float x = row.getFloat("x") / units;
    float y = row.getFloat("y") / units;
    float z = row.getFloat("z") / units;
    point(x, y, z);    
    println(String.format("Light %d at %f %f %f", i, x, y, z));
    i++;    
  }
}
