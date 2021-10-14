Rocket rocket1;
Rocket1 rocket2;
Debris [] debrisFromLeft = new Debris[20];
Debris2 [] debrisFromRight = new Debris2[20];
Timer startTimer;


void setup() {
  size(400, 400);
  rocket1=new Rocket();
  rocket2=new Rocket1();
  startTimer= new Timer(60);
  for (int i=0; i<debrisFromLeft.length; i++) {
    debrisFromLeft[i]=new Debris();
  }
  for (int i=0; i<debrisFromRight.length; i++) {
    debrisFromRight[i]=new Debris2();
  }
}

void draw() {
  background(0);

  rocket1.draw();
  rocket1.keyPressed();
  rocket1.respawn();
  rocket2.draw();
  rocket2.keyPressed();
  rocket2.respawn();
  startTimer.stopTime();
  startTimer.countDown();
  fill(255);
  textSize(32);
  text(round(startTimer.getTime()), 180, 25);

  //draw and move debris
  for (int i=0; i<debrisFromLeft.length; i++) {
    debrisFromLeft[i].move();
    debrisFromLeft[i].display();
  }
  for (int i=0; i<debrisFromRight.length; i++) {
    debrisFromRight[i].move();
    debrisFromRight[i].display();
  }
  //collision btw debris and rocket
  for (int i=0; i<debrisFromLeft.length; i++) {
    if (dist(rocket1.position.x, rocket1.position.y, debrisFromLeft[i].x, debrisFromLeft[i].y) <debrisFromLeft[i].r+rocket1.r ) {
      rocket1.position.y=385;
    }
  }
  for (int i=0; i<debrisFromRight.length; i++) {
    if (dist(rocket1.position.x, rocket1.position.y, debrisFromRight[i].x, debrisFromRight[i].y) <debrisFromRight[i].r+rocket1.r ) {
      rocket1.position.y=385;
    }
  }
  for (int i=0; i<debrisFromLeft.length; i++) {
    if (dist(rocket2.position.x, rocket2.position.y, debrisFromLeft[i].x, debrisFromLeft[i].y) <debrisFromLeft[i].r+rocket2.r ) {
      rocket2.position.y=385;
    }
  }
  for (int i=0; i<debrisFromRight.length; i++) {
    if (dist(rocket2.position.x, rocket2.position.y, debrisFromRight[i].x, debrisFromRight[i].y) <debrisFromRight[i].r+rocket2.r ) {
      rocket2.position.y=385;
    }
  }
}
