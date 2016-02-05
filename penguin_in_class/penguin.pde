//create class
class penguin{
  //x, coord of head
  float xhead;
  float yhead;
  //width, height of head
  float whead;
  float hhead;
  
  //constructor
  penguin(float _xhead, float _yhead, float _whead, float _hhead){
    xhead = _xhead;
    yhead = _yhead; 
    whead = _whead;
    hhead = _hhead;
    
  }
  
  //create function 
  void display(){
    
  float xradius = (xhead - (whead / 2));
  float xradius2 = (xhead + (whead / 2));
  //bottom of body
  float byhead = (yhead+100);
  
  //head
  fill(0);
  arc(xhead, yhead, whead, hhead, PI, TWO_PI);
  
  //body starts where arc of head starts
  fill(0);
  rect((xhead - (whead / 2)), yhead, whead, 100);
  
  //arms left then right
  fill(0);
  bezier(xradius, yhead, (xradius-25), (yhead), (xradius-15), (yhead+40), xradius, yhead+100); 
  bezier(xradius2, yhead, (xradius2+25), (yhead), (xradius2+15), (yhead+40), xradius2, yhead+100);
  
  //white body
  fill(255);
  arc(xhead, byhead, 80, 180, PI, TWO_PI);
  
   
  //feet
  fill(0);
  ellipse(xhead-40, byhead, 80, 25);
  ellipse(xhead+40, byhead, 80, 25);
  
  
  //eyes
  fill(255);
  ellipse(xhead-20, yhead-50, 30, 30);
  ellipse(xhead+20, yhead-50, 30, 30);
  fill(0);
  ellipse(xhead-20, yhead-50, 15, 15);
  ellipse(xhead+20, yhead-50, 15, 15);
  
  
  //beak
  fill(252, 165, 3);
  ellipse(xhead, yhead-25, 25, 25);
  bezier((xhead-12.5), (yhead-25), xhead, (yhead+15), xhead, (yhead+15), (xhead+12.5), (yhead-25));
  
  }
  
}