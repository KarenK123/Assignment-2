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
  clouds();
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
 
 noStroke();
 fill(255, 255, 255, 2);
 ellipse(x, y, 50, 50);
 ellipse(z, y, 50, 50);
 ellipse(m, y, 50, 50);
 ellipse(p, k, 50, 50);
 ellipse(z, t, 50, 50);
 ellipse(m, k, 50, 50);
 
 //cloud 2
 float c2 = 150;
 float c2y = 20;
 ellipse(x+c2, y+c2y, 50, 50);
 ellipse(z+c2, y+c2y, 50, 50);
 ellipse(m+c2, y+c2y, 50, 50);
 ellipse(p+c2, k+c2y, 50, 50);
 ellipse(z+c2, t+c2y, 50, 50);
 ellipse(m+c2, k+c2y, 50, 50);
 
 //cloud 3
 float c3 = 300;
 float c3y = 0;
 ellipse(x+c3, y+c3y, 50, 50);
 ellipse(z+c3, y+c3y, 50, 50);
 ellipse(m+c3, y+c3y, 50, 50);
 ellipse(p+c3, k+c3y, 50, 50);
 ellipse(z+c3, t+c3y, 50, 50);
 ellipse(m+c3, k+c3y, 50, 50);
 
 //cloud 4
 float c4 = 450;
 float c4y = 20;
 ellipse(x+c4, y+c4y, 50, 50);
 ellipse(z+c4, y+c4y, 50, 50);
 ellipse(m+c4, y+c4y, 50, 50);
 ellipse(p+c4, k+c4y, 50, 50);
 ellipse(z+c4, t+c4y, 50, 50);
 ellipse(m+c4, k+c4y, 50, 50);
  
}
