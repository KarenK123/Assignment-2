//thsi is the homepage, where the instructions are given

void homepage() {
 
  String lines[] = loadStrings("welcome.txt");
  for (int i = 0; i < lines.length; i++) {
     fill(#FAA803);
    text(lines[i], (width/4), (height/3), (width/2), (height/2));  // Text wraps within text box
  }
}