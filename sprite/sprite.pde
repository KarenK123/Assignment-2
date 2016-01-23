void setup(){
  size(500, 500);
  background(0);
}


void draw(){
  noStroke();
  //hair
  fill(64, 52, 22, 43);
  bezier(250, 100, 200, 80, 180, 130, 180, 250);
  bezier(250, 100, 300, 80, 320, 130, 320, 250);

  //oval head shape
  fill(245, 225, 175, 43);
  ellipse(250, 150, 80, 100);
  
  //eyes
  stroke(0);
  fill(255);
  ellipse(232, 140, 20, 12);
  ellipse(268, 140, 20, 12);
  fill(78, 134, 92);
  //eye iris
  ellipse(232, 140, 12, 12);
  ellipse(268, 140, 12, 12);
  //eye pupil
  fill(0);
  ellipse(232, 140, 5, 5);
  ellipse(268, 140, 5, 5);
  
  
  //eyebrows
  //strokeWeight(3);
  stroke(64, 52, 22);
  fill(64, 52, 22);
   //bezier(240, 125, 238, 120, 230, 120, 220, 125);
   triangle(242, 128, 220, 128, 242, 124);
   triangle(258, 128, 280, 128, 258, 124);
   
   //mouth
   fill(198, 40, 22, 36);
   stroke(198, 40, 22, 66);
   bezier(235, 175, 245, 170, 250, 170, 250, 175);
   bezier(250, 175, 250, 170, 260, 170, 265, 175);
   bezier(235, 175, 245, 185, 255, 185, 265, 175);
   
   //body
   triangle(250, 200, 200, 350, 300, 350);
   bezier(235, 175, 245, 185, 255, 185, 265, 175);
   
  
  
  


  
}
