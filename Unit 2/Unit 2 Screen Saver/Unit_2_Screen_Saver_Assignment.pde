//Unit 2, Lecture 5, Screensaver Assignment
//Original code by: Abhishek Mukhopadhyay  | https://obliblog.wordpress.com/2012/06/11/creating-your-own-ping-pong-screen-saver-using-processing/
//"Rainbow balls bouncing around"

int ballSize=20; //ball size(radius)
int ExtraballSize=30; //ball size (radius)
int BigballSize=40; //ball size (radius)
int BiggerballSize=50; //ball size (radius)
int BiggestballSize=60; //ball size (radius)
int xDirection=30; //speed of motion for first ball
int yDirection=30; // speed of motion for frst ball
int x2Direction=30; //speed of motion for second ball
int y2Direction=30; //speed of motion for second ball
int x3Direction=30; //speed of motion for third ball
int y3Direction=30; //speed of motion for third ball
int x4Direction=30; //speed of motion for fourth ball
int y4Direction=30; //speed of motion for fourth ball
int x5Direction=20; //speed of motion for fifth ball
int y5Direction=20; //speed of motion for fifth ball
float xPos, yPos; //position of the first ball
float x2Pos, y2Pos; //position of the second ball
float x3Pos, y3Pos; //position of the third ball
float x4Pos, y4Pos; //position of the fourth ball
float x5Pos, y5Pos; //position of the fifth ball
//color transition
float redColor=0;
float greenColor=0;
float blueColor=0;

void setup() {
  size(800, 800);     // size setup
  xPos=random(width);  //randomly selects the start
  yPos=random(height); // position of the ball
  x2Pos=random(width);  //randomly selects the start
  y2Pos=random(height); // position of the ball
  x3Pos=random(width);  //randomly selects the start
  y3Pos=random(height); // position of the ball
  x4Pos=random(width);  //randomly selects the start
  y4Pos=random(height); // position of the ball
  x5Pos=random(width);  //randomly selects the start
  y5Pos=random(height); // position of the ball
}
void draw() {

  background(0);      // makes black blackground

  //transition of colour
  redColor=random(255);
  greenColor=random(255);
  blueColor=random(255);
  //color transition time
  delay(120);
  //change the stroke and fill colour
  fill(redColor, greenColor, blueColor);

  animateBall(); //animation function call for ball 1
  animateBall2(); //animation function call for ball 2
  animateBall3(); //animation function call for ball 3
  animateBall4(); //animation function call for ball 4
  animateBall5(); //animation function call for ball 5
}
void animateBall() {
  //if collission occurs with vertical edges
  if ((xPos-ballSize/2<=0) || (xPos+ballSize/2 >=width)) {
    xDirection=-xDirection;
  }

  //if collission occurs with horizontal edges
  if ((yPos-ballSize/2<=0) || (yPos+ballSize/2 >=height)) {
    yDirection=-yDirection;
  }

  xPos=xPos+xDirection;
  yPos=yPos+yDirection;

  //drawing of ball
  ellipse(xPos, yPos, ballSize, ballSize);
}
void animateBall2() {

  //if ball collides with vertical edges
  if ((x2Pos-ExtraballSize/2<=0) || (x2Pos+ExtraballSize/2 >=width)) {
    x2Direction=-x2Direction;
  }

  //if ball collides with horizontal edges
  if ((y2Pos-ExtraballSize/2<=0) || (y2Pos+ExtraballSize/2 >=height)) {
    y2Direction=-y2Direction;
  }

  x2Pos=x2Pos+x2Direction;
  y2Pos=y2Pos+y2Direction;

  //drawing of ball 2
  ellipse(x2Pos, y2Pos, ExtraballSize, ExtraballSize);
}
void animateBall3() {
  //if ball 3 collides with verticle edges
  if ((x3Pos-BigballSize/2<=0) || (x3Pos+BigballSize/2 >=width)) {
    x3Direction=-x3Direction;
  }

  //if ball 3 collides with horizontal edges
  if ((y3Pos-BigballSize/2<=0) || (y3Pos+BigballSize/2 >=height)) {
    y3Direction=-y3Direction;
  }

  x3Pos=x3Pos+x3Direction;
  y3Pos=y3Pos+y3Direction;

  //drawing of ball 4
  ellipse(x3Pos, y3Pos, BigballSize, BigballSize);
}

void animateBall4() {
  //if ball 4 collides with verticle edges
  if ((x4Pos-BiggerballSize/2<=0) || (x4Pos+BiggerballSize/2 >=width)) {
    x4Direction=-x4Direction;
  }

  //if ball 4 collides with horizontal edges
  if ((y4Pos-BiggerballSize/2<=0) || (y4Pos+BiggerballSize/2 >=height)) {
    y4Direction=-y4Direction;
  }

  x4Pos=x4Pos+x4Direction;
  y4Pos=y4Pos+y4Direction;

  //drawing of ball 4
  ellipse(x4Pos, y4Pos, BiggerballSize, BiggerballSize);
}

void animateBall5() {
  //if ball 5 collides with verticle edges
  if ((x5Pos-BiggestballSize/2<=0) || (x5Pos+BiggerballSize/2 >=width)) {
    x5Direction=-x5Direction;
  }

  //if ball 5 collides with horizontal edges
  if ((y5Pos-BiggerballSize/2<=0) || (y5Pos+BiggerballSize/2 >=height)) {
    y5Direction=-y5Direction;
  }

  x5Pos=x5Pos+x5Direction;
  y5Pos=y5Pos+y5Direction;

  //drawing of ball 5
  ellipse(x5Pos, y5Pos, BiggestballSize, BiggestballSize);
}
