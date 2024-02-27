public class Scoring
{
  private int score;
  private int livesRemaining;

  //<------------------------CONSTRUCTORS--------------------------------->
  public Scoring () {
    livesRemaining = maxLivesPerGame - livesLost;
  }
  
  public Scoring (int maxLives) {
    livesRemaining = maxLives - livesLost;
  }

  //<------------------------METHODS--------------------------------->
  public void display() {
    textSize(50);
    fill(255);
    text("LIVES: " + livesRemaining, 30, 50);
    text("SCORE: " + score, 30, 700);
  }

  public void update(int score) {
    livesRemaining = maxLivesPerGame - livesLost;
    this.score = score;
  }

  //<------------------------GETTERS--------------------------------->
  public int getScore() {
    return score;
  }

  public int getLivesRemaining() {
    return livesRemaining;
  }
  
  //<------------------------SETTERS--------------------------------->
  public void setScore(int score) {
    this.score = score;
  }

  public void setLivesRemaining(int livesRemaining) {
    this.livesRemaining = livesRemaining;
  }
}

//<------------------------END OF CLASS--------------------------------->
