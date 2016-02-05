//declaring cloud class
cloud myclouds;

void setup(){
  size(500, 500);
  myclouds = new cloud(80, 40, 80+60, 80+30, 40+30, 80+5, 40+35);
}

void draw(){
  myclouds.display();
}