SpaceShip shengZhou = new SpaceShip();
Planet bob = new Planet(600,400);
ArrayList<Bullets> bullet;
ArrayList<Asteriod> yun;
Star [] stars;
public static int spe = 5;
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
  size(1200,800);
  frameRate(10);
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  asteriods();
  bulletsMove();
  shengZhou.move();
  shengZhou.show();

  stats();
  collide();
  bob.show(); 
  bob.gravity(shengZhou);  
 // System.out.println("X"+shengZhou.getDirectionX());
  //System.out.println("Y"+shengZhou.getDirectionY());
}
public void keyPressed(){  
  control();
  bulletsShoot();
  sped();
}
public void asteriods(){
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
    if(bullet.get(j).getX()<0||bullet.get(j).getX()>1200||bullet.get(j).getY()<0||bullet.get(j).getY()>800){
      bullet.remove(j); 
    }else{
      for(int i = yun.size()-2; i>=0; i--){
        if(dist(bullet.get(j).getX(), bullet.get(j).getY(),yun.get(i).getX(), yun.get(i).getY())<15){
            yun.remove(i);
            bullet.remove(j);
         }     
        }
      }
    }
  }



public void stats(){
  textSize(20);
  text("Health:" + shipHealth,40,40);
  text("Ammo:" + ammo,40,60);
}

 public void sped(){
      if(shengZhou.getDirectionY()>spe){
          shengZhou.setDirectionY(spe);
      }else if(shengZhou.getDirectionX()>spe){
        shengZhou.setDirectionX(spe);
      }else if(shengZhou.getDirectionY()<-spe){
        shengZhou.setDirectionY(-spe);
      }else if(shengZhou.getDirectionX()<-spe){
        shengZhou.setDirectionX(-spe);
      }
   }
   
   public void control(){
      if(key == 'd'&&key == 'w'){
        shengZhou.accelerate(1);
        shengZhou.rotate(2);
        sped();
      }else if(key == 's'&&key == 'w'){
        shengZhou.accelerate(-1);
        shengZhou.rotate(2);
        sped();
      }else if(key == 'd'&&key == 'a'){
        shengZhou.accelerate(1);
        shengZhou.rotate(-2);
        sped();
      }else if(key == 's'&&key == 'a'){
        shengZhou.accelerate(-1);
        shengZhou.rotate(-2);
        sped();
      }else if(key == 'w'){
        shengZhou.accelerate(1);
        sped();
      }else if(key == 's'){
        shengZhou.accelerate(-1);
        sped();
      }else if(key == 'a'){
        shengZhou.rotate(-2);
        sped();
      }else if(key == 'd'){
        shengZhou.rotate(2);
        sped();
      }else if(key == 'r'){
        shengZhou.setY((int)(Math.random()*800));
        shengZhou.setX((int)(Math.random()*800));
        shengZhou.setDirectionY(0);
        shengZhou.setDirectionX(0);
        shengZhou.setPointDirection((int)(Math.random()*360));
      }
   }