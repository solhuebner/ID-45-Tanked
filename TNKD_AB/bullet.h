#ifndef BULLET_H
#define BULLET_H

#include <Arduino.h>
#include "globals.h"

struct Bullet
{
  public:
    int x;
    int y;
    byte direction;
  	bool isActive;	
};

Bullet bullet = { .x = 16, .y = 16, .direction = DIR_E, .isActive = false};

void drawBullet()
{
  sprites.drawSelfMasked(bullet.x, bullet.y, bullet_bitmap,0);
}

#endif
