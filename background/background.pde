//penguin catches the fish that come out of the hole
//angry birds try to kill the penguin
//the penguin can jump and duck
//the penguin has 1 minute to catch x fish
//if you do you move to the next round
//birds get quicker
//fish get quicker
//you have nine lives
//you can regain lives by some power up


void setup(){
  size(700, 500);
  
  //make background gradient with for loop
  int r = 0;
  int g = 0;
  int b;
  
  for( int i=0; i < height; i++){
    stroke(r, g, i, i);
    line(0, i, width, i);
    noStroke();
   fill(255, 255, 255, 10);
    clouds();
  }
  
 centerX=width/2;
centerY=height/2;

}

 float centerX;
  float centerY;
  


void draw(){
  //ice - the playing field
  fill(168, 187, 201, 206);
  rect(0, centerX, width, centerY);
  //hole
  fill(0);
  ellipse(centerX, centerY+150, 150, 50);
  
}


void clouds(){
  float x, y;
 x=80;
 y=40;
 
 float m = x+60;
 float z = x+30;
 float k = y+30;
 float p = x+5;
 float t = y+35;
 
 
 
 for(float c=0; c<=450; c+=300){
 float cy=0;
 ellipse(x+c, y+cy, 50, 50);
 ellipse(z+c, y+cy, 50, 50);
 ellipse(m+c, y+cy, 50, 50);
 ellipse(p+c, k+cy, 50, 50);
 ellipse(z+c, t+cy, 50, 50);
 ellipse(m+c, k+cy, 50, 50); 
 }
 
 
 for(float c=150; c<=450; c+=300){
 for(float cy2=20; cy2<=20; cy2+=20) {
 ellipse(x+c, y+cy2, 50, 50);
 ellipse(z+c, y+cy2, 50, 50);
 ellipse(m+c, y+cy2, 50, 50);
 ellipse(p+c, k+cy2, 50, 50);
 ellipse(z+c, t+cy2, 50, 50);
 ellipse(m+c, k+cy2, 50, 50); 
 }
 }

 
 
}
