class Asteroid extends Floater {
  double rotationSpeed = (Math.random()*6)-3;
  public Asteroid() {
      corners = 6;
      xCorners = new int[]{-11, 7, 13, 6, -11, -5};
      yCorners = new int[]{-8, -8, 0, 10, 8, 0};
      myColor = color(128, 128, 128);
      myCenterX = Math.random()*800; 
      myCenterY = Math.random()*800;
      myXspeed = Math.random()*5 ; myYspeed = Math.random()*5;
      myPointDirection = 0; 
  }
  public void move() {
    turn(rotationSpeed);
    super.move();
  }
  public float getX() {
    return (float) myCenterX;
  }
  
  public void setX(double x) {
    myCenterX = x; 
  }
  
  public float getY() {
    return (float) myCenterY;
  }

  public void setY(double y) {
    myCenterY = y; 
  }
  
}
