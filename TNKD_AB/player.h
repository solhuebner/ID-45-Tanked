#ifndef PLAYER_H
#define PLAYER_H

#include <Arduino.h>
#include "globals.h"

struct Player
{
  public:
    int x;
    int y;
    byte direction;
};

Player player = { .x = 112, .y = 32, .direction = DIR_W};

void drawPlayer()
{
  sprites.drawSelfMasked(player.x, player.y, tank_2,  player.direction);
}

#endif
