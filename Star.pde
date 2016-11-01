public class Star{
  protected int mX;
  protected int mY;
  public Star(){
    mY = (int)(Math.random()*800);
    mX = (int)(Math.random()*1200);
  }
  public void show(){
    fill(255);
    noStroke();
    ellipse(mX,mY,2,2);
  }
  public int getX(){
    return mX;
  }
  public int getY(){
    return mY;
  }
}