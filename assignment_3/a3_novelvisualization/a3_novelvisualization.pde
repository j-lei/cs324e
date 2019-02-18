import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


void setup() {
  size(700,600);
  textSize(20);
  PFont font;
  font = createFont("dracula.TTF", 32);
  textFont(font);
  
}

void draw() {
  background(128);
  String[] wordArray = loadStrings("unique_text.txt");
  ArrayList<String> wordList = new ArrayList<String>();
  for (int i = 0; i < wordArray.length; i++) {
    wordList.add(wordArray[i]);
  }
  Collections.shuffle(wordList);
  String wordString = String.join(", ", wordList);
  String[] hexArray = {"#000000, #a70c0c, #6d128d"};
  //for (int n = 0; i < wordString.length; i++) {
  //  int hexValue = int(random(hexArray.length));
  //  fill(hexArray[hexValue]);
    text(wordString, 0, 0, 700, 600);
    noLoop();
  }  
    
void mousePressed() {
        redraw();
    }
