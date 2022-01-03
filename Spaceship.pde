class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = color(255, 255, 255);
      myCenterX = 400; myCenterY = 400;
      myXspeed = 0; myYspeed = 0;
      myPointDirection = 0;
    }
    
    public void hyperspace() {
      myXspeed = 0; myYspeed = 0;
      myCenterX = (int)(Math.random()*800); 
      myCenterY = (int)(Math.random()*800); 
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
  
  public double getPointDirection() {
    return myPointDirection;
  }
  
  public double getXSpeed() {
    return myXspeed; 
  }  
  
  public double getYSpeed() {
    return myYspeed; 
  }  
  
  
  

}
