/*
void stateMenuPlay()
//void stateGamePrepareLevel()
{
  gameState = STATE_GAME_NEXT_LEVEL;
};


void stateGameNextLevel()
{
  level++;
  gameState = STATE_GAME_PLAYING;
};
 */

void stateGamePlaying()
{
  checkInputs();
/*
  if (bullet.isActive) {
    if (check_movement(bullet.direction, bullet.x, bullet.y, out_x, out_y)) {
        bullet.x = out_x;
        bullet.y = out_y;
    }  else {
        bullet.bounce++;
        if (bullet.bounce > 3) bullet.isActive = false;
        switch (bullet.direction) {
          case DIR_W:
             bullet.direction = DIR_E;
             break;
             
          case DIR_NW:
             bullet.direction = DIR_SW;
             break;

          case DIR_N:
             bullet.direction = DIR_S;
             break;

          case DIR_NE:
             bullet.direction = DIR_SE;
             break;

          case DIR_E:
             bullet.direction = DIR_W;
             break;

          case DIR_SE:
             bullet.direction = DIR_NE;
             break;

          case DIR_S:
             bullet.direction = DIR_N;
             break;

          case DIR_SW:
             bullet.direction = DIR_NW;
             break; 
        }
    }
  }
  */
  arglib.clearDisplay();
  drawPlayer();
//  if (bullet.isActive) drawBullet();
  drawBackdrop();
  arglib.display();
};

/*
void stateGamePause()
{
  if (arglib.pressed(A_BUTTON)) gameState = STATE_GAME_PLAYING;
};

void stateGameOver()
{
  
};
*/