/*
 */
import processing.serial.*;

Serial myPort = null;  // Create a list of objects from Serial class

Arglib arglib = new Arglib();
Bitmaps bitmaps = new Bitmaps();
Text textOb = new Text();

void setup() {  
  size(640, 320,FX2D);
  frameRate(30);
  noStroke();
  bullets[BULLET_PR] = new Bullet();
  bullets[BULLET_AB] = new Bullet();
}

void draw() {
    checkInputs();
    arglib.clearDisplay();
    
    switch(gameState) {
      case STATE_MENU_INTRO:
          stateMenuIntro();
          break;
          
     case STATE_MENU_MAIN:
          stateMenuMain();
          break;
          
     case STATE_MENU_HELP:
          stateMenuHelp();
          break;
          
     case STATE_MENU_PLAY:
          stateMenuPlay();
          break;
          
     case STATE_GAME_PLAYING:
          stateGamePlaying();
          break;
          
     case STATE_GAME_WAITING:
          stateGameWaitingToStart();
          break;
          
    }
    arglib.display();
    lastGameState = gameState;
}

void serialEvent(Serial myPort) {
  byte x = 0;
  byte y = 0;
  byte dir = 0;
  if (myPort != null) {
     byte[] dataIn = myPort.readBytes();
     switch (dataIn[0]) {
       case 0:
         gameReadyToStart = true;
         break;
         
       case 1:
         x = dataIn[1];
         y = dataIn[2];
         dir = dataIn[3];
         playerAB.x = x;
         playerAB.y = y;
         playerAB.direction = dir;
         break;
         
       case 2:
         x = dataIn[1];
         y = dataIn[2];
         dir = dataIn[3];
         bullets[BULLET_AB].x = x;
         bullets[BULLET_AB].y = y;
         bullets[BULLET_AB].direction = dir; 
         bullets[BULLET_AB].isActive = true;
         bullets[BULLET_AB].bounce = 0;
         println(" x = " + x + " y = " + y + " dir = " + dir);
         break;
         
     }
  }
}