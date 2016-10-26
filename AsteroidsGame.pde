SpaceShip shengZhou = new SpaceShip();
Asteriod [] yun;
Star [] stars;

//your variable declarations here
public void setup() 
{
  stars = new Star[400];
  yun = new Asteriod[20];
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  for(int i = 0; i<yun.length; i++){
    yun[i] = new Asteriod();
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
  for(int i = 0; i<yun.length; i++){
    yun[i].show();
    yun[i].rotate((int)(Math.random()*4)-2);
    yun[i].move();
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









   