import java.util.LinkedHashMap;
import java.util.Collections;

String TEXT_FILE = "wordfrequency.txt";
Integer canvas_width = 1500;
Integer canvas_height = 750;
LinkedHashMap <Integer, Integer> freqMap = new LinkedHashMap <Integer, Integer>();

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
  Integer maxFreq = Collections.max(freqMap.values());
  float x = canvas_height*0.25+50;
  float y = canvas_height/2;
  float increment = canvas_width/40;
  //color will start at bright red-orange and fade to white for less common frequencies
  color c = color(255, 86, 25);
  colorMode(HSB, 360, 100, 100);
  
  //draw grids
  drawGridLines(180, x, increment, 630);
  
  for (int f : freqMap.keySet()) {
    float areaRatio = (float)freqMap.get(f) / maxFreq;
    float diameterRatio = sqrt(areaRatio);
    print("f:", f, "\n", "value:", freqMap.get(f), "\n");
    print("maxFreq:", maxFreq, "\n");
    print("Ratio:", diameterRatio, "\n");
    
    makeCircles(c, x, y, diameterRatio);
    
    c = color(hue(c), saturation(c) - 10, brightness(c) + 10);
    x += increment;
    if(x > canvas_width - 20) {
      break;
    }
  }
}

void draw() {
  
}

/** given color c, location x,y, size as ratio to most common word frequency, draws circle**/
public void makeCircles(color c, float x, float y, float ratio) {
  fill(c);
  stroke(0);
  strokeWeight(1);
  float default_size = canvas_height*0.5;    //diameter of largest circle
  float diameter = default_size * ratio;
  print("Default size:", default_size, "\n");
  print("Height:", diameter, "\n\n");
  circle(x, y, diameter);
}

/** Given color to draw grid lines in, starting X position, grid incrememnt, and 
y position of X axis, creates grid lines and axes + labels**/
public void drawGridLines(color c, float startX, float inc, float y) {
  textSize(22);
  textAlign(CENTER);
  stroke(c);
  strokeWeight(1);
  int count = 1;
  for (float x = startX; x < canvas_width-20; x += inc) {
    line(x, 0, x, y);
    text(String.valueOf(count), x, y + 30);
    count ++;
  }
  
  strokeWeight(5);
  line(startX - 10, y - 10, canvas_width, y - 10);
  line(startX, 0, startX, y);
  
  text("Number of times word appears in text", canvas_width-(canvas_width-startX)/2, y+(canvas_height-y)/2);
  
  textAlign(LEFT);
  text("Area of circles is \nproportionate to \nhow common a \nword frequency is", 20, 40);
}
