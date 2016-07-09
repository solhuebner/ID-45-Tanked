boolean check_move(int x, int y)
{
  int map_x = x / 8;
  int map_y = y / 8;
  if ((map_x > 15) || (map_y > 7)) return true;
  return (get_map_block(map_x, map_y) > 0); 
}

boolean check_movement(int dir, int x, int y) {
       boolean check = false;
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
  if (arglib.pressed(LEFT_BUTTON)) {
    if (player.direction == DIR_W) {
      player.direction = DIR_SW;
    } else {
      player.direction--;
    }
  }

  if (arglib.pressed(RIGHT_BUTTON)) {
    player.direction++;
    if (player.direction > DIR_SW) player.direction = DIR_W;
  }

  if (arglib.pressed(B_BUTTON)) {
    if (!bullet.isActive) {
      bullet.isActive = true;
      bullet.x = player.x;
      bullet.y = player.y;
      bullet.bounce = 0;
      bullet.direction = player.direction;
    }
  }

  if (arglib.pressed(UP_BUTTON)) {
    if (check_movement(player.direction, player.x, player.y)) {
        player.x = out_x;
        player.y = out_y;
     }
  }

  if (arglib.pressed(DOWN_BUTTON)) {
    inv_dir = (player.direction + 4) % 8;
     if (check_movement(inv_dir, player.x, player.y)) {
        player.x = out_x;
        player.y = out_y;
     }
  }

  //if (arglib.justPressed(A_BUTTON)) gameState = STATE_GAME_PAUSE;
}
//-------------------------------

void keyReleased()
{
 if (key == CODED) {
  switch (keyCode) {
    case UP:
      arglib.buttons[UP_BUTTON] = false;
      break;
      
    case DOWN:
      arglib.buttons[DOWN_BUTTON] = false;
      break;
      
    case LEFT:
      arglib.buttons[LEFT_BUTTON] = false;
      break;
      
    case RIGHT:
      arglib.buttons[RIGHT_BUTTON] = false;
      break;
  }
  }
  if (key == ',') arglib.buttons[A_BUTTON] = false;
  if (key == '.') arglib.buttons[B_BUTTON] = false;
}

void keyPressed()
{
  
 if (key == CODED) {
  switch (keyCode) {
    case UP:
      arglib.buttons[UP_BUTTON] = true;
      break;
      
    case DOWN:
      arglib.buttons[DOWN_BUTTON] = true;
      break;
      
    case LEFT:
      arglib.buttons[LEFT_BUTTON] = true;
      break;
      
    case RIGHT:
      arglib.buttons[RIGHT_BUTTON] = true;
      break;
  }
  }
  
  if (key == ',') arglib.buttons[A_BUTTON] = true;
  if (key == '.') arglib.buttons[B_BUTTON] = true;

}

void clearInput() {
  for (int i=0; i< 6; i++) {
    arglib.buttons[i] = false;
  }
}