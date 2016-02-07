//declaring classes
bird mybird;
bird mybird2;
bird mybird3;
cloud myclouds;
fish myfish;
hole holes;
penguin mypenguin;


void setup(){
  size(900, 500);
  background();
  //initalise
  mybird = new bird(300, 150, 3);
  mybird2 = new bird(0, 180, 3);
  mybird3 = new bird(500, 200, 3);
  myclouds = new cloud(0, 40, 3);
  myfish= new fish(350, 350);
  holes = new hole((width/7.5), (height/10));
  mypenguin = new penguin(250, 300);
}

void draw(){
  background();
  //clouds
  myclouds.display();
  myclouds.move();
  //bird
  mybird.display();
  mybird2.display();
  mybird3.display();
  mybird.move();
  mybird2.move();
  mybird3.move();
  //fish
  myfish.display();
  //holes
  holes.display();
  mypenguin.display();
}