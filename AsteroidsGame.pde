SpaceShip shengZhou = new SpaceShip();
ArrayList<Asteriod> yun;
Star [] stars;

//your variable declarations here
public void setup() 
{
  stars = new Star[400];
  
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  yun = new ArrayList<Asteriod>();
  for(int i = 0; i<20; i++){
   yun.add(new Asteriod());
  }
  size(800,800);

}
public void draw() 
{
  background(0);
  shengZhou.move();
  shengZhou.show();
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i<20; i++){
    yun.get(i).show();
    yun.get(i).move();
    if(dist(yun.get(i).getX(), yun.get(i).getY(), s, y2)
  }  
}


public void keyPressed(){  
  if(key == 'd'&&key == 'w'){
    shengZhou.accelerate(1);
    shengZhou.rotate(2);
  }else if(key == 's'&&key == 'w'){
    shengZhou.accelerate(-1);
    shengZhou.rotate(2);
  }else if(key == 'd'&&key == 'a'){
    shengZhou.accelerate(1);
    shengZhou.rotate(-2);
  }else if(key == 's'&&key == 'a'){
    shengZhou.accelerate(-1);
    shengZhou.rotate(-2);
  }else if(key == 'w'){
    shengZhou.accelerate(1);
  }else if(key == 's'){
    shengZhou.accelerate(-1);
  }else if(key == 'a'){
    shengZhou.rotate(-2);
  }else if(key == 'd'){
    shengZhou.rotate(2);
  }else if(key == 'r'){
    shengZhou.setY((int)(Math.random()*800));
    shengZhou.setX((int)(Math.random()*800));
    shengZhou.setDirectionY(0);
    shengZhou.setDirectionX(0);
    shengZhou.setPointDirection((int)(Math.random()*360));
  }
}






   