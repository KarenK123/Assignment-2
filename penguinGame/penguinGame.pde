float dir= 0;
float speed = 4;
float holezone = 375;
float dangerzone = 125;
//zonez added or minus holezone or dangerzone 
float zonez = (height/10);
float ycoord = ((holezone-(zonez)));
float xhead= 450;
float yhead = ycoord;

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
  
float holezone = (height*.75);
float dangerzone = (height*.25);
//zonez added or minus holezone or dangerzone 
float zonez = (height/10);


  background();
  //initalise
  //bird
  mybird = new bird(0, (dangerzone + zonez), 2.5);
  mybird2 = new bird((width/2), (dangerzone + height/20), 2.5);
  myclouds = new cloud(0, (width/12.5), .11);
  myfish= new fish(5);
  holes = new hole((width/6), zonez);
  //(width/15) is whead width of head
  mypenguin = new penguin(5);
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
  mybird.move();
  mybird2.move(); 
  //fish
  myfish.display();
  //holes
  holes.display();
  mypenguin.display();
  if (dir != 0)  move();
}


void keyPressed() {
  if (dir == 0)  dir = -speed;
}
 

 
void move() {
  if ((yhead += dir) < dangerzone)  dir *= -1;
 
  else if (yhead > ycoord) {
    dir = 0;
    yhead = ycoord;
  }
}