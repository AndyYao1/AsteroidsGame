class Star //note that this class does NOT extend Floater
{
  //your code here
  private int x,y;
  public Star()
  {
  	x = (int)(Math.random()*1001);
  	y = (int)(Math.random()*1001);
  }
  public void show()
  {
  	fill(255,255,255);
  	ellipse(x,y,5,5);
  }
}
