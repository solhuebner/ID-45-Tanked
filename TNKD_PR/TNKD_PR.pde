/*
 */

Arglib arglib = new Arglib();
Bitmaps bitmaps = new Bitmaps();

void setup() {  
  size(640, 320,FX2D);
  frameRate(30);
  noStroke();

  show_logo(); 
}

void show_logo()
{
  drawPlayer();
  arglib.display();
}

void keyReleased()
{
  arglib.inputs = 0;
}

void keyPressed()
{
     if (key == CODED)
     {
       if (keyCode == UP){arglib.inputs = arglib.inputs | DPAD_UP;}
       else if (keyCode == DOWN){arglib.inputs = arglib.inputs | DPAD_DOWN;}
       else if (keyCode == LEFT){arglib.inputs = arglib.inputs | DPAD_LEFT;}
       else if (keyCode == RIGHT){arglib.inputs = arglib.inputs | DPAD_RIGHT;}
      }
     else if (key == 'd'){arglib.inputs = arglib.inputs | BUTTON_1;}
     else if (key == 'f'){arglib.inputs = arglib.inputs | BUTTON_2;}
     else if (key == 'g'){arglib.inputs = arglib.inputs | BUTTON_3;}      
     else if (key == 'h'){arglib.inputs = arglib.inputs | BUTTON_4;}
     else if (key == 'D'){arglib.inputs = arglib.inputs | BUTTON_1;}
     else if (key == 'F'){arglib.inputs = arglib.inputs | BUTTON_2;}
     else if (key == 'G'){arglib.inputs = arglib.inputs | BUTTON_3;}      
     else if (key == 'H'){arglib.inputs = arglib.inputs | BUTTON_4;}          
}