void setup(){
  size(500, 500);
  background(0); 
  // This code will print all the lines from the source text file.
  String[] lines = loadStrings("WelcomeMessage.txt");
  println(lines);
  
  fill(255);
  textSize(30);
  text("Welcome to the game!" , 10, 30);
  text("You have nine lives... ", 10, 60);
  text("get ready to play...", 10, 90);
  
  centerX = width / 2;
  centerY = height / 2;
  
  offsetW = width * 0.3f;
  offsetH = height * 0.3f;
  left = centerX - offsetW / 2;
  top = centerY - offsetH / 2;  
  toggled = false;
}

  
  
  float centerX, centerY;
  float left, top, offsetW, offsetH;

  boolean toggled;
  
  
void draw(){
  

  //game play button
  if (toggled)
  {
    stroke(255,0,0);
    fill(255,0,0);
  }
  else
    {
      stroke(128);
      fill(128);    
    }    
  
  rect(left, top, offsetW, offsetH);  
  stroke(255, 0, 0);
  fill(255, 0, 0);
  textAlign(CENTER);
   text("PLAY", centerX, centerY);
}



//if rectangle is clicked, game will start
void mouseClicked()
{
  if ((mouseX > left) && (mouseX < left + offsetW) && (mouseY > top) && (mouseY < top + offsetH)) 
  {
    toggled = ! toggled;
  }  
}
  
 
