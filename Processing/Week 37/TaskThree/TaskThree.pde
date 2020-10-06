void setup() {
  size(1000, 1000);
}

color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color background = color(255);
color gray = color(100);
int colorCycle = 0;

void draw() {
  strokeWeight(5);

  if (colorCycle % 3 == 0) {
    fill(green);
  } else {
    fill(gray);
  }
  circle(500, 300, 100);

  if (colorCycle % 3 == 1) {
    fill(yellow);
  } else {
    fill(gray);
  }
  circle(500, 500, 100);


  if (colorCycle % 3 == 2) {
    fill(red);
  } else {
    fill(gray);
  }
  circle(500, 700, 100);
}

void keyPressed() {
  colorCycle++;
}
