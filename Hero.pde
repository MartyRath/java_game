public class Hero
{
  private float xCoord;
  private float yCoord;
  private float heroHeight;
  private float heroWidth;
  private float speed; //speed along x-axis & fall speed
  private boolean jumping;
  private boolean falling;
  private float jumpHeight;  // How high hero can jump up
  private float highestJumpY;  // yCoord at top of jump

  //fields for collision detection..
  private float left;
  private float right;
  private float top;
  private float bottom;

  //<------------------------CONSTRUCTORS--------------------------------->
  public Hero()
  {
    xCoord = width/2;
    yCoord = height/2;
    speed=5;
    heroWidth =  40;
    heroHeight = 40;
    jumping = false;
    falling = false;
    jumpHeight = 180;
    highestJumpY = yCoord - jumpHeight; //how high can jump before falling

    // collison detection from centre of hero 
    //NOTE: the following will have getters, but not setters, as their values are set
    left = xCoord - heroWidth/2;
    right = xCoord + heroWidth/2;
    top = yCoord - heroHeight/2;
    bottom = yCoord + heroHeight/2;
  }
  
  public Hero(float xCoord)
  {
    this.xCoord = xCoord;
    yCoord = height/2;
    speed=5;
    heroWidth =  40;
    heroHeight = 40;
    jumping = false;
    falling = false;
    jumpHeight = 180;
    highestJumpY = yCoord - jumpHeight; //how high can jump before falling

    // collison detection from centre of hero 
    //NOTE: the following will have getters, but not setters, as their values are set
    left = xCoord - heroWidth/2;
    right = xCoord + heroWidth/2;
    top = yCoord - heroHeight/2;
    bottom = yCoord + heroHeight/2;
  }

  //<------------------------METHODS--------------------------------->
  public void display()
  {
    fill(#2D04E0);        //blue
    rectMode(CENTER);     //X,Y will be centre of rectangle
    rect(xCoord, yCoord, heroWidth, heroHeight);
  }

  //updates hero position, collision detections, jumping and falling
  public void update()
  {
    left = xCoord - heroWidth/2;
    right = xCoord + heroWidth/2;
    top = yCoord - heroHeight/2;
    bottom = yCoord + heroHeight/2;

    heroEdgeLimits();
    heroFallsOffScreen();
    jumping();
    falling();
    topOfJump();
  }
  //<------------------------COLLISION DETECTION--------------------------------->//
  // Collision between hero and enemy
  public boolean heroEnemyCollision(Enemy anEnemy) {
    float heroEnemyXDistance = abs(xCoord - anEnemy.getXCoord());
    float heroEnemyYDistance = abs(yCoord - anEnemy.getYCoord());

    if (heroEnemyXDistance <= (heroWidth/2 + anEnemy.getSize()/2) &&
      heroEnemyYDistance <= (heroHeight/2 + anEnemy.getSize()/2))
      return true;
    return false;
  }

  //<------------------------PRIVATE HELPER METHODS--------------------------------->

  private void jumping() {
    if (jumping == true) {
      yCoord -= speed;
    }
  }
  
  private void jumping(float someSpeed) {
    if (jumping == true) {
      yCoord -= someSpeed;
    }
  }

  private void falling() {
    if (falling == true) {
      yCoord += speed;
    }
  }

  //when hero reachest top of jump, starts falling
  private void topOfJump() {
    if (yCoord <= highestJumpY) {
      jumping = false; //stop jumping up
      falling = true;
    }
  }
  //<------------------------COLLISION DETECTION--------------------------------->//
  //Collision: Hero can't go off left or right of screen
  private void heroEdgeLimits() {
    if (xCoord < heroWidth/2) {
      xCoord = heroWidth/2;
    }
    if (xCoord>width-heroWidth/2) {
      xCoord = width-heroWidth/2;
    }
  }

  //reset hero position if falls off bottom of screen
  private boolean heroFallsOffScreen() {
    if ((yCoord-heroHeight/2) > height || heroHit == true) { //minus 150 for slight delay
      this.xCoord = width/2;
      this.yCoord = height/2;
      return true;
    } else {
      return false;
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

  public float getHeroWidth()
  {
    return heroWidth;
  }

  public float getHeroHeight() {
    return heroHeight;
  }

  public float getSpeed()
  {
    return speed;
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

  public boolean getFalling()
  {
    return falling;
  }

  public boolean getJumping()
  {
    return jumping;
  }
  
  public float getJumpHeight()
  {
    return jumpHeight;
  }
  
  public float gethighestJumpY()
  {
     return highestJumpY; 
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

  public void setHeroWidth(float heroWidth)
  {
    this.heroWidth = heroWidth;
  }

  public void setHeroHeight(float heroHeight) {
    this.heroHeight = heroHeight;
  }

  public void setSpeed(float speed)
  {
    this.speed = speed;
  }

  public void setFalling(boolean value)
  {
    falling = value;
  }

  public void setJumping(boolean value)
  {
    jumping = value;
  }
  
  public void setJumpHeight(float jumpHeight)
  {
    this.jumpHeight = jumpHeight;
  }
  
  public void setHighestJumpY(float highestJumpY)
  {
     this.highestJumpY = highestJumpY;
  }

}
//<------------------------END OF CLASS--------------------------------->
