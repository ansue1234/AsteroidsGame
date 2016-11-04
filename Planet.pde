public class Planet {
	private int  myX;
	private int  myY;
	private double gFacX = 0;
	private double gFacY = 0;
	public Planet(int x, int y){
		myX = x;
		myY = y;
	}
	public void show(){
		fill(0,0,0,0);
    	stroke(255);
    	ellipse(myX,myY,500,500);
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
 		if(dist(myX,myY,shengZhou.getX(),shengZhou.getY())<250){
 			if(shengZhou.getX()>myX&&shengZhou.getY()>myY){
 				System.out.println(gFacX);
 				System.out.println(gFacY);
 				gFacX+= 1/myX-shengZhou.getX();
 				gFacY+= 1/myY-shengZhou.getY();
 				shengZhou.setDirectionX(gFacX);
 				shengZhou.setDirectionY(gFacY);
 			}else{
 				gFacX=0;
 				gFacY=0;
 			}

 			//}else if(shengZhou.getX()>myX&&shengZhou.getY()<myY){
 				// shengZhou.setDirectionX(-gFac);
 				// shengZhou.setDirectionX(gFac);
 			//}else if(shengZhou.getX()<myX&&shengZhou.getY()>myY){
 				//shengZhou.setDirectionX(gFac);
 				//shengZhou.setDirectionX(-gFac);
 			//}else if(shengZhou.getX()<myX&&shengZhou.getY()<myY){
 				//shengZhou.setDirectionX(gFac);
 				//shengZhou.setDirectionX(gFac);
 			//}else if(shengZhou.getX()==myX
 		
 	}
}