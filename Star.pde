public class Star{
  private int mX;
  private int mY;
  public Star(){
    mY = (int)(Math.random()*800);
    mX = (int)(Math.random()*800);
  }
  public void show(){
    fill(255);
    ellipse(mX,mY,2,2);
  }
  public int getX(){
    return mX;
  }
  public int getY(){
    return mY;
  }
}