//create class
class penguin{
  //x, coord of head
  float xhead;
  float yhead;
  
  
  //constructor
  penguin(float _xhead, float _yhead){
    xhead = _xhead;
    yhead = _yhead;
  }
  
  //create function 
  void display(){
    
  //width, height of head
  float whead=(width/15); //60
  float hhead=(height/5); //100
  
  //radius to left of xhead and radius to right of head 
  float xradius = (xhead - (whead / 2));
  float xradius2 = (xhead + (whead / 2));
  //bottom of body y coord
  float bybody = (yhead+(height/5));
  
  //head
  fill(0);
  arc(xhead, yhead, whead, hhead, PI, TWO_PI);
  
  //body starts where arc of head starts
  fill(0);
  rect((xhead - (whead / 2)), yhead, whead, hhead);
  
  //arms left then right
  fill(0);
  bezier(xradius, yhead, (xradius-(whead/2.4)), (yhead), (xradius-(whead/4)), (yhead+(hhead/2.5)), xradius, bybody); 
  bezier(xradius2, yhead, (xradius2+(whead/2.4)), (yhead), (xradius2+(whead/4)), (yhead+(hhead/2.5)), xradius2, bybody);
  
  //white body
  fill(255);
  arc(xhead, bybody, (whead/1.5), (hhead/.8333), PI, TWO_PI);
  //arc(xhead, bybody, 40, 120, PI, TWO_PI);
  
   
  //feet
  fill(0);
  ellipse(xhead-(whead/2), bybody, whead, (hhead/5));
  ellipse(xhead+(whead/2), bybody, whead, (hhead/5));
  
  
  //eyes
  fill(255);
  ellipse(xhead-(whead/6), yhead-(whead/2), (whead/3), (hhead/5));
  ellipse(xhead+(whead/6), yhead-(whead/2), (whead/3), (hhead/5));
  fill(0);
  ellipse(xhead-(whead/6), yhead-(whead/2), (whead/6), (hhead/10));
  ellipse(xhead+(whead/6), yhead-(whead/2), (whead/6), (hhead/10));
  
  
  //beak
  fill(252, 165, 3);
  ellipse(xhead, yhead-(hhead/10), (whead/3), (hhead/5));
  bezier((xhead-(whead/6)), (yhead-(hhead/10)), 
  xhead, (yhead+(hhead/3.3333)), 
  xhead, (yhead+(hhead/3.3333)), 
  (xhead+(whead/6)), (yhead-(hhead/10)));
  
  }
  
}