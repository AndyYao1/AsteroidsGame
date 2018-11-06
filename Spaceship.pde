class Spaceship extends Floater  
{   
    //your code here
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
  public Spaceship()
   {
	corners = 23;  //the number of corners, a triangular floater has 3   
	int[] xS = {15,5,0,-5,-5,-14,-17,-15,-17,-15,-17,-15,-17,-15,-17,-15,-17,-14,-5,-5,0, 5,15};   
	int[] yS = {0,5,5,8,5 , 5,5,4,3,2,1,0,-1,-2,-3,-4,-5,-5,-5,-8,-5,-5,0};
	xCorners = xS;
	yCorners = yS;   
	myColor = color(0, 255, 0);   
	myCenterX = 500;
	myCenterY = 500; //holds center coordinates   
	myDirectionX = 0;
	myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
	myPointDirection = 0; //holds current direction the ship is pointing in degrees    	
   }
}
