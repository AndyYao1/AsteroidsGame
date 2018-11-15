class Asteroid extends Floater
{
  private int rotationspeed;
  public void setX(int x){myCenterX=x;}  
  public int getX(){return (int)myCenterX;}  
  public void setY(int y){myCenterY=y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX=x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY=y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
  public Asteroid()
   {
	corners = 6;  //the number of corners, a triangular floater has 3   
	int[] xS = {-11,7,13,6,-11,-5};   
	int[] yS = {-8,-8,0,10,8,0};
	xCorners = xS;
	yCorners = yS;   
	myColor = color(100, 100, 100);   
	myCenterX = (int)(Math.random()*1001);
	myCenterY = (int)(Math.random()*1001); 
	myDirectionX = (Math.random()*TWO_PI*2-TWO_PI);
	myDirectionY = (Math.random()*TWO_PI*2-TWO_PI); 
	myPointDirection = 0;
	rotationspeed = ((int)(Math.random()*3)+1);   	
   }
   public void move(){
   	turn(rotationspeed);
   	super.move();
   }
}
