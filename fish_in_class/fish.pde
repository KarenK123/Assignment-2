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
  bezier(x, y+16.5, x+16.5, y+30.5, x+33, y+30.5, x+50, y+16.5);
  bezier(x, y+16.5, x+16.5, y, x+33, y, x+50, y+16.5);
  //tail
  triangle(x+50, y+16.5, x+66.5, y+8, x+66.5, y+25);
  //eye
  ellipse(x+13, y+13, x+5, y+5);
  fill(0);
  ellipse(x+13, y+13, x+1.5, y+1.5);
  
}
}