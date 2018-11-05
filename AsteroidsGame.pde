//your variable declarations here

Spaceship a = new Spaceship();
public void setup() 
{
  //your code here
  size(1000,1000);
  background(0);
}
public void draw() 
{
  //your code here
  background(0);
  a.show();
  a.move();
}
public void keyPressed()
{
 if (key == 'w')
 {
 	a.accelerate(1);
 }
 if(key == 'a')
 {
 	a.turn(4);
 }
 if(key == 'd')
 {
 	a.turn(-4);
 }
 if(key == '1')
 {
 	a.setX((int)(Math.random()*1001));
 	a.setY((int)(Math.random()*1001));
 	a.setPointDirection(0);
 	a.setDirectionY(0);
 	a.setDirectionX(0);
 }
}

