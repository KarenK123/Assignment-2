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
//fish myfish2;
//fish myfish3;
//holes
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
  myclouds = new cloud(0, (width/12.5), 2);
  //myclouds2 = new cloud(300, 40, 3);
  //fish
  myfish= new fish(5);
  //myfish2= new fish(0.1);
  //myfish3= new fish(3);
  
  holes = new hole((width/6), (height/10));
  //(width/15) is whead width of head
  mypenguin = new penguin((width/2), (holezone-(width/15)));
  //myorbit = new orbit(0.02);
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
 // myfish2.display();
  //myfish3.display();
  //holes
  holes.display();
  mypenguin.display();
}