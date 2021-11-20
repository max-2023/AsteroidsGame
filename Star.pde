class Star //note that this class does NOT extend Floater
{
  private int starX; 
  private int starY;
  Star(){
    starX = (int)(Math.random()*800);
    starY = (int)(Math.random()*800);
  }
  
  public void show() {
    ellipse(starX, starY, 1, 1); 
  }
}
