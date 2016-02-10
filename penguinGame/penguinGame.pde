PFont font;
//declaring classes
//bird
bird mybird;
bird2 mybird2;
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
  //loading font
  font = loadFont("snap40.vlw");
  textFont(font);
  
  //variables
  holezone = (height*.75);
  dangerzone = (height*.25);
  zonez = (height/10);
  ycoord = (holezone-(width/15));
  yhead = ycoord;
  t = (frameCount/100.0)%1;
  x = bezierPoint((width/1.4), width/2, (width/2 - width/8 ), (width/4), t);
  y = bezierPoint( holezone+(zonez), dangerzone-(zonez), dangerzone-(zonez),  holezone+(zonez), t);
  
  
  //initalise classes
  //bird
  mybird = new bird(0, ((dangerzone) + (height/10)), 2.5, (width/15));
  mybird2 = new bird2((width/2), ((dangerzone) + (height/20)), 2.5, (width/15), 255);
  myclouds = new cloud(0, (width/12.5), 0.1);
  myfish= new fish((width/18) + ((width/18)/3.03));
  holes = new hole((width/6), (zonez));
  mypenguin = new penguin((width/15), (width/2), (holezone-(width/15)));
}

//global variables
float dir= 0;
float speed = 8;
float holezone;
float dangerzone;
//zonez added or minus holezone or dangerzone 
float zonez;
float ycoord;
float yhead;
float t;
float x;
float y;


void draw(){
    homepage();
    background();
  //clouds
  myclouds.display();
  myclouds.move();
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
  
  //penguin moving
  if (dir != 0)  move();
  
  
  
  //lives taken away
  if( dist( mybird.xcent, mybird.ycent, mypenguin.xhead, yhead) < mybird.wbird + mypenguin.whead ){
    println("noooo");
    lives--;
    println(lives);
  }
  if( dist( mybird2.xcent, mybird2.ycent, mypenguin.xhead, yhead) < mybird2.wbird + mypenguin.whead ){
    println("noooo");
    lives--;
    println(lives);
  }
  if( dist( x, y, mypenguin.xhead, yhead) < myfish.fishBody + mypenguin.whead ){
    println("yessssss");
    lives++;
    println(lives);
  }
}




void keyPressed()
{
  //if space is pressed, then penguin will jump
  if(key==' '){
  if (dir == 0)  dir = -speed;
  }
  
  /*if (key >= '0' && key <='9')
  {
    mode = key - '0';
  }
  println(mode);*/
}