import processing.sound.*;
SoundFile file;

Birds bird1;
Birds bird2;
Sun sun;
Sun moon;
CarFrame carframe;
Wheel wheel1;
Wheel wheel2;

color lightblue = color(132, 102, 255);
color red = color(255, 0, 0);
color bluee = color(0, 0, 255);

color yellow = color(255, 216, 0);
color orange = color(255, 116, 30);
color blue = color(137, 213, 255);
color grey = color(180, 180, 180);
color white = color(255);

void settings() {
  size(800,800);
}

void setup() {
  sun = new Sun(width-150, height/2+150, 200, yellow, orange, 30, 10);
  moon = new Sun(width - 200, height/2 + 100, 100, grey, white, 5, 40);
  PShape birdy = loadShape("Birdie.svg");
  bird1 = new Birds(-100, 300, 75, 75, 3, birdy);
  PShape babybirdy = loadShape("Birdie.svg");
  bird2 = new Birds(0, 300, 25, 25, 0.15, babybirdy);
  
  carframe = new CarFrame(0, height-100, 5, lightblue);
  wheel1 = new Wheel(-45, (height-100) + 35, 0 , 5, red);
  wheel2 = new Wheel(70, (height-100) + 35, 0, 5, bluee);
  
  
  //Song is Excursion by Dylan Sitts
  file = new SoundFile(this, "Excursion.mp3");
  file.play();
}

void draw() {
  background(137, 213, 255);
  noStroke();
  fill(#807e78);
  rect(width/2,height/2+250,900,300);
  strokeWeight(4);
  stroke(#ffffff);
  line(0,650,800,650);
  carframe.display();
  carframe.drive();
  wheel1.display();
  wheel1.drive();
  wheel2.display();
  wheel2.drive();
  bird1.animate();
  bird2.animateBaby(bird1);
  sun.display();
  sun.moveSun(0.015, width/2, 0.03);
  moon.display();
  moon.moveSun(0.02, width/3, 0.05);
}
