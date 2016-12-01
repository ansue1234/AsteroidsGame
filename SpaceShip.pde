public class SpaceShip extends Floater  
{   
   SpaceShip(){
    corners = 10;
    int[] xC = {26,10,0,-8,-8,-14,-8,-8,0,10};
    int[] yC = {0,-4,-18,-18,-4,0,4,18,18,4};
    xCorners=xC;
    yCorners=yC;
    myColor  = 255;
    myCenterX = 100;
    myCenterY = 100;
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
   
   public void control1(){
    if(key == 'w'){
        fw = true;
        sped();
      }
      if(key == 'a'){
        le = true;
         sped();
      }
      if(key == 's'){
        bk = true;
         sped();
      }
      if(key == 'd'){
        rt = true;
         sped();
      }
      if(key == 'r'){
        hy = true;
         sped();
      }
      if(key == ' '){
        bu = true;
      }
      if(key == 'c'){
       mi = true;
      }
    }

    public void control2(){
        if(key == 'w'){
          fw = false;
          sped();
        }
        if(key == 'a'){
          le = false;
        }
        if(key == 's'){
          bk = false;
        }
        if(key == 'd'){
          rt = false;
        }
        if(key == 'r'){
          hy = false;
        }
        if(key == ' '){
          bu = false;
        }
        if(key == 'c'){
          mi = false;
      }
    }
   
}