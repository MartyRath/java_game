public class Platform 
{
  private float xCoord;
  private float yCoord;
  private float pWidth;
  private float pHeight;

  //fields for collision detection..
  //NOTE: Will have getters, but not setters
  private float left;
  private float right;
  private float top;
  private float bottom;

  //<------------------------CONSTRUCTORS--------------------------------->
  public Platform (float xCoord, float yCoord)
  {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    pWidth = 250;
    pHeight = 15;

    left = xCoord - pWidth/2; // xCoord - notRectMode CENTER
    right = xCoord + pWidth/2; //pWidth- notRectMode CENTER
    top = yCoord - pHeight/2; // yCoord- notRectMode CENTER
    bottom = yCoord + pHeight/2; // pHeight- notRectMode CENTER
  }

  //overloaded constructor with adjustable platform width
  public Platform (float xCoord, float yCoord, float pWidth)
  {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.pWidth = pWidth;
    pHeight = 15;

    left = xCoord - pWidth/2; 
    right = xCoord + pWidth/2; 
    top = yCoord - pHeight/2; 
    bottom = yCoord + pHeight/2; 
  }

  //<------------------------METHODS--------------------------------->
  public void display() {
    fill(#F66D0B);  //orange
    rectMode(CENTER);
    rect(xCoord, yCoord, pWidth, pHeight);
  }
  
  //<------------------------COLLISION DETECTION--------------------------------->//
  //collision detection: hero stops falling if hits platform
  public void hitPlatform(Hero hero1)
  { 
    if (left <= hero1.getRight() &&
      right >= hero1.getLeft() &&
      top <= hero1.getBottom() &&
      bottom >= hero1.getTop())
    {
      hero1.setFalling(false);
      hero1.setYCoord(yCoord - pHeight/2 - hero.getHeroHeight()/2);  // ensures hero is neatly atop platform
    }
  }
  
  //<------------------------COLLISION DETECTION--------------------------------->//
  //collision detection: hero starts falling if off platform
  public void fallingOffPlatforms(Hero hero1)
  {
    if (hero1.getJumping() == false) //make sure not jumping
    {
      boolean onPlatform = false;
      //collision detection if hero is on platform, make onPlatform true
      if (hero1.top <= bottom &&
        hero1.bottom >= top &&
        hero1.left <= right &&
        hero1.right >= left) {
        onPlatform = true;
      }
      //if not on platform
      if (onPlatform == false)
      {
        hero1.setFalling(true);
      }
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

  public float getPWidth()
  {
    return pWidth;
  }

  public float getPHeight() {
    return pHeight;
  }
  
  public float getLeft()
  {
    return left;
  }

  public float getRight()
  {
    return right;
  }

  public float getTop()
  {
    return top;
  }

  public float getBottom()
  {
    return bottom;
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

  public void setPWidth(float pWidth)
  {
    this.pWidth = pWidth;
  }

  public void setHeroHeight(float pHeight) {
    this.pHeight = pHeight;
  }

}

//<------------------------END OF CLASS--------------------------------->
