Spaceship myShip = new Spaceship(); 
Star myStars[] = new Star[500];
public void setup() {
  size(800, 800);
  for (int i = 0; i < myStars.length; i++) {
    myStars[i] = new Star(); 
  }
}

public void draw() {
  background(0, 0, 0);
  myShip.show();
  for (int i = 0; i < myStars.length; i++) {
    myStars[i].show(); 
  }
  myShip.move();
  if (keyPressed) {
    if (key == 'w') {
      
      myShip.accelerate(0.10);
    }
  
    if (key == 'h') {
      myShip.hyperspace(); 
    }
    if (key == 'a') {
      myShip.turn(10); 
    }
    if (key == 'd') {
      myShip.turn(-10); 
    }

  }
}

