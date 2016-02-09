//declaring classes
//bird
bird mybird;
bird mybird2;
bird mybird3;
//clouds
cloud myclouds;
//cloud myclouds2;
//fish
fish myfish;
hole holes;
penguin mypenguin;


void setup(){
  size(900, 500);
  
float holezone = (height*.75);
float dangerzone = (height*.25);

  //fullScreen();
  background();
  //initalise
  //bird
  mybird = new bird((width/3), (dangerzone + height/10), 3);
  mybird2 = new bird(0, (dangerzone + height /20), 3);
  mybird3 = new bird((width/1.8), (dangerzone + height/30), 3);
  //clouds
  myclouds = new cloud(0, 40, 3);
  //myclouds2 = new cloud(300, 40, 3);
  //fish
  myfish= new fish(350, 350);
  holes = new hole((width/7.5), (height/10));
  mypenguin = new penguin(250, 300);
}

void draw(){
  background();
  //clouds
  myclouds.display();
  myclouds.move();
 // myclouds2.display();
 // myclouds2.move();
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