#ifndef GAME_H
#define GAME_H

#include <Arduino.h>
#include "globals.h"
#include "inputs.h"
#include "player.h"
#include "bullet.h"
#include "enemies.h"
#include "elements.h"
#include "levels.h"

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


void stateGamePlaying()
{
  checkInputs();

  if (bullet.isActive) {
    if (check_movement(bullet.direction, bullet.x, bullet.y, out_x, out_y)) {
        bullet.x = out_x;
        bullet.y = out_y;
    }  else {
        bullet.isActive = false; 
    }
  }
  
  drawPlayer();
  if (bullet.isActive) drawBullet();
  drawBackdrop();
};

void stateGamePause()
{
  if (arduboy.justPressed(A_BUTTON)) gameState = STATE_GAME_PLAYING;
};

void stateGameOver()
{
  
};



#endif
