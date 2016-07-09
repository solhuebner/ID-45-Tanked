void stateMenuIntro()
{
  globalCounter++;
  for (byte i = 0; i < 4; i++) arglib.drawSelfMasked(32 * i, 10, bitmaps.TeamARG_logo, i);
  arglib.drawSelfMasked(43, 50, bitmaps.TEAM_argPart5, 0);
  if (globalCounter > 180) gameState = STATE_MENU_MAIN;
  clearInput();
}

void stateMenuMain()
{
  //sprites.drawSelfMasked(28, 8, titleScreen, 0);
  for (byte i = 0; i < 4; i++)
  {
    {
      if (((2 + i) - menuSelection) != 0)
      {
        arglib.drawSelfMasked(21 + (22 * i), 60, bitmaps.menuText, i);
      }
      if (((2 + i) - menuSelection) == 0) arglib.drawSelfMasked(21 + (22 * i), 56, bitmaps.menuText, i);
    }
  }
  if (arglib.pressed(RIGHT_BUTTON) && (menuSelection < 5)) menuSelection++;
  if (arglib.pressed(LEFT_BUTTON) && (menuSelection > 2)) menuSelection--;
  if (arglib.pressed(B_BUTTON)) {
    gameState = menuSelection;
    clearInput();
  }
}

void stateMenuHelp()
{
  //for (byte i = 0; i < 2; i++) sprites.drawSelfMasked(32, 32 * i, qrcode, i);
  if (arglib.pressed(A_BUTTON | B_BUTTON)) {
    gameState = STATE_MENU_MAIN;
    clearInput();
  }
}


void stateMenuInfo()
{
  //sprites.drawSelfMasked(16, 36, info, 0);
  if (arglib.pressed(A_BUTTON | B_BUTTON)) {
    gameState = STATE_MENU_MAIN;
    clearInput();
  }
}

void stateMenuPlay()
{ 
  if (Serial.list().length > 0) {
      arglib.setPos(4,20); 
      arglib.print_P(textOb.selectSerialPort);
      
      int listEnd = Serial.list().length;
      if (listEnd > 3) listEnd = 3;
      for (int i=0; i < listEnd; i++) {
         
         if (i == portSelection) {
           portName = Serial.list()[i];
           arglib.setPos(12+ (i*8),20);
           arglib.print_P(">".toCharArray());
         }
         arglib.setPos(12+ (i*8),28);
         arglib.print_P(Serial.list()[i].toCharArray());
      }
      
      if (arglib.pressed(UP_BUTTON) && (portSelection < listEnd)) portSelection++;
      if (arglib.pressed(DOWN_BUTTON) && (portSelection > 0)) portSelection--;
      
      
      if (arglib.pressed(B_BUTTON)) {
        myPort = new Serial(this, portName, 9600);
        myPort.bufferUntil(255);
        gameReadyToStart = false;
        gameState = STATE_GAME_WAITING;
        clearInput();
      }
      
      if (arglib.pressed(A_BUTTON)) {
        gameState = STATE_MENU_MAIN;
        clearInput();
      }
  } else {
    arglib.setPos(4,16); 
    arglib.print_P(textOb.noSerialPortsFound);
    if (arglib.pressed(A_BUTTON | B_BUTTON)) {
      gameState = STATE_MENU_MAIN;
      clearInput();
    }
  }
  
}

void stateMenuSoundfx()
{
/*
  sprites.drawSelfMasked(28, 8, titleScreen, 0);
  if (arduboy.justPressed(RIGHT_BUTTON)) arduboy.audio.on();
  if (arduboy.justPressed(LEFT_BUTTON)) arduboy.audio.off();
  if (arduboy.justPressed(A_BUTTON | B_BUTTON))
  {
    arduboy.audio.saveOnOff();
    gameState = STATE_MENU_MAIN;
  }
*/  
}