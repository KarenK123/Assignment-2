void setup(){
  size(500, 500);
}



void draw(){
  fill(random(255), random(255), random(255), random(255));
  ellipse(200, 100, 200, 150);
  //beak
  fill(252, 146, 5, 34);
  triangle(295, 80, 350, 100, 300, 100);
  triangle(300, 100, 350, 100, 295, 120);
  //eyes
  fill(255);
  ellipse(250, 80, 50, 50);
  fill(0);
  ellipse(250, 80, 20, 20);
  //hair
  fill(random(255), random(255), random(255), random(255));
  triangle(260, 40, 230, 0, 230, 30);
  triangle(230, 30, 200, 0, 200, 25);
  triangle(200, 25, 180, 0, 180, 25);
  //wings
  fill(random(255), random(255), random(255));
  bezier(210, 80, 160, 0, 160, 0, 120, 20);
  bezier(170, 60, 120, 10, 100, 10, 100, 40);
  bezier(150, 60, 100, 20, 60, 60, 110, 80);
  
}
