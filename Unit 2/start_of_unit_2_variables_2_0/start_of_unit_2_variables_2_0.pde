//Lecture 4 variable Assignment
//My vintage advice animal

//sad kitty reassures its okay
String topText = "It's okay";
//to not be okay, we're all suffering
String bottomText = "To not be okay";

//declare image and font at global scope
PImage cat;
PFont Font;
color bg1, bg2, bg3;

void setup() {
  size(1280, 800);
  noStroke();

  //initialized image + font*
  cat = loadImage("cat.png");
  Font = loadFont("Impact-96.vlw");
}

void draw() {
  
  //colorful triangle background
  drawBackground();
 

  //image of cat
  image(cat, 0, 0);
  resetMatrix();
//text
 fill(#5a5b24);
  textFont(Font);
  textAlign(CENTER, CENTER);
  textAlign(CENTER, CENTER);
  text(topText.toUpperCase(), width*0.50, height*0.06);
  text(bottomText.toUpperCase(), width*0.50, height*0.94);


  // save work
  if (frameCount == 1) {
    String filename = "variable";
    save(filename + ".png");
    println("saved as " + filename + ".png");
  }
}
void drawBackground() {
  color bg1, bg2, bg3; // declared colors
  bg1 = #FFAEC9;
  bg2 = #C9FFF7;
  bg3 = #E087FF;


  //drawing my backgroud pastel colored triangles
  background(bg1);

  translate(width*0.50, height*0.50);
  fill(bg2);
  triangle(0, 0,
    width*-0.50, height*-0.50,
    width*0.00, height*-0.50);
  fill(bg3);
  triangle(0, 0,
    width*0.00, height*-0.50,
    width*0.50, height*-0.50);
  // rotate halfway to create hour glass effect
  rotate(TAU * 0.50);
  fill(bg2);
  triangle(0, 0,
    width*-0.50, height*-0.50,
    width*0.00, height*-0.50);
  fill(bg3);
  triangle(0, 0,
    width*0.00, height*-0.50,
    width*0.50, height*-0.50);

  resetMatrix();
}
