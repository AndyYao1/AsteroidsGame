//your variable declarations here

Spaceship a = new Spaceship();
Star [] stars;
Asteroid b = new Asteroid();

public void setup() 
{
  //your code here
  size(1000,1000);
  background(0);
  stars = new Star[100];
	for (int i = 0; i < stars.length; i++) {
		stars[i] = new Star();
	}
}

public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < stars.length; i++) {
		stars[i].show();
	}
  a.show();
  a.move();
  b.move();
  b.show();
}

public void keyPressed()
{
 if (key == 'w')
 {
 	a.accelerate(0.5);
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

