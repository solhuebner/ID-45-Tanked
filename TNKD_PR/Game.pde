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

  for (int i=0; i < 2; i++) {
  if (bullets[i].isActive) {
    if (check_movement(bullets[i].direction, bullets[i].x, bullets[i].y)) {
        bullets[i].x = out_x;
        bullets[i].y = out_y;
    }  else {
        bullets[i].bounce++;
        if (bullets[i].bounce > 3) bullets[i].isActive = false;
        switch (bullets[i].direction) {
          case DIR_W:
             bullets[i].direction = DIR_E;
             break;
             
          case DIR_NW:
             bullets[i].direction = DIR_SW;
             break;

          case DIR_N:
             bullets[i].direction = DIR_S;
             break;

          case DIR_NE:
             bullets[i].direction = DIR_SE;
             break;

          case DIR_E:
             bullets[i].direction = DIR_W;
             break;

          case DIR_SE:
             bullets[i].direction = DIR_NE;
             break;

          case DIR_S:
             bullets[i].direction = DIR_N;
             break;

          case DIR_SW:
             bullets[i].direction = DIR_NW;
             break; 
        }
    }
   }
  }

  drawPlayer();
  drawBullet();
  drawBackdrop();
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

void stateGameWaitingToStart()
{
   arglib.setPos(28,20); 
   arglib.print_P(textOb.waitingToStart);
   
   if (gameReadyToStart) {
      gameState = STATE_GAME_PLAYING;
      clearInput();
   }
};