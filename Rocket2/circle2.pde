class Rocket1 {
  PVector position;
  float r, x, y;
  int point=0;

  Rocket1() {
    position=new PVector(300, 385);
    r=10;
    x=width;
    y=height;
  }
  void draw() {
    fill(255);
    ellipse(position.x, position.y, r*2, r*2);
    textSize(32);
    text(point,370,380);
  }
  void keyPressed() {
    //if (keyPressed) {
    if (keyDown(UP)) {
      position.y=position.y-3/2;
    } else if (keyDown(DOWN)) {
      position.y=position.y+3/2;
    }
    // }
  }
  void respawn() {
    if (position.y==0) {
      position.y=position.y+385;
      point=point+1;
    }
  }
}
