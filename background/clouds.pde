//clouds
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