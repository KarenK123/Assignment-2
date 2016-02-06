void setup(){
size(700, 500);
  
//make background gradient with for loop
int r = 0;
int g = 0;
int b;
  
for( int i=0; i < height; i++){
  stroke(r, g, i, i);
  line(0, i, width, i);
  noStroke();
}

  
}






void draw(){
  
  //fill(255, 0, 0);
  float dangerzone = height *.25;
  //rect(0, dangerzone, width, dangerzone);
  //fill(0, 255, 0);//green
  float holezone = height*.75;
  //rect(0, holezone, width, holezone);
  
  
  //ice - the playing field
  fill(168, 187, 201, 206);
  rect(0, holezone, width, holezone);
  //holes
  fill(0);
  
  
  
  fill(0);
  //float x = 100;
 for(float x=100; x<=1500; x+=400){
  ellipse(x, holezone+50, 120, 50);
  }


  
  
  
}






 