#ifndef LEVELS_H
#define LEVELS_H

#include <Arduino.h>
#include "globals.h"

char get_map_block (char map_x, char map_y) {
  return pgm_read_byte_near(backdrop + (map_y * 16) + map_x);
}

void drawBackdrop()
{
    for (char x=0; x<16;x++) {
    for (char y=0; y<8; y++) {
      if (get_map_block(x,y) > 0) sprites.drawSelfMasked(x*8, y*8, wall,  0);
    }
  }
}


#endif
