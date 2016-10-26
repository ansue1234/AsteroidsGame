public class Asteriod extends Floater{
  private int s = (int)(Math.random()*5);
  public Asteriod(){
    corners = 6;
    int[] xC = {(-5*s),(5*s),(8*s),(5*s),(-5*s),(-8*s)};
    int[] yC = {(5*s),(5*s),(0*s),(-5*s),(-5*s),(0*s)};
    xCorners=xC;
    yCorners=yC;
    myColor  = 255;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myDirectionX = (Math.random()*8)-4;
    myDirectionY = (Math.random()*8)-4;
    myPointDirection = Math.random()*360;
   } 
  public void setX(int x){ myCenterX = x;}  
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){ myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){ myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){ myDirectionY = y;} 
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
}