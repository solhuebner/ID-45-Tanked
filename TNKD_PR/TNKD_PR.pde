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
  if (myPort != null) {
     byte[] dataIn = myPort.readBytes();
     switch (dataIn[0]) {
       case 0:
         gameReadyToStart = true;
         break;
         
       case 1:
         byte x = dataIn[1];
         byte y = dataIn[2];
         byte dir = dataIn[3];
         println("x = " + x + " y = " + y + " dir = " + dir);
     }
  }
}