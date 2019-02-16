import java.util.*;

String TEXT_FILE = "freqtest.txt";
Integer canvas_width = 1000;
Integer canvas_height = 1000;
HashMap <Integer, Integer> freqMap = new HashMap <Integer, Integer>();

void settings() {
  size(canvas_width, canvas_height);
}

void setup() {
  background(0);
  
  String[] freqList = loadStrings(TEXT_FILE);
  
  //store frequency:number of words in a hashmap
  for (String line : freqList) {
    String[] stringList = line.replaceAll("\\s+", "").split(":");
    freqMap.put(Integer.parseInt(stringList[0]), Integer.parseInt(stringList[1]));
  }
  
  //iterate thru freqmap, find largest value, draw circles based on how large they are
  //compared to largest value
  //TODO: area, not diameter, proportionate to commonness
  Integer maxFreq = Collections.max(freqMap.values());
  int x = canvas_height/4 + 50;
  int y = canvas_height/2;
  
  for (int f : freqMap.keySet()) {
    float ratio = (float)freqMap.get(f) / maxFreq;
    print("f:", f, "\n", "value:", freqMap.get(f), "\n");
    print("maxFreq:", maxFreq, "\n");
    print("Ratio:", ratio, "\n");
    makeCircles(255, x, y, ratio);
    x += (x/4);
  }
  
}

void draw() {
  
}

/** given color c, location x,y, size as ratio to most common word frequency, draws circle**/
public void makeCircles(color c, float x, float y, float ratio) {
  fill(c);
  noStroke();
  float default_size = canvas_height/4;    //diameter of largest circle
  float diameter = default_size * ratio;
  print("Default size:", default_size, "\n");
  print("Diameter:", diameter, "\n\n");
  circle(x, y, diameter);
}
