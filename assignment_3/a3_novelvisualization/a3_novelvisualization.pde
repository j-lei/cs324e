import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

void setup() {
  size(700,600);
  textSize(20);
  PFont font;
  font = createFont("dracula.TTF", 32);    // This is a spooky font from "https://www.dafont.com/dracula.font"
  textFont(font);    // Assigns any text to have the spooky font
}

void draw() {
  background(128);    // Sets the background to grey after every iteration of draw
  String[] wordArray = loadStrings("uniquewords.txt");    //  Creates an array from the uniquewords.txt file
  ArrayList<String> wordList = new ArrayList<String>();    //  Creates a list
  for (int i = 0; i < wordArray.length; i++) {
    wordList.add(wordArray[i]);                            //  Propogates list with unique words from wordArray
  }
  Collections.shuffle(wordList);    //  Shuffles wordList
  
  int x = 10;
  int y = 30;
  ArrayList<Integer> hexList = new ArrayList<Integer>();    //  Creates List of hex colors to be used
  hexList.add(int(#000000));
  hexList.add(int(#a70c0c));
  hexList.add(int(#6d128d));
  
  int n = 0;
  for (int i = 0; i < wordList.size(); i++) {    //  This loop iterates through my list of words and then prints them out one by one and avoids running over the edges
    if (x > 450) {
      y += 30;
      x = 10;
    }
    String part = wordList.get(i);
    fill(hexList.get(n));    //   Fills the word with a color from the hexList
    text(part, x, y, 700, 600);
    x += (textWidth(part) + 10);
    if (n == 2) {
      n = 0;
    }
    else {
      n += 1;
    }
  
  }
  
  noLoop();    //  Stops draw() after one iteration
  }  
    
void mousePressed() {    //  If the mouse is pressed, draw() is called again and a newly randomized set of unique words will be displayed
  redraw();
    }
    

  
