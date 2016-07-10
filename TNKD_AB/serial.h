#ifndef serial_h
#define serial_h

void serialStart() {
  Serial.begin(9600); 
}

void serialClearBuffer () {
      serialPtr = 0;
      memset(serialBuffer,0,sizeof(serialBuffer));  
}

void serialRead () {
  while (Serial.available()) {
    char inChar = (char)Serial.read();

    serialBuffer[serialPtr] = inChar;
    serialPtr++;
    //something is not right; reset
    if (serialPtr > 6) serialClearBuffer();
    
    //command complete
    if (inChar == 255) {

      serialClearBuffer();
    }
  }
}

void serialSendReady() {
  Serial.write((byte)0);
  Serial.write((byte)255);
}

void serialSendMove(byte x, byte y, byte dir) {
  Serial.write((byte)1);
  Serial.write(x);
  Serial.write(y);
  Serial.write(dir);
  Serial.write((byte)255);
}

void serialSendFire(byte x, byte y, byte dir) {
  Serial.write((byte)2);
  Serial.write(x);
  Serial.write(y);
  Serial.write(dir);
  Serial.write((char)255);
}
void serialEnd() {
  Serial.end();
}


#endif
