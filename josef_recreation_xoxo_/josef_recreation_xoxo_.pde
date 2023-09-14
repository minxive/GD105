//josef alberss https://www.artsy.net/artwork/josef-albers-homage-to-the-square-edition-keller-id-2
  
  void setup(){
  size(534, 534);
}

void draw() {
background(200); 


PVector BackGroundSquare = new PVector (0, 0);
PVector MiddleSquare = new PVector (103,89);
PVector SmallSquare = new PVector (139,134);
PVector SmallestSquare = new PVector (169, 177);

//colors for my squares
color Tan = #F9F6E3;
color DarkestRed = #C52E1D;
color BrightRed = #D33220;
color BrightestRed = #E83725;

//background square
noStroke();
fill(Tan);
rect(BackGroundSquare.x, BackGroundSquare.y, 534, 534); 

//middle Square
noStroke();
fill(DarkestRed);
rect(MiddleSquare.x, MiddleSquare.y, 333, 326);

//small Square
noStroke();
fill(BrightRed);
rect(SmallSquare.x, SmallSquare.y, 263, 262);

//smallest square
noStroke();
fill(BrightestRed);
rect(SmallestSquare.x,SmallestSquare.y, 195, 201);


  if (frameCount == 1) {
    String filename = "Josef Recreation";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");

  }
}
