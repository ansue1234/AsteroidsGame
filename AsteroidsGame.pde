SpaceShip shengZhou = new SpaceShip();
ArrayList<Bullets> bullet;
ArrayList<Asteriod> yun;
Star [] stars;
public static int spe = 8;
public int shipHealth = 100;
public int ammo = 1000000;
//your variable declarations here
public void setup()                               
{
  stars = new Star[400];
  yun = new ArrayList<Asteriod>();
  for(int i = 0; i<20; i++){
    if(yun.size()<20){
     yun.add(new Asteriod());
    }
  }
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  bullet = new ArrayList<Bullets>();
  size(800,800);

}
public void draw() 
{
  background(0);
  
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  Asteriods();
  bulletsMove();
  shengZhou.move();
  shengZhou.show();
  shengZhou.sped();
  stats();
  bullets();
  
}
public void keyPressed(){  
  shengZhou.control();
  bulletsShoot();
}
public void Asteriods(){
  for(int i = yun.size()-1; i>0; i--){
    yun.get(i).show();
    yun.get(i).move();
   }
 }  

public void bulletsShoot(){
  if(key ==' '){
    bullet.add(new Bullets(shengZhou));
    ammo-=1;
  }
 
}
public void bulletsMove(){
  for(int i = 0; i< bullet.size(); i++){
    bullet.get(i).show();
    bullet.get(i).move();
    if(bullet.get(i).getX()>width||bullet.get(i).getX()<0||bullet.get(i).getY()>height||bullet.get(i).getY()<0)
    {     
      bullet.remove(i);    
    }    
  }
}   

public void bullets(){
  for(int i = yun.size()-1; i>=0; i--){
    if(dist(yun.get(i).getX(), yun.get(i).getY(), shengZhou.getX(), shengZhou.getY())<25){
        yun.remove(i);
        shipHealth-=20;
      }
      if(yun.size()<20){
        yun.add(new Asteriod());
      }
  }
   
  for(int j = bullet.size()-2; j>=0;j--){  
    for (int i = yun.size()-2; i>=0; i--){
      if(dist(yun.get(i).getX(), yun.get(i).getY(), bullet.get(j).getX(), bullet.get(j).getY())<15){
        yun.remove(i);
        bullet.remove(j);
      }
      if(ammo<=0 && (keyPressed == true && key == ' ')){
         bullet.remove(j);
         ammo=0;
      }
    }
  }
}

public void stats(){
  textSize(20);
  text("Health:" + shipHealth,40,40);
  text("Ammo:" + ammo,40,60);
}