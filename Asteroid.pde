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
	int[] xS = {20,-15,-10,25,10,20};   
	int[] yS = {20,20,-15,-15,-10,10};
	xCorners = xS;
	yCorners = yS;   
	myColor = color(100, 100, 100);   
	myCenterX = 500;
	myCenterY = 500; 
	myDirectionX = 0;
	myDirectionY = 0; 
	myPointDirection = 0;
	rotationspeed = ((int)(Math.random()*3)-1);   	
   }
   public void move(){
   	turn(rotationspeed);
   	super.move();
   }
}
