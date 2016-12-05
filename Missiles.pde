 public class Missiles extends Floater{
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
  
 	public Missiles(SpaceShip shengZhou){
    myPointDirection = shengZhou.getPointDirection();
    rad = myPointDirection*(Math.PI/180);
    myCenterX = shengZhou.getX();
    myCenterY = shengZhou.getY();
    myDirectionX = 30*Math.cos(rad)+shengZhou.getDirectionX();
    myDirectionY = 30*Math.sin(rad)+shengZhou.getDirectionY();
 		
 		corners = 7;
    //int[] xC = {-2,-1,-1,0,1,1,2};
	  //int[] yC = {2,1,-2,-3,-2,1,2};
    int[] xC = {6,4,-2,-4,-4,-2,4};
    int[] yC = {0,2,2,4,-4,-2,-2};
	  xCorners=xC;
	  yCorners=yC;
	  myColor  = color(0,0,255);
	  //  myPointDirection = shengZhou.getPointDirection();
	  rad = myPointDirection*(Math.PI/180);
	  //  // myCenterX = shengZhou.getX();
	  //  // myCenterY = shengZhou.getY();
	  //  // myDirectionX = 30*Math.cos(rad)+shengZhou.getDirectionX();
	  //  // myDirectionY = 30*Math.sin(rad)+shengZhou.getDirectionY();
    }
     public void move(){
        myCenterX += myDirectionX;    
        myCenterY += myDirectionY; 
    }
}   