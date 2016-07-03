#ifndef BULLET_H
#define BULLET_H

#include <Arduino.h>
#include "globals.h"
#include "inputs.h"

struct Bullet
{
  public:
    int x;
    int y;
    byte direction;
    byte bounce;
  	bool isActive;	
};

Bullet bullet = { .x = 16, .y = 16, .direction = DIR_E, .bounce = 0, .isActive = false};

void drawBullet()
{
  sprites.drawSelfMasked(bullet.x, bullet.y, bullet_bitmap,0);
}

#endif
