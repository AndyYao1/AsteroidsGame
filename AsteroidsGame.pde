//your variable declarations here

Spaceship a = new Spaceship();
Star [] stars;
ArrayList <Asteroid> asfield = new ArrayList<Asteroid>();
public void setup() 
{
  //your code here
  size(1000,1000);
  background(0);
  stars = new Star[100];
	for (int i = 0; i < stars.length; i++) {
		stars[i] = new Star();
	}
	for (int i = 0; i < 15; i++) {
		Asteroid b = new Asteroid(); 
		asfield.add(b);
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
  for (int i = 0; i < asfield.size(); i++) {
  		asfield.get(i).move();
		asfield.get(i).show();
		float dis = dist(a.getX(), a.getY(), asfield.get(i).getX(), asfield.get(i).getY());
		if(dis < 30){
			asfield.remove(i);
		}
	}

}

public void keyPressed()
{
 if (key == 'w')
 {
 	a.accelerate(0.2);
 }
 if(key == 'd')
 {
 	a.turn(4);
 }
 if(key == 'a')
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

