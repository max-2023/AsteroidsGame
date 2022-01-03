class Bullet extends Floater {
  public Bullet (Spaceship theShip) {
    
      myCenterX = theShip.getX(); 
      myCenterY = theShip.getY();
      myXspeed = theShip.getXSpeed(); myYspeed = theShip.getYSpeed();
      myPointDirection = theShip.getPointDirection();
      accelerate(6);
    
  }
  
  public void show() {
    ellipse((float) myCenterX, (float) myCenterY, 4, 4); 
  }
  public float getX() {
    return (float) myCenterX;
  }
  public float getY() {
    return (float) myCenterY;
  }
}
