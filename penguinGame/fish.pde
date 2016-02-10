//moving fish class

//create class 
class fish{
  
  float fishBody;
  float x;
  float y;
  float t;
  
  fish(float _fishBody, float _x, float _y, float _t){
    fishBody = _fishBody;
    x = _x;
    y = _y;
    t = _t;
  }
  
  //create function
  void display(){
  
  float t = (frameCount/100.0)%1;
  
  float holezone = (height*.75);
  float dangerzone = (height*.25);
  float zonez = (height/10);

  // seperate x and y coordinates that i want the fish to move along curve
  float x = bezierPoint((width/1.4), width/2, (width/2 - width/8 ), (width/4), t);
  float y = bezierPoint( holezone+(zonez), dangerzone-(zonez), dangerzone-(zonez),  holezone+(zonez), t);
  noFill();
  stroke(0);
  //arc(width/2+, holezone+zonez, width/2, height, PI, TWO_PI);
  
  
  float fishw = (width/18);
  float fishh = (height/16.393);
  float tailw = (fishw/3.03);
  float tailh = (fishh/1.794);
    
  //body fish
  fill(128);
  bezier(x, y, x+(fishw/3.03), y+(fishh/1.848), x+(fishw/1.51), y+(fishh/1.848), x+fishw, y);
  bezier(x, y, x+(fishw/3.03), y-(fishh/1.848), x+(fishw/1.51), y-(fishh/1.848), x+fishw, y);
  //tail
  fill(0);
  triangle(x+fishw, y, x+(fishw+tailw), y-(tailh/2), x+(fishw+tailw), y+(tailh/2));
  //eye
  fill(225);
  ellipse(x+(fishw/3.84), y-(fishh/8.71), (fishw/10), (fishh/6));
  fill(0);
  ellipse(x+(fishw/3.84), y-(fishh/8.71), (fishw/33.3), (fishh/6.5));
  
 
}
}