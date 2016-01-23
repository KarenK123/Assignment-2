void setup(){
  size(500, 500);
  background(0);
  stroke(random(255), random(255), random(255));
  fill(random(255), random(255), random(255), random(255));
}


void draw(){
  //body fish
  bezier(0, 100, 100, 185, 200, 185, 300, 100);
  bezier(0, 100, 100, 0, 200, 0, 300, 100);
  //tail
  triangle(300, 100, 400, 50, 400, 150);
  //eye
  ellipse(80, 80, 30, 30);
  ellipse(80, 80, 10, 10);
}
