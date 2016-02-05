//declare class
fish myfish;

void setup(){
  size(500, 500);
  fill(200, 200, 200);
  stroke(255);
  myfish= new fish(0, 0);
}

void draw(){
  myfish.display();
}