// Name: Marty Rath
// Student Number: 20104119
/* Platform game. Survive by avoiding falling or hitting the enemy.
   Score points and stop enemy growing/increasing speed by shooting enemy.
*/

import javax.swing.*;

/* Declaring objects
   and declaring variables */
Enemy enemy;
Hero hero;
Player player;
Scoring scoreboard;

//Declaring arrays
Bullet[] bullet = new Bullet[100];
Platform[] platformz = new Platform[6];

int currentBullet = 0;  //keeps track of current bullet fired
boolean left, right;    //if player is moving left or right
boolean fired;          //if player has fired bullet
boolean enemyShot;      //if the enemy has been shot
boolean heroHit;        //if hero has been hit by enemy

//Current game data
int livesLost = 0;             //keeps track of the number of lives lost in the current game
int score = 0;                 //high score of the current game
int maxLivesPerGame = 3;       //maximum number of lives that can be lost before the game ends
int livesRemaining = maxLivesPerGame - livesLost;

//<-----------------------------SETUP---------------------------------------->
void setup()
{
  size(1280, 720);
  noCursor();

  hero = new Hero();
  enemy = new Enemy(random(400, 500), random(300, 500), 20);
  scoreboard = new Scoring();

  //platform positions
  platformz[0] = new Platform(width/2, height/2, 252);
  platformz[1] = new Platform(width/8, height/4);
  platformz[2] = new Platform(width/8, height/4*3);
  platformz[3] = new Platform(width/8*7, height/4);
  platformz[4] = new Platform(width/8*7, height/4*3);
  platformz[5] = new Platform(width/2, height/16*15);

  //create a player object with the data entered by the user
  player = new Player(JOptionPane.showInputDialog("Insert name: (max 6 chars: "));
  
  int i = 0;
  while (i < bullet.length) {
    bullet[i] = new Bullet();  //adds bullet object to each index in bullet array
    i++;
  }
}

//<-----------------------------DRAW---------------------------------------->
void draw()
{
  background(#89CFF0);  //fills background light blue
  hero.display();
  hero.update();
  heroHit = hero.heroEnemyCollision(enemy);  //hero/enemy collision detection assigned to variable

  // for loop to iterate through platformz array to display platforms and for collision detection
  for (int i = 0; i<platformz.length; i++) {
    platformz[i].display();
    platformz[i].hitPlatform(hero);
    platformz[i].fallingOffPlatforms(hero);
  }
  
  //hero loses life if hit by enemy or falls off screen
  if (heroHit || hero.heroFallsOffScreen()) {
    livesLost++;
  }

  /*If the player still has a life left in the current game, draw the enemy at its new location
   and check for a collision with the hero */
  if (livesLost < maxLivesPerGame) {
    enemy.display();
    enemy.update();
    if (enemyShot) {   // Hero gains a score if hits enemy with bullet
      score++;
    }
  }
  
  //If the hero has no lives left in the current game
  else {
    player.addScore(score);
    int reply = JOptionPane.showConfirmDialog(null,
      "Game Over! Your score last game:" + score
      + "\n\nHighest Score: "  + player.highestScore()
      + "\nLowest Score:  "    + player.lowestScore()
      + "\nAverage Score: "    + player.averageScore()
      + ".\nWould you like to play another game",
      "Play next game?", JOptionPane.YES_NO_OPTION);
    
    if (reply == JOptionPane.YES_OPTION) {
      //if player chooses to play another game.
      resetGame();
    } 
    else {
      gameOver();  //exits game
    }
  }

  //navigation
  if (right == true) {
    hero.setXCoord((hero.getXCoord()+hero.getSpeed()));
  }
  if (left == true) {
    hero.setXCoord((hero.getXCoord()-hero.getSpeed()));
  }

  //if the spacebar is pressed, fire bullet, check for collision detection
  if (fired == true) {
    for (int i = 0; i<currentBullet; i++) {
    bullet[i].display();
    bullet[i].update();
    enemyShot = enemy.enemyShot(bullet[i]);  //check for collision detection with enemy/bullet
  }
  }
  
  //updating and displaying scores when game ends
  scoreboard.update(score);
  scoreboard.display();
}

//<-----------------------------------KEY PRESSED---------------------------------------->
void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == RIGHT)
    {
      right = true;
    }
    
    if (keyCode == LEFT)
    {
      left = true;
    }
    
    //hero jumping
    if (keyCode == UP)
      if (hero.getJumping() == false)
    {
      hero.setJumping(true);
      hero.setHighestJumpY(hero.getYCoord() - hero.getJumpHeight());  //  highest position after jumping
    }
    
    //shift held to run
    if (keyCode == SHIFT)
    {
      hero.setSpeed(10);
    }
  }  //end of key == CODED
  
  //spacebar to fire bullet
  if (key == ' ')
  {
    bullet[currentBullet].setXCoord(hero.getXCoord());
    bullet[currentBullet].setYCoord(hero.getYCoord());
    fired = true;
    currentBullet++;
  }
  
  //alternative keys for navigation
  if (key == 'd' || key == 'D')
    right = true;
  if (key == 'a' || key == 'A')
    left = true;
  //hero jumping
  if (key == 'w' || key == 'W' && hero.getJumping() == false)
  {
      hero.setJumping(true);
      hero.setHighestJumpY(hero.getYCoord() - hero.getJumpHeight());  //  highest position after jumping
  }
}

//<-----------------------------------KEY RELEASED---------------------------------------->
void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == RIGHT)
      right = false;
    if (keyCode == LEFT)
      left = false;
    if (keyCode == SHIFT)  //run mode
      hero.setSpeed(5);
  }
  
  //alternative keys for navigation
  if (key == 'd' || key == 'D')
    right = false;
  if (key == 'a' || key == 'A')
    left = false;
}

//<-----------------------------RESET GAME---------------------------------------->
//method prepares for the next game by reseting the variables that store the current game information.

void resetGame()
{
  livesLost = 0;          //resets the lives lost in the current game to zero
  score = 0;              //resets the score of the current game to zero
  enemy.resetEnemy();
  enemy.setXSpeed(7);
  enemy.setYSpeed(7);
}

//<-----------------------------GAME OVER---------------------------------------->
//method displays the player information, high scores and statistics, before exiting the program.

void gameOver()
{
  exit();
}
