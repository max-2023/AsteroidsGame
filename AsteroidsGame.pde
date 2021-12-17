Spaceship myShip = new Spaceship(); 
Star myStars[] = new Star[500];
Asteroid firstAsteroid = new Asteroid();
ArrayList <Asteroid> myAsteroids = new ArrayList <Asteroid> (); 
public void setup() {
  size(800, 800);
  for (int i = 0; i < myStars.length; i++) {
    myStars[i] = new Star(); 
  }
  
  for (int i = 0; i < 11; i++) {
    myAsteroids.add(new Asteroid()); 
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
  for (int i = 0; i < myAsteroids.size(); i++) {
    myAsteroids.get(i).move();
    myAsteroids.get(i).show();
    float d = dist(myShip.getX(), myShip.getY(), myAsteroids.get(i).getX(), myAsteroids.get(i).getY());
    if (d < 10) myAsteroids.remove(i);
  }
}
