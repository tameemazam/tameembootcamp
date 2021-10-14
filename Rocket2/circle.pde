class Rocket {
  PVector position;
  float r, x, y;
  int point = 0;

  Rocket() {
    position=new PVector(100, 385);
    r=10;
    x=width;
    y=height;
  }
  void draw() {
    fill(255);
    ellipse(position.x, position.y, r*2, r*2);
    textSize(32);
    text(point,20,380);
  }
  void keyPressed() {
    //if (keyPressed) {
    if (keyDown("w")) {
      position.y=position.y-3/2;
    } else if (keyDown("s")) {
      position.y=position.y+3/2;
    }
    //}
  }
  void respawn() {
    if (position.y==0) {
      position.y=position.y+385;
      point=point+1;
    }
  }
}
