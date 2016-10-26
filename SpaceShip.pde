public class SpaceShip extends Floater  
{   
   SpaceShip(){
    myColor  = color(255, 0, 2);
    corners = 10;
    int[] xC = {26,10,0,-8,-8,-14,-8,-8,0,10};
    int[] yC = {0,-4,-18,-18,-4,0,4,18,18,4};
    xCorners=xC;
    yCorners=yC;
    myColor  = 255;
    myCenterX = 400;
    myCenterY = 400;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 270;
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
   //your code here
}