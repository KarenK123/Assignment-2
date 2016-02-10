//the class governing the holes which the fish come out of
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
    fill(0);
   
   for(float occurrence=(width/4); occurrence<=1500; occurrence+=(width/2)){
     ellipse(occurrence, holezone+(zonez), hwidth, hheight);
    }
}

}