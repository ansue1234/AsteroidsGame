 public class Missiles extends Bullets{


 	public Missiles(SpaceShip ship){
 		super(ship);
 		corners = 7;
	    int[] xC = {-2,-1,-1,0,1,1,2};
	    int[] yC = {-2,-1,2,3,2,-1,-2};
	    // xCorners=xC;
	    // yCorners=yC;
	    myColor  = color(0,0,255);
	    // myPointDirection = shengZhou.getPointDirection();
	    // rad = myPointDirection*(Math.PI/180);
	    // myCenterX = shengZhou.getX();
	    // myCenterY = shengZhou.getY();
	    // myDirectionX = 30*Math.cos(rad)+shengZhou.getDirectionX();
	    // myDirectionY = 30*Math.sin(rad)+shengZhou.getDirectionY();
    }
    public void show(){
    	beginShape();
		vertex(myCenterX-2, myCenterY-2);
		vertex(myCenterX-1, myCenterY-1);
		vertex(myCenterX-1, myCenterY+2);
		vertex(30, 75);
		endShape(CLOSE);
    	// fill(myColor);   
	    // stroke(myColor);    
	    // //convert degrees to radians for sin and cos         
	    // double dRadians = myPointDirection*(Math.PI/180);                 
	    // int xRotatedTranslated, yRotatedTranslated;    
	    // beginShape();         
	    // for(int nI = 0; nI < corners; nI++)    
	    // {     
	    //   //rotate and translate the coordinates of the floater using current direction 
	    //   xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
	    //   yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
	    //   vertex(xRotatedTranslated,yRotatedTranslated);    
	    // }   
	    // endShape(CLOSE); 
	     
	 }   
    
 }