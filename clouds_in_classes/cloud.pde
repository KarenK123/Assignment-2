//clouds

//creating class
class cloud{
 float x;
 float y;
 float m;
 float z;
 float k;
 float p;
 float t;
 
 //constructor
 cloud(float _x, float _y, float _m, float _z, float _k, float _p, float _t){
   x = _x;
   y = _y;
   m = _m;
   z = _z;
   k = _k;
   p = _p;
   t = _t;
 }
 
 //creating function
 void display(){
   
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
}
 