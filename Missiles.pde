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
    	fill(0,255,0);
    	beginShape();
		vertex((int)((((float)myCenterX-2*2)* Math.cos(dRadians)) - (((float)myCenterY+2*2) * Math.sin(dRadians))+myCenterX), (int)((float)myCenterX-2*2)* Math.sin(dRadians)) + (((float)myCenterY+2*2) * Math.cos(dRadians))+myCenterY));
		vertex((int)((((float)myCenterX-1*2)* Math.cos(dRadians)) - (((float)myCenterY+1*2) * Math.sin(dRadians))+myCenterX), (int)((float)myCenterX-1*2)* Math.sin(dRadians)) + ((float)myCenterY+1*2) * Math.cos(dRadians))+myCenterY));
 		vertex((int)((((float)myCenterX-1*2)* Math.cos(dRadians)) - (((float)myCenterY-2*2) * Math.sin(dRadians))+myCenterX), (int)((float)myCenterX-1*2)* Math.sin(dRadians)) + ((float)myCenterY-2*2) * Math.cos(dRadians))+myCenterY));
		vertex((int)((((float)myCenterX)* Math.cos(dRadians)) - (((float)myCenterY-3*2) * Math.sin(dRadians))+myCenterX), (int)((float)myCenterX)* Math.sin(dRadians)) + ((float)myCenterY-3*2) * Math.cos(dRadians))+myCenterY));
 		vertex((int)((((float)myCenterX+1*2)* Math.cos(dRadians)) - (((float)myCenterY-2*2) * Math.sin(dRadians))+myCenterX), (int)((float)myCenterX+1*2)* Math.sin(dRadians)) + ((float)myCenterY-2*2) * Math.cos(dRadians))+myCenterY));
		vertex((int)((((float)myCenterX+1*2)* Math.cos(dRadians)) - (((float)myCenterY+1*2) * Math.sin(dRadians))+myCenterX), (int)((float)myCenterX+1*2)* Math.sin(dRadians)) + ((float)myCenterY+1*2) * Math.cos(dRadians))+myCenterY));
		vertex((int)((((float)myCenterX+2*2)* Math.cos(dRadians)) - (((float)myCenterY+2*2) * Math.sin(dRadians))+myCenterX), (int)((float)myCenterX+2*2)* Math.sin(dRadians)) + ((float)myCenterY+2*2) * Math.cos(dRadians))+myCenterY));
		// vertex((float)myCenterX-1*2, (float)myCenterY-2*2);
		// vertex((float)myCenterX, (float)myCenterY-3*2);
		// vertex((float)myCenterX+1*2, (float)myCenterY-2*2);
		// vertex((float)myCenterX+1*2, (float)myCenterY+1*2);
		// vertex((float)myCenterX+2*2, (float)myCenterY+2*2);
		endShape(CLOSE);
    	fill(myColor);   
	    stroke(myColor);    
	    //convert degrees to radians for sin and cos         
	    // double dRadians = myPointDirection*(Math.PI/180);                 
	    // int xRotatedTranslated, yRotatedTranslated;    
	    // beginShape();         
	    // for(int nI = 0; nI < corners; nI++)    
	    // {     
	    //   xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
	    //   yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
	    //   vertex(xRotatedTranslated,yRotatedTranslated);    
	    // }   
	    // endShape(CLOSE); 
	     
	 }   
}