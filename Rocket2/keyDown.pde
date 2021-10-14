ArrayList<Integer> keysDown = new ArrayList<Integer>();


void keyPressed() {

  if (key != CODED) {

    keyCode = (int)key;
  }

  if (!keysDown.contains(keyCode)) {

    keysDown.add(keyCode);
  }
}



void keyReleased() {

  if (key != CODED) {

    keyCode = (int)key;
  }

  keysDown.remove(Integer.valueOf(keyCode));
}



boolean keyDown(int keyCode) {

  return keysDown.contains(keyCode);
}



boolean keyDown(String key) {

  return keyDown(key.charAt(0));
}



boolean keyDown(char key) {

  return keyDown((int)key);
}
