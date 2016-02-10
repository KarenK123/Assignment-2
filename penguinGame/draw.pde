void draw(){
  switch (mode)
  {
    
    
    case 0:
      homepage();
      myclouds.display();
      //holes
      holes.display();
    break;
  
  
  case 1:
    background();
    //clouds
    myclouds.display();
    myclouds.move();
    //bird
    mybird.display();
    mybird.move();
    //holes
    holes.display();
    //fish
    myfish.display();
    mypenguin.display();
    //penguin moving
    if (dir != 0)  move();
    //score taken away
    if( dist( mybird.xcent, mybird.ycent, mypenguin.xhead, yhead) < mybird.wbird + mypenguin.whead ){
     lose();
    }
    if( dist( x, y, mypenguin.xhead, yhead) < myfish.fishBody + mypenguin.whead ){
        win();
    }
  break;
  
  
  
  case 2:
    background();
    //clouds
    myclouds.display();
    myclouds.move();
    //bird
    mybirdm.display();
    mybird2m.display();
    mybirdm.move();
    mybird2m.move(); 
    //holes
    holes.display();
    //fish
    myfish.display();
    mypenguin.display();
    //penguin moving
    if (dir != 0)  move();
    //score taken away
    if( dist( mybirdm.xcent, mybirdm.ycent, mypenguin.xhead, yhead) < mybirdm.wbird + mypenguin.whead ){
      lose();
    }
    if( dist( mybird2m.xcent, mybird2m.ycent, mypenguin.xhead, yhead) < mybird2m.wbird + mypenguin.whead ){
      lose();
    }
    if( dist( myfish.x, myfish.y, mypenguin.xhead, yhead) < myfish.fishBody + mypenguin.whead ){
      win();
    }
  break;
  
  
  
  case 3:
    background();
    //clouds
    myclouds.display();
    myclouds.move();
    //bird
    mybirdh.display();
    mybird2h.display();
    mybird3h.display();
    mybirdh.move();
    mybird2h.move(); 
    mybird3h.move(); 
    //holes
    holes.display();
    //fish
    myfish.display();
    mypenguin.display();
    //penguin moving
    if (dir != 0)  move();
    //score taken away
    if( dist( mybirdh.xcent, mybirdh.ycent, mypenguin.xhead, yhead) < mybirdh.wbird + mypenguin.whead ){
      lose();
    }
    if( dist( mybird2h.xcent, mybird2h.ycent, mypenguin.xhead, yhead) < mybird2h.wbird + mypenguin.whead ){
      lose();
    }
    if( dist( mybird3h.xcent, mybird3h.ycent, mypenguin.xhead, yhead) < mybird3h.wbird + mypenguin.whead ){
      lose();
    }
    if( dist( x, y, mypenguin.xhead, yhead) < myfish.fishBody + mypenguin.whead ){
      win();
    }
 break;
}



//winner and loser text files
if(score < -150){
  String lines[] = loadStrings("loser.txt");
  for (int i = 0; i < lines.length; i++) {
    fill(255);
    text(lines[i] +score, (0), (height/2), (width/2), (height/2));  // Text wraps within text box
  }
}

if(score > 150){
  String lines[] = loadStrings("winner.txt");
  for (int i = 0; i < lines.length; i++) {
    fill(255);
    text(lines[i] +score, (0), (height/2), (width/2), (height/2));  // Text wraps within text box
  }
}

}//end draw()