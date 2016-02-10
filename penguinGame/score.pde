float score =0;



void lose(){
  println("noooo");
    score--;
    println(score);
    text("score:" +score, width-200, 20);
}

void win(){
  
   println("yessssss");
    score++;
    println(score);
    text("score:" +score, width-200, 20);
  
}