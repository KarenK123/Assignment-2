//create class
class bird{
  float xcent;
  float ycent;
  
  
  //consrtuctor
  bird(float _xcent, float _ycent){
    xcent = _xcent;
    ycent = _ycent;
    
  }
  
  //create function
  void display(){
    
   float wbird = 80;
   float hbird = 50;
  //center to right side of bird
  float radius1 = (xcent+(wbird/2));
  //center to left side of bird
  float radius2 = (xcent-(wbird/2));
  //center to top of birds head
  float radiust = (ycent-(hbird/2));
  
  fill(random(255), random(255), random(255), random(255));
  ellipse(xcent, ycent, wbird, hbird);
  
  
  //beak
  fill(252, 146, 5);
  triangle(radius1, ycent, radius1-5, ycent-10, radius1+20, ycent);
  triangle(radius1, ycent, radius1-5, ycent+10, radius1+20, ycent);
 
  //eyes
  fill(255);
  ellipse(xcent+15, ycent, 15, 15);
  fill(0);
  ellipse(xcent+15, ycent, 5, 5);
  
  
  //hair
  fill(random(255), random(255), random(255), random(255));
  triangle(xcent, radiust, xcent, radiust-15, xcent+10, radiust );
  triangle(xcent-10, radiust, xcent-10, radiust-15, xcent, radiust );
  triangle(xcent-20, radiust+5, xcent-20, radiust-15, xcent-10, radiust );
  
   
  //wings
  bezier(radius2, ycent+5,
  radius2-20, ycent-30,
  radius2-20, ycent-30,
  radius2+2, ycent-10);
  
  }
  
}