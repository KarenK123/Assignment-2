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
   
   
   fill(255, 255, 255, 2);
    clouds();
    
    

  }
  fish();
  penguin();
   centerX=width/2;
  centerY=height/2;

}

 float centerX;
  float centerY;
  


void draw(){
  //ice - the playing field
  fill(168, 187, 201, 206);
  rect(0, centerX, width, centerY);
  /*//hole
  fill(0);
  ellipse(centerX, centerY+150, 150, 50);*/
  
}






 