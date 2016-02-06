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
    //900 500
   float wbird = (width/15);
   float hbird = (height/12.5);
  //center to right side of bird
  float radius1 = (xcent+(wbird/2));
  //center to left side of bird
  float radius2 = (xcent-(wbird/2));
  //center to top of birds head
  float radiust = (ycent-(hbird/2));
  
  fill(105, 0, 105);
  ellipse(xcent, ycent, wbird, hbird);
  
  
  //beak
  fill(252, 146, 5);
  stroke(0);
  
  triangle(radius1, ycent, 
  radius1-(wbird / 12), ycent-(wbird / 6), 
  radius1+(wbird / 3), ycent);
  
  triangle(radius1, ycent, 
  radius1-(wbird / 12), ycent+(wbird / 6), 
  radius1+(wbird / 3), ycent);
 
  //eyes
  noStroke();
  fill(255);
  ellipse(xcent+(wbird / 4), ycent, (wbird / 4), (wbird / 4));
  fill(0);
  ellipse(xcent+(wbird / 4), ycent, (wbird / 8), (wbird / 8));
  
  
  //hair
  //cant put in for loop because of ellipse slope
  fill(255, 0, 0);
 //for(float x=0)
  triangle(xcent, radiust, xcent, radiust-(hbird / 4), xcent+(hbird / 4), radiust+(hbird / 24) );
  triangle(xcent-(hbird / 4), radiust, xcent-(hbird / 4), radiust-(hbird / 4), xcent, radiust );
  triangle(xcent-(hbird / 2), radiust+(hbird / 8), xcent-(hbird / 2), radiust-(hbird / 4), xcent-(hbird / 4), radiust);
  
   
  //wings
  fill(0, 255, 0);
  bezier(radius2, ycent+(wbird / 12),
  radius2-(wbird / 3), ycent-(wbird / 3),
  radius2-(wbird / 3), ycent-(wbird / 3),
  radius2+(wbird / 30), ycent-(wbird / 6));
  
  }
  
}