//declaring classes
bird mybird;
cloud myclouds;
fish myfish;
hole holes;
penguin mypenguin;


void setup(){
  size(900, 500);
  background();
  //initalise
  mybird = new bird(850, 150);
  myclouds = new cloud(0, 40);
  myfish= new fish(350, 350);
  holes = new hole((width/7.5), (height/10));
  mypenguin = new penguin(250, 300);
}

void draw(){
  myclouds.display();
  mybird.display();
  myfish.display();
  holes.display();
  mypenguin.display();
}