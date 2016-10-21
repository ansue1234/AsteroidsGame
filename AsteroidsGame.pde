SpaceShip shengZhou = new SpaceShip();
//your variable declarations here
public void setup() 
{
  size(800,800);
  background(0);
  //your code here
}
public void draw() 
{
  background(0);
   for(int i = 0; i<200; i++){
    ellipse((int)(Math.random()*800), (int)(Math.random()*800),5,5);
  }
  shengZhou.move();
  shengZhou.show();
  
}
class SpaceShip extends Floater  
{   
   SpaceShip(){
    corners = 10;
    int[] xC = {26,10,0,-8,-8,-14,-8,-8,0,10};
    int[] yC = {0,-4,-18,-18,-4,0,4,18,18,4};
    // int[] xC = {-5,20,20,5};
    // int[] yC = {0,0,20,20};
    xCorners=xC;
    yCorners=yC;
    myColor  = 255;
    myCenterX = 400;
    myCenterY = 400;
    myDirectionX = 0;
    myDirectionX = 0;
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
      case 'h':
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

