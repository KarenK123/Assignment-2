void background(){//make background gradient with for loop
int r = 0;
int g = 0;
int b;
  
for( int i=0; i < height; i++){
  stroke(r, g, i, i);
  line(0, i, width, i);
  noStroke();
}

float holezone = height*.75;
fill(201, 199, 199);
rect(0, holezone, width, holezone);
}