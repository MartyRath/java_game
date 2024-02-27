public class Enemy
{
  private float xCoord;
  private float yCoord;
  private float size;
  private float xSpeed;
  private float ySpeed;

  //<------------------------CONSTRUCTORS--------------------------------->
  public Enemy() { //do we want to change fields every time (fields as parameters) or set hardcode values?
    xCoord = 200;
    yCoord = 200;
    size = 20;

    enemyShot = false; //false until shot

    xSpeed = 7;
    ySpeed = 7;
  }

  public Enemy(float xCoord, float yCoord, float size) { //do we want to change fields every time (fields as parameters) or set hardcode values?
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.size = size;

    enemyShot = false; //false until shot

    xSpeed = 7;
    ySpeed = 7;
  }

  //<------------------------METHODS--------------------------------->
  public void display() {
    fill(#F66D0B);  //orange
    circle(xCoord, yCoord, size);
  }

  public void update()
  { //moving the enemy
    xCoord += xSpeed;
    yCoord += ySpeed;

    resetEnemy();      //reset size when shot
    enemyEdgeLimits();  //bounces off edges

    //increasing speed gradually the longer the game is played
    xSpeed = xSpeed*1.0003;
    ySpeed = ySpeed*1.0003;
  }

  //<------------------------PRIVATE HELPER METHODS--------------------------------->

  //<------------------------COLLISION DETECTION--------------------------------->//
  // Collision between enemy and edges of screen
  private void enemyEdgeLimits() {
    if (xCoord < size/2) {
      xCoord = size/2;  //enemy doesn't go over edge
      xSpeed = xSpeed * random(-1.5, -0.5);  //randomising angle it hits off edges/speed
    }
    if (xCoord>width-size/2) {
      xCoord = width-size/2;
      xSpeed = xSpeed * random(-1.5, -0.5);
    }

    if (yCoord > height - size/2) {
      yCoord = height - size/2;
      ySpeed = ySpeed * random(-1.5, -0.5);
    } else if (yCoord < size/2) {
      yCoord = size/2;
      ySpeed = ySpeed * random(-1.5, -0.5);
    }
  }

  // Reset enemy if enemyShot
  private void resetEnemy() {
    if (enemyShot == true || heroHit == true) {
      xCoord = 400;
      yCoord = 500;
      size = 20;
    } else
      size = size*1.007; //grow enemy size
  }

  // Overloaded Reset enemy if enemyShot
  private void resetEnemy(float xCoord) {
    if (enemyShot == true || heroHit == true) {
      this.xCoord = xCoord;
      this.yCoord = 500;
      this.size = 20;
    } else
      size = size*1.007; //grow enemy size
  }

  //<------------------------COLLISION DETECTION--------------------------------->//
  // Collision between bullet and enemy
  private boolean enemyShot(Bullet bullet1) {
    float bulletEnemyXDistance = abs(xCoord - bullet1.getXCoord());  //distance between centre of enemy and bullet
    float bulletEnemyYDistance = abs(yCoord - bullet1.getYCoord());

    if (bulletEnemyXDistance <= (size/2 + bullet1.getDiameter()/2) &&
      bulletEnemyYDistance <= (size/2 + bullet1.getDiameter()/2)) {
      return true;
    }
    return false;
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

  public float getSize()
  {
    return size;
  }

  public float getXSpeed()
  {
    return xSpeed;
  }

  public float getYSpeed()
  {
    return ySpeed;
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

  public void setSize(float size)
  {
    this.size = size;
  }

  public void setXSpeed(float xSpeed)
  {
    this.xSpeed = xSpeed;
  }

  public void setYSpeed(float ySpeed)
  {
    this.ySpeed = ySpeed;
  }
}
//<----------------------------END OF CLASS---------------------------------------------->
