void setup(){
  size(500, 200);
  bird();
}


void draw(){
}


void bird(){
  
  fill(random(255), random(255), random(255), random(255));
  ellipse(200, 100, 200, 150);
  //beak
  fill(252, 146, 5);
  triangle(295, 80, 350, 100, 300, 100);
  triangle(300, 100, 350, 100, 295, 120);
  //eyes
  fill(255);
  ellipse(250, 80, 50, 50);
  fill(0);
  ellipse(250, 80, 20, 20);
  //hair
  fill(random(255), random(255), random(255), random(255));
  triangle(260, 40, 230, 0, 230, 30);
  triangle(230, 30, 200, 0, 200, 25);
  triangle(200, 25, 180, 0, 180, 25);
  triangle(180, 25, 160, 5, 160, 30);
  
  //wings
  bezier(105, 120,    50, 60,     50, 60,     110, 70);
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  //wings
  fill(random(255), random(255), random(255));
  //float l= 80; l bigger than t to flip
     
  /*float m= 200;
    float p= 90;
  float k= 100;
 //   float l= 10;
  float z= 50;
  //  float t= 60;
  float q= 100;
  //  float j=80;
  
  
  for(float l=10; l<80; l+=30){
    for(float t=60; t<130; t+=30){
      for(float j=80; j<150; j+=30){
        bezier(m, p, k, l, z, t, q, j);
      }
    }
  }
  */
  
 /* bezier(m, p, k, l+10, z, t+10, q, j+10);
  bezier(m, p, k, l+20, z, t+20, q, j+20);
  bezier(m, p, k, l+30, z, t+30, q, j+30);
  bezier(m, p, k, l+40, z, t+40, q, j+40);
  bezier(m, p, k, l+50, z, t+50, q, j+50);
  6 wings
  */

  

  
 
}


































/*
void setup(){
  size(500, 200);
  bird();
}

void draw(){
}


void bird(){
  fill(random(255), random(255), random(255), random(255));
  ellipse(200, 100, 200, 150);
  //beak
  fill(252, 146, 5);
  triangle(295, 80, 350, 100, 300, 100);
  triangle(300, 100, 350, 100, 295, 120);
  //eyes
  fill(255);
  ellipse(250, 80, 50, 50);
  fill(0);
  ellipse(250, 80, 20, 20);
  //hair
  fill(random(255), random(255), random(255), random(255));
  triangle(260, 40, 230, 0, 230, 30);
  triangle(230, 30, 200, 0, 200, 25);
  triangle(200, 25, 180, 0, 180, 25);
  triangle(180, 25, 160, 5, 160, 30);
  
  //wings
  fill(random(255), random(255), random(255));
  
  for(int m=200; m<=300; m=5){
    bezier(200, 80, 100, 30, 50, 60, 100, 60);
  }
 
}



/*
  for(int m=200; m<=150; m*=5){
    for(int k=100; k<=200; k+=10){
      for(int q=100; q<=0; q*=10){
        for(int l=30; l<=80; l+=5){
          for(int z=50; z<=100; z+=5){
            for(int t=60; t<=110; t+=5){
            }
          }
        }
      }
    }
  }
//bezier(m-5, p, k+10, l+5, z+5, t+5, q-10, t+5);
//bezier(200, 80, 100, 30, 50, 60, 100, 60);
//float m= 200;
  //float k= 100;
  //float q= 100;
  //float l= 30;
  //float z= 50;
  //float t= 60;
 // float p= 80;
//bezier(m, p, k, l, z, t, q, t);
*/