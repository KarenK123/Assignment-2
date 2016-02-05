//create class
class bird{
  float x;
  float y;
  
  //consrtuctor
  bird(float _x, float _y){
    x = _x;
    y = _y;
    
  }
  
  //create function
  void display(){
    
  fill(random(255), random(255), random(255), random(255));
  ellipse(x, y, 100, 75);
  //beak
  fill(252, 146, 5);
  triangle(147.5, 40, 175, 50, 150, 50);
  triangle(150, 50, 175, 50, 147.5, 60);
  //eyes
  fill(255);
  ellipse(125, 40, 25, 25);
  fill(0);
  ellipse(125, 40, 10, 10);
  //hair
  fill(random(255), random(255), random(255), random(255));
  triangle(130, 20, 115, 0, 115, 15);
  triangle(115, 15, 100, 0, 100, 12.5);
  triangle(100, 12.5, 90, 0, 90, 12.5);
  triangle(90, 12.5, 80, 2.5, 80, 15);
  
  //wings
  bezier(52.5, 60,    25, 30,     25, 30,     55, 35);
  }
}