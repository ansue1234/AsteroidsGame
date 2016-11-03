public class SpaceShip extends Floater  
{   
   SpaceShip(){
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
   public void sped(){
      if(shengZhou.getDirectionY()>spe){
          shengZhou.setDirectionY(spe);
      }else if(shengZhou.getDirectionX()>spe){
        shengZhou.setDirectionX(spe);
      }else if(shengZhou.getDirectionY()<-spe){
        shengZhou.setDirectionY(-spe);
      }else if(shengZhou.getDirectionX()<-spe){
        shengZhou.setDirectionX(-spe);
      }
   }
   
   public void control(){
      if(key == 'd'&&key == 'w'){
        shengZhou.accelerate(1);
        shengZhou.rotate(2);
      }else if(key == 's'&&key == 'w'){
        shengZhou.accelerate(-1);
        shengZhou.rotate(2);
      }else if(key == 'd'&&key == 'a'){
        shengZhou.accelerate(1);
        shengZhou.rotate(-2);
      }else if(key == 's'&&key == 'a'){
        shengZhou.accelerate(-1);
        shengZhou.rotate(-2);
      }else if(key == 'w'){
        shengZhou.accelerate(1);
      }else if(key == 's'){
        shengZhou.accelerate(-1);
      }else if(key == 'a'){
        shengZhou.rotate(-2);
      }else if(key == 'd'){
        shengZhou.rotate(2);
      }else if(key == 'r'){
        shengZhou.setY((int)(Math.random()*800));
        shengZhou.setX((int)(Math.random()*800));
        shengZhou.setDirectionY(0);
        shengZhou.setDirectionX(0);
        shengZhou.setPointDirection((int)(Math.random()*360));
      }
   }
   
}