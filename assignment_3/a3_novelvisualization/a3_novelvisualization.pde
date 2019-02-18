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
  String[] wordArray = loadStrings("unique_text.txt");    //  Creates an array from the uniquewords.txt file
  ArrayList<String> wordList = new ArrayList<String>();    //  Creates a list
  for (int i = 0; i < wordArray.length; i++) {
    wordList.add(wordArray[i]);                            //  Propogates list with unique words from wordArray
  }
  Collections.shuffle(wordList);    //  Shuffles wordList
  String wordString = String.join(", ", wordList);    //  Creates the string wordString from wordList
  text(wordString, 0, 0, 700, 600);    //  Displays wordString starting at the top left of the screen and makes it fit to the 700 x 600 frame
  noLoop();    //  Stops draw() after one iteration
  }  
    
void mousePressed() {    //  If the mouse is pressed, draw() is called again and a newly randomized set of unique words will be displayed
  redraw();
    }
    

  
