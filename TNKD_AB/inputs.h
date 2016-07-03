#ifndef INPUTS_H
#define INPUTS_H

#include <Arduino.h>
#include "globals.h"
#include "player.h"
#include "bullet.h"
#include "levels.h"

char check_move(char x, char y)
{
  char map_x = x / 8;
  char map_y = y / 8;
  if ((map_x > 15) || (map_y > 7)) return 0;
  return get_map_block(map_x, map_y); 
}

char check_movement(char dir, char x, char y, char &out_x, char &out_y) {
       char check = false;
       out_x = x;
       out_y = y;
       switch (dir) {
      case DIR_N:
        if (!check_move(x, y-1))
        {
          out_y--;
          check = true;
        }
        break;

      case DIR_NE:
        if (!check_move(x+8, y-1))
        {
          out_x++;
          out_y--;
          check = true;
        }
        break;

      case DIR_E:
        if (!check_move(x+8, y+4))
        {
          out_x++;
          check = true;
        }
        break;

      case DIR_SE:
        if (!check_move(x+8, y+8))
        {
          out_y++;
          out_x++;
          check = true;
        }  
        break;

      case DIR_S:
        if (!check_move(x+4, y+8))
        {
          out_y++;
          check = true;
        }
        break;

      case DIR_SW:
        if (!check_move(x-1, y+8))
        {
          out_x--;
          out_y++;
          check = true;
        }  
        break;

      case DIR_W:
        if (!check_move(x-1, y+4))
        {
          out_x--;
          check = true;
        }
        break;

      case DIR_NW:
        if (!check_move(x-1, y-1))
        {
          out_x--;
          out_y--;
          check = true;
        }
        break;
    }
    return check;
}

void checkInputs()
{
  if (arduboy.pressed(LEFT_BUTTON)) {
    if (player.direction == DIR_W) {
      player.direction = DIR_SW;
    } else {
      player.direction--;
    }
  }

  if (arduboy.pressed(RIGHT_BUTTON)) {
    player.direction++;
    if (player.direction > DIR_SW) player.direction = DIR_W;
  }

  if (arduboy.pressed(B_BUTTON)) {
    if (!bullet.isActive) {
      bullet.isActive = true;
      bullet.x = player.x;
      bullet.y = player.y;
      bullet.direction = player.direction;
    }
  }

  if (arduboy.pressed(UP_BUTTON)) {
    if (check_movement(player.direction, player.x, player.y, out_x, out_y)) {
        player.x = out_x;
        player.y = out_y;
     }
  }

  if (arduboy.pressed(DOWN_BUTTON)) {
    inv_dir = (player.direction + 4) % 8;
     if (check_movement(inv_dir, player.x, player.y, out_x, out_y)) {
        player.x = out_x;
        player.y = out_y;
     }
  }

  if (arduboy.justPressed(A_BUTTON)) gameState = STATE_GAME_PAUSE;
  //if (arduboy.justPressed(B_BUTTON)) arduboy.audio.tone(880, 20);
}


#endif
