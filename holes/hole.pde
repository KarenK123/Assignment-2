//create class
class hole{
  float occurrence;
  float hwidth;
  float hheight;
  
  //constructor
  hole(float _occurrence, float _hwidth, float _hheight){
    occurrence = _occurrence;
    hwidth = _hwidth;
    hheight = _hheight;
  }
  
  void display(){
    float holezone = height*.75;
   for(occurrence=100; occurrence<=1500; occurrence+=400){
     ellipse(occurrence, holezone+50, hwidth, hheight);
}
  }
}