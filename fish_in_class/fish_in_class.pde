//declare class
fish myfish;
hole holes;


void setup(){
  size(900, 500);
  fill(200, 200, 200);
  background();
  stroke(255);
  float holezone = height*.75;
  float dangerzone = height*.25;
  myfish= new fish((width/1.4), (holezone+(height/10)));
  holes = new hole((width/8), (height/10));
  
}

void draw(){
  background();
  myfish.display();
  holes.display();
  
  //curve ball
  float dangerzone = (height*.25);
  float holezone = (height*.75);
  float t = (frameCount/100.0)%10;
  
  smooth();
  noFill();
 
  float x2 = bezierPoint((width/1.4), (width/1.4)-(width/8), (width/1.4)-(width/4), (width/1.4)-(width/2), t);
  float y2 = bezierPoint( holezone+(height/10), dangerzone, dangerzone, holezone+(height/10), t);
 
 fill(255,0,0);
  ellipse(x2, y2, 35, 35);
  
 
}