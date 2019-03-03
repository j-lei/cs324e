Birds bird1;
Birds bird2;

void settings() {
  size(800,800);
}

void setup() {
  PShape birdy = loadShape("Birdie.svg");
  bird1 = new Birds(-100, 200, 75, 75, 5, birdy);
  PShape babybirdy = loadShape("Birdie.svg");
  bird2 = new Birds(0, 200, 25, 25, 0.25, babybirdy);
}

void draw() {
  //frameRate(1);
  background(255);
  bird1.animate();
  bird2.animateBaby(bird1);
}
