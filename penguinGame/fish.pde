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
  
  //body fish
  fill(0);
  bezier(x, y+16.5, x+16.5, y+30.5, x+33, y+30.5, x+50, y+16.5);
  bezier(x, y+16.5, x+16.5, y, x+33, y, x+50, y+16.5);
  //tail
  fill(0);
  triangle(x+50, y+16.5, x+66.5, y+8, x+66.5, y+25);
  //eye
  fill(0);
  ellipse(x+13, y+13, 5, 5);
  fill(0);
  ellipse(x+13, y+13, 1.5, 1.5);
  
}
}