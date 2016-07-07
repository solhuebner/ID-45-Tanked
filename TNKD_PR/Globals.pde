//define menu states (on main menu)
final int STATE_MENU_INTRO =            0;
final int STATE_MENU_MAIN  =            1;
final int STATE_MENU_HELP  =            2;
final int STATE_MENU_PLAY  =            3;
final int STATE_MENU_INFO  =            4;
final int STATE_MENU_SOUNDFX =          5;

//define game states (on main menu)
final int STATE_GAME_NEXT_LEVEL =       6;
final int STATE_GAME_PLAYING    =       7;
final int STATE_GAME_PAUSE      =       8;
final int STATE_GAME_OVER       =       9;

final int GAME_TOP              =       0;
final int GAME_BOTTOM           =       48;
final int GAME_LEFT             =       0;
final int GAME_RIGHT            =       112;

//Operation codes

final int OP_MOVE  = 1;
final int OP_SHOOT = 2;
final int OP_DIE   = 99;

/*
   Directions

   1 2 3
    \|/
 0 - * - 4
    /|\
   7 6 5
*/

final byte DIR_W  = 0;
final byte DIR_NW = 1;
final byte DIR_N  = 2;
final byte DIR_NE = 3;
final byte DIR_E  = 4;
final byte DIR_SE = 5;
final byte DIR_S  = 6;
final byte DIR_SW = 7;


byte gameState = STATE_MENU_INTRO;   // start the game with the TEAM a.r.g. logo
byte menuSelection = STATE_MENU_PLAY; // PLAY menu item is pre-selected

int out_x, out_y, inv_dir;

final char backdrop[] = {
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
  1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,
  1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,
  1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,1,
  1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,
  1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,    
};