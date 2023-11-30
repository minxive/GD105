//Screensaver


//CHANGE SCREEN SIZE

int ballSize=20;  //radius of the ball
int ExtraballSize=30;  //radius of the ball
int xDirection=5; //Change this variables to 
int yDirection=5; //change speed of motion
int x2Direction=10; //Change this variables to 
int y2Direction=10; //change speed of motion
float xPos, yPos; //position of the ball
float x2Pos, y2Pos; //position of the ball

//for colour transition
float redColor=0;
float greenColor=0;
float blueColor=0;

void setup(){
   size(1366,768);      //set the size of the window
   xPos=random(width);  //randomly selects the start 
   yPos=random(height); // point of the ball
   x2Pos=random(width);  //randomly selects the start 
   y2Pos=random(height); // point of the ball
}
void draw(){
  
   background(0);      //makes the bgcolour black

   //random transition of colour
   redColor=random(255); 
   greenColor=random(255);
   blueColor=random(255);
   //to ease the colour transition time
   delay(40);
   //change the stroke and fill colour
   fill(redColor,greenColor,blueColor);

   animateBall(); //ball animation function call
   animateBall2(); //ball animation function call

}
void animateBall2(){ 
  
     //if collission occurs with vertical edges
    if((x2Pos-ExtraballSize/2<=0) || (x2Pos+ExtraballSize/2 >=width)){
        x2Direction=-x2Direction;
          }

    //if collission occurs with horizontal edges              
    if((y2Pos-ExtraballSize/2<=0) || (y2Pos+ExtraballSize/2 >=height)){
        y2Direction=-y2Direction;
          }

    x2Pos=x2Pos+x2Direction;
    y2Pos=y2Pos+y2Direction;
    
     ellipse(x2Pos,y2Pos,ExtraballSize,ExtraballSize);
}
void animateBall(){
    //if collission occurs with vertical edges
    if((xPos-ballSize/2<=0) || (xPos+ballSize/2 >=width)){
        xDirection=-xDirection;
          }

    //if collission occurs with horizontal edges              
    if((yPos-ballSize/2<=0) || (yPos+ballSize/2 >=height)){
        yDirection=-yDirection;
          }

    xPos=xPos+xDirection;
    yPos=yPos+yDirection;

    //drawing the ball
    ellipse(xPos,yPos,ballSize,ballSize);
 
 }
