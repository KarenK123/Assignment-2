//create class 
class fish{
  float x;
  float y;
  
  //constructor
  fish(float _x, float _y){
    x = _x;
    y = _y;
  }
      
  //create function
  void display(){
  
    //900 500
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
}
}