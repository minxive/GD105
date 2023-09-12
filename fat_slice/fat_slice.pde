void setup() {
  size(1024, 1024);
}

void draw() {
  
  background(255);
  stroke(0);

  // define all the points
  PVector a = new PVector(325, 458);
  PVector b = new PVector(487, 332);
  PVector c = new PVector(663, 464);
  PVector d = new PVector(322, 462);
  PVector e = new PVector(321, 688);
  PVector f = new PVector(664, 692);
  PVector g = new PVector(322, 689);
  PVector cherry = new PVector(487, 403);
  PVector stem = new PVector (501,363);
  // draw the mouth using the mouth points
  strokeWeight(40);
  point(cherry.x,cherry.y);
  
  strokeWeight(15);
  line(a.x, a.y, b.x, b.y);
  line(b.x, b.y, c.x, c.y);
  line(c.x,c.y, d.x, d.y);
  line(d.x,d.y, e.x,e.y);
  line(c.x,c.y, f.x,f.y);
  line(f.x,f.y, g.x,g.y);
  
  strokeWeight(5);
  line(cherry.x,cherry.y, stem.x, stem.y);
  
  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if(frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
