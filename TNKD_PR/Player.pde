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

Player playerPR = new Player(8, 32, DIR_E);
Player playerAB = new Player(112, 32, DIR_W);

void drawPlayer()
{
  arglib.drawSelfMasked(playerPR.x, playerPR.y, bitmaps.tank1_bitmap,  playerPR.direction);
  arglib.drawSelfMasked(playerAB.x, playerAB.y, bitmaps.tank2_bitmap,  playerAB.direction);
}