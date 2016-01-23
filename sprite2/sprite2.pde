void setup(){
  size(300, 300);
  background(255);
  fill(0);
}


void draw(){
  //head
  fill(0);
  arc(100, 100, 100, 200, PI, TWO_PI);
  //arms
  fill(0);
  bezier(50, 100, 10, 120, 10, 160, 50, 250);
  bezier(150, 100, 190, 120, 190, 160, 150, 250);
  //body
  fill(0);
  rect(50, 100, 100, 150);
  //white body
  fill(255);
  arc(100, 250, 100, 200, PI, TWO_PI);
  //feet
  fill(0);
  ellipse(50, 250, 100, 30);
  ellipse(150, 250, 100, 30);
  //eyes
  fill(255);
  ellipse(80, 50, 30, 30);
  ellipse(120, 50, 30, 30);
  fill(0);
  ellipse(80, 50, 10, 10);
  ellipse(120, 50, 10, 10);
  //beak
  fill(252, 165, 3);
  ellipse(100, 80, 30, 30);
  bezier(85, 80, 100, 160, 100, 160, 115, 80);
  
}
