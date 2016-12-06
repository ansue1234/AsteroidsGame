SpaceShip shengZhou = new SpaceShip();
Planet bob = new Planet(600,400);
ArrayList<Bullets> bullet;
ArrayList<Missiles> missile;
ArrayList<Asteriod> yun;
Star [] stars;
public static int spe = 2;
public int shipHealth = 100;
public int ammo = 10000;
public int misl = 100;
public boolean le = false;
public boolean rt = false;
public boolean fw = false;
public boolean bk = false;
public boolean hy = false;
public boolean bu = false;
public boolean mi = false;
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
  missile = new ArrayList<Missiles>();
  size(1200,800);
  frameRate(60);
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  asteriods();
  bulletsMove();
  missMove();
  shengZhou.move();
  shengZhou.show();
  control3();
  stats();
  collide();
  bob.show(); 
  bob.gravity(shengZhou);  


 // System.out.println("X"+shengZhou.getDirectionX());
  //System.out.println("Y"+shengZhou.getDirectionY());
}
public void keyPressed(){  
  shengZhou.control1();
  
}
public void keyReleased(){  
  shengZhou.control2();
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
    bullet.add(new Bullets(shengZhou));
    ammo-=1;
  }
}

public void missShoot(){
if(misl>0){  
    missile.add(new Missiles(shengZhou));
    misl-=1;
  }
}

public void bulletsMove(){
  for(int j = bullet.size()-1;j>=0; j--){
    bullet.get(j).show();
    bullet.get(j).move();
  }
} 
public void missMove(){
  for(int j = missile.size()-1;j>=0; j--){
      missile.get(j).show();
      missile.get(j).move();
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
        }// }else if(dist(bullet.get(j).getX(), bullet.get(j).getY(),yun.get(i).getX(), yun.get(i).getY())<15){
        //   bullet.remove(j);
        // }    
      }
      }
    }
    
    for(int a =0; a<yun.size(); a++){
      for (int b = 0; b<missile.size(); b++){
        if(dist(missile.get(b).getX(), missile.get(b).getY(),yun.get(a).getX(), yun.get(a).getY())<15){
           yun.remove(a);
           //missile.remove(b);
           //break;
        }else if(missile.get(b).getX()<0||missile.get(b).getX()>1200||missile.get(b).getY()<0||missile.get(b).getY()>800){
           missile.remove(b);
        }
    }
  }
}



public void stats(){
  textSize(20);
  text("Health:" + shipHealth,40,40);
  text("Ammo:" + ammo,40,60);
  text("Missiles:" + misl,40,100);
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
  public void control3(){
      if(fw==true){
        shengZhou.accelerate(1);
        sped();
      }
      if(le==true){
        shengZhou.rotate(2);
        sped();
      }
      if(bk==true){
        shengZhou.accelerate(-1);
        sped();
      }
      if(rt==true){
        shengZhou.rotate(-2);
        sped();
      }
      if(hy==true){
        shengZhou.setY((int)(Math.random()*800));
        shengZhou.setX((int)(Math.random()*800));
        shengZhou.setDirectionY(0);
        shengZhou.setDirectionX(0);
        shengZhou.setPointDirection((int)(Math.random()*360));
      }
      if(bu == true){
        bulletsShoot();
      }
      if(mi == true){
        missShoot();
      }
    }