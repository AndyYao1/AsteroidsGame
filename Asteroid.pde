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
	int[] xS = {-22,14,26,12,-22,-10};   
	int[] yS = {-16,-16,0,20,16,0};
	xCorners = xS;
	yCorners = yS;   
	myColor = color(100, 100, 100);   
	myCenterX = (int)(Math.random()*1001);
	myCenterY = (int)(Math.random()*1001); 
	myDirectionX = Math.random()*2;
	myDirectionY = Math.random()*2; 
	myPointDirection = Math.random()*TWO_PI*2;
	rotationspeed = ((int)(Math.random()*3)+3);   	
   }
   public void move(){
   	turn(rotationspeed);
   	super.move();
   }
}
