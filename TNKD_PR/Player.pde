class Player
{
    public int x;
    public int y;
    public int direction;
    
    public Player(int _x, int _y, int _dir) {
      this.x = _x;
      this.y = _y;
      this.direction = _dir;
    }
};

Player player = new Player(16, 16, DIR_E);

void drawPlayer()
{
  arglib.drawSelfMasked(player.x, player.y, bitmaps.tank2_bitmap,  player.direction);
}