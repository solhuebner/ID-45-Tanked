class Bullet
{
    public int x;
    public int y;
    public int direction;
	public int bounce;
	public boolean isActive;
    
    public Bullet() {
      this.x = 0;
      this.y = 0;
      this.direction = 0;
	  this.bounce = 0;
	  this.isActive = false;
    }
};

final int BULLET_PR = 0;
final int BULLET_AB = 1;
Bullet[] bullets = new Bullet[2];

void drawBullet()
{
  if (bullets[BULLET_PR].isActive) arglib.drawSelfMasked(bullets[BULLET_PR].x, bullets[BULLET_PR].y, bitmaps.bullet_bitmap, 0);
  if (bullets[BULLET_AB].isActive) arglib.drawSelfMasked(bullets[BULLET_AB].x, bullets[BULLET_AB].y, bitmaps.bullet_bitmap, 0);
}