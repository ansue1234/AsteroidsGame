SpaceShip shengZhou = new SpaceShip();
ArrayList<Bullets> bullet;
ArrayList<Asteriod> yun;
Star [] stars;
public static int spe = 8;
public int shipHealth = 100;
public int ammo = 10000;
//your variable declarations here
public void setup()                               
{
  stars = new Star[400];
  yun = new ArrayList<Asteriod>();
  for(int i = 50; i>=0; i--){
     yun.add(new Asteriod());
  }
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  bullet = new ArrayList<Bullets>();
  size(800,800);
  frameRate(60);
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
  collide();   
  //System.out.println("y"+yun.size());
  //System.out.println("b"+bullet.size());
  //System.out.println(bullet.get(0).getY());
}
public void keyPressed(){  
  shengZhou.control();
  bulletsShoot();
}
public void Asteriods(){
  for(int i = yun.size()-1; i>=0; i--){
    yun.get(i).show();
    yun.get(i).move();
   }
   if(yun.size()<20){
        yun.add(new Asteriod());
   }
 }  

public void bulletsShoot(){
if(ammo>0){  
  if(key ==' '){
    bullet.add(new Bullets(shengZhou));
    ammo-=1;
  }
}
}

public void bulletsMove(){
  for(int j = bullet.size()-1;j>=0; j--){
    bullet.get(j).show();
    bullet.get(j).move();
  }
}   

public void collide(){
  for(int i = yun.size()-1; i>=0; i--){
      if(dist(yun.get(i).getX(), yun.get(i).getY(), shengZhou.getX(), shengZhou.getY())<25){
        yun.remove(i);
        shipHealth-=20;
      }
  }
      
  for (int j = bullet.size()-2; j>=0; j--){
    if(bullet.get(j).getX()<0||bullet.get(j).getX()>800||bullet.get(j).getY()<0||bullet.get(j).getY()>800){
      bullet.remove(j); 
    }
      for(int i = yun.size()-2; i>=0; i--){
        if(dist(bullet.get(j).getX(), bullet.get(j).getY(),yun.get(i).getX(), yun.get(i).getY())<15){
          yun.remove(i);
          bullet.remove(j);
       }     
      }
    }
  }



public void stats(){
  textSize(20);
  text("Health:" + shipHealth,40,40);
  text("Ammo:" + ammo,40,60);
}