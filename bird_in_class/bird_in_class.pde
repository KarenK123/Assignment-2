//declare class 
bird mybird;

void setup(){
  size(500, 500);
  //initalise
  mybird = new bird(300, 300);
}

void draw(){
  mybird.display();
}