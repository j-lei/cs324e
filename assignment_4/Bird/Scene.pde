import processing.sound.*;
SoundFile file;

Birds bird1;
Birds bird2;

void settings() {
  size(800,800);
}

void setup() {
  PShape birdy = loadShape("Birdie.svg");
  bird1 = new Birds(-100, 200, 75, 75, 5, birdy);
  PShape babybirdy = loadShape("Birdie.svg");
  bird2 = new Birds(0, 200, 25, 25, 0.15, babybirdy);
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
}
