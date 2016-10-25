SpaceShip shengZhou = new SpaceShip();
Star [] stars;
//your variable declarations here
public void setup() 
{
  stars = new Star[400];
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  size(800,800);

}
public void draw() 
{
  background(0);
  shengZhou.move();
  shengZhou.show();
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  
}
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
  public double getDirectionX(){System.out.println(myDirectionX); return myDirectionX;}
  public void setDirectionY(double y){ myDirectionY = y;} 
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
   //your code here
}

public void keyPressed(){
    switch(key){
      case 'w': case 'W':
       shengZhou.accelerate(1);
      break;
      case 's':
       shengZhou.accelerate(-1);
      break;
      case 'a':
        shengZhou.rotate(-2);
      break;
      case 'd':
        shengZhou.rotate(2);
      break;
      case 'r':
        shengZhou.setY((int)(Math.random()*800));
        shengZhou.setX((int)(Math.random()*800));
        shengZhou.setDirectionY(0);
        shengZhou.setDirectionX(0);
        shengZhou.setPointDirection((int)(Math.random()*360));
        shengZhou.getDirectionX();
      break;
  }
}

abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE); 
     
  }   
} 

public class Asteriod extends Floater{
  SpaceShip(){
    corners = 6;
    int[] xC = {-5,5,8,5,-5,-8};
    int[] yC = {5,5,0,-5,-5,0};
    xCorners=xC;
    yCorners=yC;
    myColor  = 255;
    myCenterX = 400;
    myCenterY = 400;
    myDirectionX = 0;
    myDirectionY = ;
    myPointDirection = 270;
   } 
  public void setX(int x){ myCenterX = x;}  
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){ myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){ myDirectionX = x;}   
  public double getDirectionX(){System.out.println(myDirectionX); return myDirectionX;}
  public void setDirectionY(double y){ myDirectionY = y;} 
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 

}

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


   
