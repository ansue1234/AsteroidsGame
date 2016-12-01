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
 				  gFacX = (double)(Math.abs((myX-shengZhou.getX())/50));
 			 	  gFacY = (double)(Math.abs((myY-shengZhou.getY())/50));
 			 	 
 			if(shengZhou.getX()>myX&&shengZhou.getY()>myY){
 			 	shengZhou.setDirectionY(shengZhou.getDirectionX()-gFacY);
 			 	shengZhou.setDirectionX(shengZhou.getDirectionY()-gFacX);
 			}else if(shengZhou.getX()>myX&&shengZhou.getY()<myY){
 			 	shengZhou.setDirectionY(shengZhou.getDirectionY()+gFacY);
 			 	shengZhou.setDirectionX(shengZhou.getDirectionX()-gFacX);
 			}else if(shengZhou.getX()<myX&&shengZhou.getY()>myY){
 				shengZhou.setDirectionY(shengZhou.getDirectionY()-gFacY);
 			 	shengZhou.setDirectionX(shengZhou.getDirectionX()+gFacX);
 			}else if(shengZhou.getX()<myX&&shengZhou.getY()<myY){
 			 	shengZhou.setDirectionX(shengZhou.getDirectionX()+gFacX);
 			 	shengZhou.setDirectionY(shengZhou.getDirectionX()+gFacY);
 			}else if(shengZhou.getX()==myX&&shengZhou.getY()<myY){
 			 	shengZhou.setDirectionY(shengZhou.getDirectionX()+gFacY);
 			}else if(shengZhou.getX()==myX&&shengZhou.getY()>myY){
 			 	shengZhou.setDirectionY(shengZhou.getDirectionX()-gFacY);
 			}else if(shengZhou.getX()<myX&&shengZhou.getY()==myY){
 			 	shengZhou.setDirectionX(shengZhou.getDirectionX()+gFacX);
 			}else if(shengZhou.getX()>myX&&shengZhou.getY()==myY){
 			 	shengZhou.setDirectionX(shengZhou.getDirectionX()-gFacX);
 			}else{
 				sped();
 			}
		 	// }else{
		 	// 	System.out.println(false);
		 	// 	sped();
		}
	}
}