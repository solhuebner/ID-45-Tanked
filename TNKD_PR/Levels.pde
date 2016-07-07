char get_map_block (int map_x, int map_y) {
  return backdrop[(map_y * 16) + map_x];
}

void drawBackdrop()
{
    for (char x=0; x<16;x++) {
    for (char y=0; y<8; y++) {
      if (get_map_block(x,y) > 0) arglib.drawSelfMasked(x*8, y*8, bitmaps.wall_bitmap,  0);
    }
  }
}