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
  
PrintWriter output;

void setup(){
  size(900, 500);
  background();
  //stats file
  output = createWriter("stats.txt"); 
  //loading font
  font = loadFont("snap40.vlw");
  textFont(font);
  
  //variables
  holezone = (height*.75);
  dangerzone = (height*.25);
  zonez = (height/10);
  ycoord = (holezone-(width/15));
  yhead = ycoord;
  
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
  myfish= new fish((width/18) + ((width/18)/3.03), 
  (bezierPoint((width/1.4), width/2, (width/2 - width/8 ), (width/4), t)), 
  (bezierPoint( holezone+(zonez), dangerzone-(zonez), dangerzone-(zonez),  holezone+(zonez), t)), 
  (frameCount/100.0)%1);
  holes = new hole((width/6), (zonez));
  mypenguin = new penguin((width/15), (width/2), (holezone-(width/15)));
}

//global variables
float dir= 0;
float speed = 12;
float holezone;
float dangerzone;
//zonez added or minus holezone or dangerzone 
float zonez;
float ycoord;
float yhead;
float t;
float x;
float y;

int mode = 0;


void keyPressed()
{
  //if space is pressed, then penguin will jump
  if(key == 'l'){
    output.flush();  // Writes the remaining data to the file
    output.close();  // Finishes the file
  }
  if(key==' '){
  if (dir == 0)  dir = -speed;
  }
  
  if (key >= '0' && key <='9')
  {
    mode = key - '0';
  }
  println(mode);
}