SpaceShip shengZhou = new SpaceShip();
ArrayList<Bullets> bullet;
ArrayList<Asteriod> yun;
Star [] stars;
public static int spe = 8;
//your variable declarations here
public void setup() 
{
  stars = new Star[400];
  yun = new ArrayList<Asteriod>();
  for(int i = 0; i<20; i++){
   yun.add(new Asteriod());
  }
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  bullet = new ArrayList<Bullet>();

  size(800,800);

}
public void draw() 
{
  background(0);
  shengZhou.move();
  shengZhou.show();
  shengZhou.sped();
  bullet.show();
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  Asteriods();
  
  
}

public void keyPressed(){  
  shengZhou.control();
}

public void Asteriods(){
  for(int i = 0; i<yun.size(); i++){
    yun.get(i).show();
    yun.get(i).move();
    if(dist(yun.get(i).getX(), yun.get(i).getY(), shengZhou.getX(), shengZhou.getY())<25){
      yun.remove(i);
    }
    if(yun.size()<20){
      yun.add(new Asteriod());
    }
  }  
}

public void bullet


   