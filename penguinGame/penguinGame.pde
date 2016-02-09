//declaring classes
//bird
bird mybird;
bird mybird2;
//clouds
cloud myclouds;
//fish
fish myfish;
//holes
hole holes;
penguin mypenguin;


void setup(){
  size(900, 500);
  background();
  
  //variables
  holezone = (height*.75);
  dangerzone = (height*.25);
  zonez = (height/10);
  ycoord = (holezone-(width/15));
  xhead= (width/2);
  yhead = ycoord;
  
  //initalise classes
  //bird
  mybird = new bird(0, ((dangerzone) + (height/10)), 2.5);
  mybird2 = new bird((width/2), ((dangerzone) + (height/20)), 2.5);
  myclouds = new cloud(0, (width/12.5), .11);
  myfish= new fish(5);
  holes = new hole((width/6), (zonez));
  mypenguin = new penguin((width/15));
  
  
}

float dir= 0;
float speed = 8;
float holezone;
float dangerzone;
//zonez added or minus holezone or dangerzone 
float zonez;
float ycoord;
float xhead;
float yhead;


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
  mybird.move();
  mybird2.move(); 
  //fish
  myfish.display();
  //holes
  holes.display();
  mypenguin.display();
  if (dir != 0)  move();
  
}