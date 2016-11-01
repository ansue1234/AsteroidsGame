public class Planet {
	private int  myX;
	private int  myY;
	public Planet(int x, int y){
		myX = x;
		myY = y;
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
}