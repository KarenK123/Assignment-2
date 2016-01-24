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
  
  float x;
  x=0;
  float y;
  y=0;
  float z;
  z=0;
  float k;
  k=0;
  float m;
  m=0;
  float q;
  q=0;
  
  //clouds
  //bezier(x, y, z, m, z, q, x, q);
  bezier(x+30, y+30, z+5, m+10, z+5, k+70, x+30, q+50);
  bezier(x+30, y+30, z, m+10, z+10, k+70, x+40, q+50);
  
  
  
  
}
