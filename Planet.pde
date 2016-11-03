public class Planet {
	private int  myX;
	private int  myY;
	private double gFac;
	public Planet(int x, int y){
		myX = x;
		myY = y;
		gFac = 0.5;
	}
	public void show(){
		fill(255);
    	noStroke();
    	ellipse(myX,myY,50,50);
	}
	public int getX(){
    	return myX;
  	}
  	public int getY(){
    	return myY;
 	}
 	public void gravity(SpaceShip shengZhou){
 		gFac+=0.0001;
 		if(dist(myX,myY,shengZhou.getX(),shengZhou.getY())<500){
 			if(shengZhou.getX()>myX&&shengZhou.getY()>myY){
 				shengZhou.setDirectionX(-gFac);
 				shengZhou.setDirectionY(-gFac);
 			}else if(shengZhou.getX()>myX&&shengZhou.getY()<myY){
 				shengZhou.setDirectionX(-gFac);
 				shengZhou.setDirectionX(gFac);
 			}else if(shengZhou.getX()<myX&&shengZhou.getY()>myY){
 				shengZhou.setDirectionX(gFac);
 				shengZhou.setDirectionX(-gFac);
 			}else if(shengZhou.getX()<myX&&shengZhou.getY()<myY){
 				shengZhou.setDirectionX(gFac);
 				shengZhou.setDirectionX(gFac);
 			}
 		}
 	}
}