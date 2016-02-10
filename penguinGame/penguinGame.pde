PFont font;
//declaring classes
//bird easy
bird mybird;
//bird med
bird mybirdm;
bird2 mybird2m;
//bird hard
bird mybirdh;
bird2 mybird2h;
bird3 mybird3h;
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
  //med
  mybirdm = new bird(0, ((dangerzone) + (height/10)), 3.5, (width/15));
  mybird2m = new bird2((width/2), ((dangerzone) + (height/20)), 3.5, (width/15), 255);
  //hard
  mybirdh = new bird(0, ((dangerzone) + (height/10)), 5, (width/15));
  mybird2h = new bird2((width/1.5), ((dangerzone) + (height/20)), 5, (width/15), 255);
  mybird3h = new bird3((width/3), ((dangerzone) + (height/30)), 5, (width/15), 255);
  //clouds
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
float score=0;

int mode = 0;

void draw(){
  switch (mode)
  {
    case 0:
    homepage();
     myclouds.display();
      //holes
  holes.display();
  break;
  case 1:
  background();
  //clouds
  myclouds.display();
  myclouds.move();
  //bird
  mybird.display();
  mybird.move();
  //holes
  holes.display();
  //fish
  myfish.display();
  mypenguin.display();
  //penguin moving
  if (dir != 0)  move();
  //score taken away
  if( dist( mybird.xcent, mybird.ycent, mypenguin.xhead, yhead) < mybird.wbird + mypenguin.whead ){
    println("noooo");
    score--;
    println(score);
    text("score:" +score, width-200, 20);
  }
  if( dist( x, y, mypenguin.xhead, yhead) < myfish.fishBody + mypenguin.whead ){
    println("yessssss");
    score++;
    println(score);
    text("score:" +score, width-200, 20);
  }
  break;
  case 2:
    background();
  //clouds
  myclouds.display();
  myclouds.move();
  //bird
  mybirdm.display();
  mybird2m.display();
  mybirdm.move();
  mybird2m.move(); 
  //holes
  holes.display();
  //fish
  myfish.display();
  mypenguin.display();
  //penguin moving
  if (dir != 0)  move();
  //score taken away
  if( dist( mybirdm.xcent, mybirdm.ycent, mypenguin.xhead, yhead) < mybirdm.wbird + mypenguin.whead ){
    println("noooo");
    score--;
    println(score);
    text("score:" +score, width-200, 20);
  }
  if( dist( mybird2m.xcent, mybird2m.ycent, mypenguin.xhead, yhead) < mybird2m.wbird + mypenguin.whead ){
    println("noooo");
    score--;
    println(score);
    text("score:" +score, width-200, 20);
  }
  if( dist( x, y, mypenguin.xhead, yhead) < myfish.fishBody + mypenguin.whead ){
    println("yessssss");
    score++;
    println(score);
    text("score:" +score, width-200, 20);
  }
  break;
  case 3:
    background();
  //clouds
  myclouds.display();
  myclouds.move();
  //bird
  mybirdh.display();
  mybird2h.display();
  mybird3h.display();
  mybirdh.move();
  mybird2h.move(); 
  mybird3h.move(); 
  //holes
  holes.display();
  //fish
  myfish.display();
  mypenguin.display();
  //penguin moving
  if (dir != 0)  move();
  //score taken away
  if( dist( mybirdh.xcent, mybirdh.ycent, mypenguin.xhead, yhead) < mybirdh.wbird + mypenguin.whead ){
    println("noooo");
    score--;
    println(score);
    text("score:" +score, width-200, 20);
  }
  if( dist( mybird2h.xcent, mybird2h.ycent, mypenguin.xhead, yhead) < mybird2h.wbird + mypenguin.whead ){
    println("noooo");
    score--;
    println(score);
    text("score:" +score, width-200, 20);
  }
  if( dist( mybird3h.xcent, mybird3h.ycent, mypenguin.xhead, yhead) < mybird3h.wbird + mypenguin.whead ){
    println("noooo");
    score--;
    println(score);
    text("score:" +score, width-200, 20);
  }
  if( dist( x, y, mypenguin.xhead, yhead) < myfish.fishBody + mypenguin.whead ){
    println("yessssss");
    score++;
    println(score);
    text("score:" +score, width-200, 20);
  }
 break;
}
if(score < -150){
  text("YOU LOSE. Score:" + score, width/2, height/2);
}
if(score > 150){
  text("YOU WIN!!!. Score:" + score, width/2, height/2);
}
}




void keyPressed()
{
  //if space is pressed, then penguin will jump
  if(key==' '){
  if (dir == 0)  dir = -speed;
  }
  
  if (key >= '0' && key <='9')
  {
    mode = key - '0';
  }
  println(mode);
}