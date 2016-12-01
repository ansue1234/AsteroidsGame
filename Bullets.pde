public class Bullets extends Floater{
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
  private double rad;
  
  public Bullets(SpaceShip shengZhou){
    myColor  = color(255,0,0);
    myPointDirection = shengZhou.getPointDirection();
    rad = myPointDirection*(Math.PI/180);
    myCenterX = shengZhou.getX();
    myCenterY = shengZhou.getY();
    myDirectionX = 30*Math.cos(rad)+shengZhou.getDirectionX();
    myDirectionY = 30*Math.sin(rad)+shengZhou.getDirectionY();
  }
  
  public void show(){
    fill(myColor);   
    stroke(myColor); 
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  public void show2(){
    super.show();
  }
  public void move(){
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
  }
}