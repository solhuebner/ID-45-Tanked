#ifndef GLOBALS_H
#define GLOBALS_H

#include <Arduino.h>
#include "Arglib.h"
#include "bitmaps.h"

//define menu states (on main menu)
#define STATE_MENU_INTRO             0
#define STATE_MENU_MAIN              1
#define STATE_MENU_HELP              2
#define STATE_MENU_PLAY              3
#define STATE_MENU_INFO              4
#define STATE_MENU_SOUNDFX           5

//define game states (on main menu)
#define STATE_GAME_NEXT_LEVEL        6
#define STATE_GAME_PLAYING           7
#define STATE_GAME_PAUSE             8
#define STATE_GAME_OVER              9

#define GAME_TOP                     0
#define GAME_BOTTOM                  48
#define GAME_LEFT                    0
#define GAME_RIGHT                   112

//Operation codes

#define OP_MOVE  1
#define OP_SHOOT 2
#define OP_DIE  99

/*
   Directions

   1 2 3
    \|/
 0 - * - 4
    /|\
   7 6 5
*/

#define DIR_W  0
#define DIR_NW 1
#define DIR_N  2
#define DIR_NE 3
#define DIR_E  4
#define DIR_SE 5
#define DIR_S  6
#define DIR_SW 7


#define FIRST_LEVEL                  0


Arduboy arduboy;
Sprites sprites(arduboy);

byte gameState = STATE_MENU_INTRO;   // start the game with the TEAM a.r.g. logo
byte menuSelection = STATE_MENU_PLAY; // PLAY menu item is pre-selected
byte globalCounter = 0;
byte level = FIRST_LEVEL;

char out_x, out_y, inv_dir;

PROGMEM const unsigned char backdrop[] = {
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
  1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,
  1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,
  1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,1,
  1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,
  1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,    
};

#endif
