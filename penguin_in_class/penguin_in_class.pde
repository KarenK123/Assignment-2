//declare class
penguin mypenguin;

void setup(){
  size(500, 500);
  mypenguin = new penguin(100, 100, 100, 200);
}

void draw(){
 //call function
 mypenguin.display();
}