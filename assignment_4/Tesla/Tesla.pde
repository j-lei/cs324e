CarFrame carframe;
Wheel wheel1;
Wheel wheel2;

color lightblue = color(132, 102, 255);
color red = color(255, 0, 0);
color blue = color(0, 0, 255);

void setup(){
  size(500, 500);
  carframe = new CarFrame(0, height/2, 5, lightblue);
  wheel1 = new Wheel(-45, (height)/2 + 35, 0 , 5, red);
  wheel2 = new Wheel(70, (height)/2 + 35, 0, 5, blue);
}

void draw(){
  background(255);
  carframe.display();
  carframe.drive();
  wheel1.display();
  wheel1.drive();
  wheel2.display();
  wheel2.drive();

}
