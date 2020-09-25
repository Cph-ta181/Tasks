import java.util.Random;

class Game
{
  private Random rnd;
  private int width;
  private int height;
  private int[][] board;
  private Keys keys;
  private int playerOneLife;
  private int playerTwoLife;
  private int maxPlayerLife;
  private int foodLifeGain;
  private Dot playerOne;
  private Dot playerTwo;
  private Dot[] enemies;
  private Dot food;


  Game(int width, int height, int numberOfEnemies)
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    playerOne = new Dot(0, 0, width-1, height-1);
    playerTwo = new Dot(0, width-1, width-1, height-1);
    enemies = new Dot[numberOfEnemies];
    food = new Dot((int)random(0, width), (int)random(0, height), width-1, height-1);
    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    this.playerOneLife = 100;
    this.playerTwoLife = 100;
    this.maxPlayerLife = 100;
    this.foodLifeGain = 20;
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayerOneLife()
  {
    return playerOneLife;
  }
  
  public int getPlayerTwoLife()
  {
    return playerTwoLife;
  }

  public void onKeyPressed(int ch)
  {
    keys.onKeyPressed(ch);
  }

  public void onKeyReleased(int ch)
  {
    keys.onKeyReleased(ch);
  }

  public void update()
  {
    updatePlayerOne();
    updatePlayerTwo();
    updateEnemies();
    updateFood();
    checkForCollisions();
    clearBoard();
    populateBoard();
  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayerOne()
  {
    //Update playerOne
    if (keys.wDown() && !keys.sDown())
    {
      playerOne.moveUp();
    }
    if (keys.aDown() && !keys.dDown())
    {
      playerOne.moveLeft();
    }
    if (keys.sDown() && !keys.wDown())
    {
      playerOne.moveDown();
    }
    if (keys.dDown() && !keys.aDown())
    {
      playerOne.moveRight();
    }
  }
  
  private void updatePlayerTwo(){
    //Update playerTwo
    if (keys.upDown() && !keys.downDown())
    {
      playerTwo.moveUp();
    }
    if (keys.leftDown() && !keys.rightDown())
    {
      playerTwo.moveLeft();
    }
    if (keys.downDown() && !keys.upDown())
    {
      playerTwo.moveDown();
    }
    if (keys.rightDown() && !keys.leftDown())
    {
      playerTwo.moveRight();
    }
  }

  private void updateEnemies()
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = playerOne.getX() - enemies[i].getX();
        int dy = playerOne.getY() - enemies[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }

  private void updateFood() {
    int dx = playerOne.getX() - food.getX();
    int dy = playerOne.getY() - food.getY();
    if (abs(dx) > abs(dy))
    {
      if (dx > 0)
      {
        //Player is to the right
        food.moveLeft();
      }  
      else
      {
        //Player is to the left
        food.moveRight();
      }
    } 
    else if (dy > 0)
    {
      //Player is down;
      food.moveUp();
    }  
    else
    {
      //Player is up;
      food.moveDown();
    }
  }

  private void populateBoard()
  {
    //Insert playerOne
    board[playerOne.getX()][playerOne.getY()] = 1;
    //Insert playerTwo
    board[playerTwo.getX()][playerTwo.getY()] = 4;
    //Insert food
    board[food.getX()][food.getY()] = 3;
    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
  }

  private void checkForCollisions()
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == playerOne.getX() && enemies[i].getY() == playerOne.getY())
      {
        //We have a collision
        --playerOneLife;
      }
      if (enemies[i].getX() == playerTwo.getX() && enemies[i].getY() == playerTwo.getY())
      {
        //We have a collision
        --playerTwoLife;
      }
      
    }
    //check food collidion
    if(food.getX() == playerOne.getX() && food.getY() == playerOne.getY()){
      playerOneLife  = constrain(playerOneLife += foodLifeGain, 0 , maxPlayerLife);
      food = new Dot((int)random(0, width), (int)random(0, height), width-1, height-1);
    }
    if(food.getX() == playerTwo.getX() && food.getY() == playerTwo.getY()){
      playerTwoLife  = constrain(playerTwoLife += foodLifeGain, 0 , maxPlayerLife);
      food = new Dot((int)random(0, width), (int)random(0, height), width-1, height-1);
    }
    
  }
}
