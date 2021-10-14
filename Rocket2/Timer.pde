class Timer {
  float Time;
  Timer(float set) //constructor when creating a new timer
  {
    Time=set;
  }
  float getTime() //returns the current time
  {
    return(Time);
  }
  void setTime(float set)
  {
    Time=set;
  }
  void countDown() //update the timer by counting down
  {
    Time -=1/frameRate;
  }
  void stopTime() {
    if (Time<0) {
      frameRate(0);
      textSize(40);
      text("GAMEOVER!", 100, height/2);
    }
  }
}
