//declaring cloud class
cloud myclouds;

void setup(){
  size(900, 500);
  myclouds = new cloud(80, 40);
}

void draw(){
  myclouds.display();
}