//create class 
class fish{
  
  float speed;
  
  //constructor
  fish(float _speed){
     speed = _speed;
  }
  
  //create function
  void display(){
  
    //900 500
  
  //orbiting ellipse
  float holezone = (height*.75);
  float dangerzone = (height*.25);
  
  /*float x = sin(val);
  float y = cos(val);
  //x and y and with and height of orbit
  x *= (width/3);
  y *= (height/3);
  //the center point of the ellipse
  x+= (width/2);
  y+= (holezone-(width/15));
  fill(255);
  //ellipse(x, y, 20, 20);
  //val += speed;*/
    
    
    
  //float x = 350;
  //float y = 350;
  float t = (frameCount/100.0)%10;
  float x = bezierPoint((width/1.4), (width/1.4)-(width/8), (width/1.4)-(width/4), (width/1.4)-(width/2), t);
  float y = bezierPoint( holezone+(height/10), dangerzone, dangerzone, holezone+(height/10), t);
  
  float fishw = (width/18);
  float fishh = (height/16.393);
  float tailw = (fishw/3.03);
  float tailh = (fishh/1.794);
    
  //body fish
  fill(125);
  bezier(x, y, x+(fishw/3.03), y+(fishh/1.848), x+(fishw/1.51), y+(fishh/1.848), x+fishw, y);
  bezier(x, y, x+(fishw/3.03), y-(fishh/1.848), x+(fishw/1.51), y-(fishh/1.848), x+fishw, y);
  //tail
  fill(0);
  triangle(x+fishw, y, x+(fishw+tailw), y-(tailh/2), x+(fishw+tailw), y+(tailh/2));
  //eye
  fill(159);
  ellipse(x+(fishw/3.84), y-(fishh/8.71), (fishw/10), (fishh/6.1));
  fill(0);
  ellipse(x+(fishw/3.84), y-(fishh/8.71), (fishw/33.3), (fishh/20.33));
  
  
 // val += speed;
  
  
}
}