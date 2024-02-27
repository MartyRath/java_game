public class Bullet
{
  private float xCoord;
  private float yCoord;
  private float speed;
  private float diameter;

  //<------------------------CONSTRUCTORS--------------------------------->
  public Bullet()
  {
    xCoord = 0;
    yCoord = 0;
    speed = 20;
    diameter = 20;
  }

  public Bullet(float xCoord, float yCoord)
  {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    speed = 20;
    diameter = 20;
  }
  
  //<------------------------METHODS--------------------------------->
  public void display()
  {
    fill(255);  //green
    circle(xCoord, yCoord, diameter);
  }

  public void update()
  {
    if (fired == true)
    {
      xCoord += speed;
    }
  }

  //<------------------------GETTERS--------------------------------->
  public float getXCoord()
  {
    return xCoord;
  }

  public float getYCoord()
  {
    return yCoord;
  }

  public float getSpeed()
  {
    return speed;
  }

  public float getDiameter()
  {
    return diameter;
  }

  //<------------------------SETTERS--------------------------------->
  public void setXCoord(float xCoord)
  {
    this.xCoord = xCoord;
  }

  public void setYCoord(float yCoord)
  {
    this.yCoord = yCoord;
  }
  
    public void setSpeed(float speed)
  {
    this.speed = speed;
  }

  public void setDiameter(float diameter)
  {
    this.diameter = diameter;
  }
  
}

//<------------------------END OF CLASS--------------------------------->
