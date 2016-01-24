void setup(){
  size(700, 500);
  
  //make background gradient with for loop
  int r = 0;
  int g = 0;
  int b;
  
  for( int i=0; i < height; i++){
    stroke(r, g, i, i);
    line(0, i, width, i);
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
 
 //clouds
 float x, y;
 x=50;
 y=50;
 noStroke();
 fill(255, 255, 255, 2);
 ellipse(x, y, 50, 50);
 ellipse(x+30, y, 50, 50);
 ellipse(x+60, y, 50, 50);
 ellipse(x+5, y+30, 50, 50);
 ellipse(x+30, y+35, 50, 50);
 ellipse(x+60, y+30, 50, 50);
  
  
}
