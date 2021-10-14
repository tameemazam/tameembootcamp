class Debris2 {
  float x=random(350, 900);
  float y=random(height-70);
  float r;
  float xSpeed=1;
  Debris2() {
    r=5;
  }

  void move() {
    x=x-xSpeed;
    if (x<0) {
      x=random(350, 900);
    }
  }
  void display() {
    ellipse(x, y, r*2, r*2);
  }
}
