//declare class 
bird mybird;

void setup(){
  size(500, 500);
  //initalise
  mybird = new bird(100, 50);
}

void draw(){
  mybird.display();
}