// https://sasj.tumblr.com/post/631243983787589632/geometric-shapes-201006

void setup() {
  size(800, 800);
}

void draw(){
  background(#E0E0E1) ; 
  translate(0, 0);
  noFill();
  stroke(#EF8354);
  strokeWeight(2.5);
  square(427, 263, 174); // left top right square
  
  square(625, 263, 174); // right top right square
  
  scale(0.943);
  translate(3,37);
  strokeWeight(3.2); 
  square(-90, 385, 167); // bottom left big square
  
  square(77, 408, 30); // bottom left top lil square
  
  square(77, 522, 30); // bottom left bottom lil square
 
 translate(225,0);
   square(-91, 385, 166); // bottom right big square
  
  square(76, 401, 30); // bottom right top lil square
  
  square(76, 519, 30); // bottom right bottom lil square
  
  translate(-4,14);
  
  line(38, 571, 119, 494); // bottom left right x
  
  line(118, 576, 40, 494); //bottom left right x
  
  translate (-166,3); 
  
  line(38, 573, 123, 494); // bottom right x
  
  line(118, 576, 40, 494); //bottom right x
  
  resetMatrix();
    noFill();
    stroke(#D1105A);
    square(478, 438, 100); // first purple box
    square(625, 438, 100); // second purple box
    square(770, 438, 100); // third purple box
    
    noStroke();
    fill(#EF8354);
    translate(16,23);
    square(313, 585, 75); // first orange filled square box
    square(412, 585, 75); // second orange filled square box
    square(512, 585, 75); // third orange filled square box
    square(610, 585, 75); // fourth orange filled square box
    
    resetMatrix();
    
    fill(#D1105A);
  square(286, 221, 75); //magenta filled box
  
  scale(1.717);
  strokeWeight(1.77);
  translate(118,-391);
  stroke(#EF8354);
  line(38, 573, 123, 494); // top left x magenta box
  
  line(120, 576, 40, 494); // top left x magenta box
  
  translate(-158,1);
  
  line(38, 573, 123, 494); // top left x
  
  line(122, 576, 40, 494); // top left x
  
}
  
