//create class
class hole{
  float hwidth;
  float hheight;
  
  //constructor
  hole(float _hwidth, float _hheight){
    hwidth = _hwidth;
    hheight = _hheight;
  }
  
  void display(){
   float holezone = height*.75;
   
   for(float occurrence=100; occurrence<=1500; occurrence+=400){
     ellipse(occurrence, holezone+(height/10), hwidth, hheight);
    }
}

}