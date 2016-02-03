void penguin(){//penguin

//head
noStroke();
  float x=0;
  float y=0;
  
  
  fill(0);
  arc(x+50, y+50, x+50, y+100, x+PI, y+TWO_PI);
  //arms
  fill(0);
  bezier(x+25, y+50, x+5, y+60, x+5, y+80, x+25, y+125);
  bezier(x+75, y+50, x+95, y+60, x+95, y+80, x+75, y+125);
  //body
  fill(0);
  rect(x+25, y+50, x+50, y+75);
  //white body
  fill(255);
  arc(x+50, y+130, x+35, y+100, x+PI, y+TWO_PI);
  //feet
  fill(0);
  ellipse(x+25, y+125, x+50, y+15);
  ellipse(x+75, y+125, x+50, y+15);
  //eyes
  fill(255);
  ellipse(x+40, y+25, x+15, y+15);
  ellipse(x+60, y+25, x+15, y+15);
  fill(0);
  ellipse(x+40, y+25, x+5, y+5);
  ellipse(x+60, y+25, x+5, y+5);
  //beak
  fill(252, 165, 3);
  ellipse(x+50, y+40, x+15, y+15);
  bezier(x+42.5, y+40, x+50, y+80, x+50, y+80, x+57.5, y+40);
  
}