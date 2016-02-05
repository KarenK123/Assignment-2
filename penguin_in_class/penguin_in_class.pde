//declare class
penguin mypenguin;

void setup(){
  size(500, 500);
  mypenguin = new penguin(0, 0);
}

void draw(){
  
 //call function
 mypenguin.display();
}