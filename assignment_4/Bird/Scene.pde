import processing.sound.*;
SoundFile file;

Birds bird1;
Birds bird2;
Sun sun;
Sun moon;
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
  bird1 = new Birds(-100, 300, 75, 75, 5, birdy);
  PShape babybirdy = loadShape("Birdie.svg");
  bird2 = new Birds(0, 300, 25, 25, 0.15, babybirdy);
  //Song is Excursion by Dylan Sitts
  file = new SoundFile(this, "Excursion.mp3");
  file.play();
}

void draw() {
  background(137, 213, 255);
  noStroke();
  fill(#807e78);
  rect(0,500,800,300);
  strokeWeight(4);
  stroke(#ffffff);
  line(0,650,800,650);
  bird1.animate();
  bird2.animateBaby(bird1);
  sun.display();
  sun.moveSun(0.015, width/2, 0.03);
  moon.display();
  moon.moveSun(0.02, width/3, 0.05);
}
