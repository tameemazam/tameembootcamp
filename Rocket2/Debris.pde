class Debris {
  float x=random(-500, 50);
  float y=random(height-70);
  float r;
  float xSpeed=1;
  Debris() {
    r=5;
  }

  void move() {
    x=x+xSpeed;
    if (x>width) {
      x=random(-500, 50);
    }
  }
  void display() {
    ellipse(x, y, r*2, r*2);
  }
  
  }
