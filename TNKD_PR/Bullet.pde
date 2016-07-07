class Bullet
{
    public int x;
    public int y;
    public int direction;
	public int bounce;
	public boolean isActive;
    
    public Bullet(int _x, int _y) {
      this.x = _x;
      this.y = _y;
      this.direction = 0;
	  this.bounce = 0;
	  this.isActive = false;
    }
};

Bullet bullet = new Bullet(16, 16);

void drawBullet()
{
  arglib.drawSelfMasked(bullet.x, bullet.y, bitmaps.bullet_bitmap, 0);
}