// Inputs
final int UP_BUTTON  = 0;
final int LEFT_BUTTON   = 1;
final int RIGHT_BUTTON  = 2;
final int DOWN_BUTTON   = 3;
final int A_BUTTON    = 4;
final int B_BUTTON    = 5;
  

final int PATTERN_WHITE = 1;
final int PATTERN_BLACK = 0;


final int screen_width = 128;
final int screen_height = 64;
final int scale_factor = 5;

class Arglib
{
   char[][] screen_buffer = new char[screen_width][screen_height];
   int current_x = 0;
   int current_y = 0;
   
   boolean[] buttons = new boolean[6];
   
   char drawPattern = 0;
   
   //embedding font, for convenience
   long font[] = {
    0x00000002L,    // character ' ' (32)
    0xB8000001L,    // character '!' (33)
    0x18060003L,    // character '"' (34)
    0x57D5F505L,    // character '#' (35)
    0x957F5485L,    // character '$' (36)
    0x92092004L,    // character '%' (37)
    0x556C8A05L,    // character '&' (38)
    0x18000001L,    // character ''' (39)
    0x74400002L,    // character '(' (40)
    0x8B800002L,    // character ')' (41)
    0x255D5205L,    // character '*' (42)
    0x23880003L,    // character '+' (43)
    0x82000002L,    // character ',' (44)
    0x21084004L,    // character '-' (45)
    0x80000001L,    // character '.' (46)
    0xC1060003L,    // character '/' (47)
    0x766B3705L,    // character '0' (48)
    0x97E00003L,    // character '1' (49)
    0xCD6B2004L,    // character '2' (50)
    0x546AA004L,    // character '3' (51)
    0x3909F004L,    // character '4' (52)
    0x9D6A9004L,    // character '5' (53)
    0x756A8004L,    // character '6' (54)
    0x0E4A3004L,    // character '7' (55)
    0x556AA004L,    // character '8' (56)
    0x156AE004L,    // character '9' (57)
    0xA0000001L,    // character ':' (58)
    0x82800012L,    // character ';' (59)
    0x22A20003L,    // character '<' (60)
    0x5294A004L,    // character '=' (61)
    0x8A880003L,    // character '>' (62)
    0x106A2004L,    // character '?' (63)
    0x557B1705L,    // character '@' (64)
    0xF253E004L,    // character 'A' (65)
    0xFD6AA004L,    // character 'B' (66)
    0x7462A004L,    // character 'C' (67)
    0xFC62E004L,    // character 'D' (68)
    0xFD6B1004L,    // character 'E' (69)
    0xF94A1004L,    // character 'F' (70)
    0x746AC004L,    // character 'G' (71)
    0xF909F004L,    // character 'H' (72)
    0x8FE20003L,    // character 'I' (73)
    0x4420F004L,    // character 'J' (74)
    0xF9151004L,    // character 'K' (75)
    0xFC210004L,    // character 'L' (76)
    0xF8882F85L,    // character 'M' (77)
    0xF889F004L,    // character 'N' (78)
    0x7462E004L,    // character 'O' (79)
    0xF94A2004L,    // character 'P' (80)
    0x746A9B05L,    // character 'Q' (81)
    0xF94BA004L,    // character 'R' (82)
    0x956A9004L,    // character 'S' (83)
    0x087E1085L,    // character 'T' (84)
    0x7C20F004L,    // character 'U' (85)
    0x1B20C185L,    // character 'V' (86)
    0x7C190785L,    // character 'W' (87)
    0x8A88A885L,    // character 'X' (88)
    0x08B82085L,    // character 'Y' (89)
    0x8E6B3885L,    // character 'Z' (90)
    };
   

   Arglib ()
   {
   }

   void readInputs()
   {
   }
   
   
   boolean pressed (int button)
   {
     return buttons[button];
   }
   void display()
   {
     background(0);
     stroke(255);
     fill(255);

     for (char y=0; y<screen_height; y++)
     {
       for (char x=0; x<screen_width; x++)
       {
         if (screen_buffer[x][y] == 1)
         {
           rect (x*scale_factor, y*scale_factor, scale_factor, scale_factor);
         }
      }
     }      
   }
   
   void clearDisplay()
   {
     screen_buffer = new char[screen_width][screen_height];
   }  
  
  /*
  Parameters
col: The column (0 to 95) (byte)
line: The vertical 8 pixel 'page' (0 to 7) (byte)
  */
   void setPos(int y, int x)
   {
     current_x = (x * 8);
     if (current_x > 63) current_x = 63;
     current_y = y;
     if (current_y > 127) current_y = 127;
   } 
   

   void print_P(char[] s)
   {
    for (int c=0; c<s.length; c++)
    {
      drawChar(s[c]);
    }     
   }

   
   void print(int n) {
     String num = Integer.toString(n);
     char[] buff = num.toCharArray();
     for (int c=0; c<buff.length; c++)
     {
       drawChar(buff[c]);
     }     
   }
   
   void drawChar(char c)
   {
       // Newline character. Bail.
       if (c == '\n') {
         current_x += 8;
         current_y = 0;
         return;
       }
     
      if (c < 32) c = 32;
       long d = font[c - 32];  // character data
       byte w = (byte)(d & 0x0F);  // character width
       byte b = (byte)((d >> 4) & 0x07); // character baseline offset
       int col = 0;
       
       for (; w > 0; --w)
       {
         for (int j=0; j<5;j++)
         {
           col = (col << 1) | (((int)d >> 31) & 1);
           d = d << 0x01;
         }  
         col = col << (b+1);

         drawByte((byte)col);
         current_y++;
       }
       current_y++;
   }
   
   void drawPixel(int x, int y)
   {
     if (x > 127) x = 127;
     if (y > 63) y = 63;
     if (x < 0) x = 0;
     if (y < 0) y = 0;
     screen_buffer[x][y] = 1;
   }

   void drawPixel(int x, int y,int p)
   {
     if (x > 127) x = 127;
     if (y > 63) y = 63;
     if (x < 0) x = 0;
     if (y < 0) y = 0;
     if (p==0)
     {
       screen_buffer[x][y] = 0;
     } else {
        screen_buffer[x][y] = 1;
     }
   }
   
   void drawSelfMasked(int x, int y, char[] sprite)
   {
     drawSelfMasked (x, y, sprite, 0);
   }
   
   void drawSelfMasked(int x, int y, char[] sprite,int frame)
   {
     int ptr = 0;
     int w = sprite[ptr];
     int h = sprite[++ptr];
     
     if (frame > 0)
     {
       int pixelsPerFrame = h * w;
       
       // Round up to the nearest 8 bits
       //sprite += ((pixelsPerFrame & 0x7 ? ((pixelsPerFrame &  0xfff8) + 8) : pixelsPerFrame) >> 3) * frame;
       if ((pixelsPerFrame & 7) == 0)
       {
         ptr += (pixelsPerFrame / 8) * frame;
       } else {
         ptr += ((pixelsPerFrame &  0xfff8) + 8) * frame;
       }
     }
     
     byte this_byte=0;
     int this_bit=8;
     int draw_bit=0;
  
      for (int i=0; i<w; i++) {
        for (int j=h; j>0; j--) {
          if (this_bit == 8) {
            ptr++;
            this_byte = (byte)sprite[ptr];
            this_bit=0;
          }
          draw_bit = (this_byte << this_bit) & 128;
          if (draw_bit > 0) drawPixel(x+i,y+j,draw_bit);
          this_bit++;
        }
      }     
     
   }
   
   //added for internal functions   
   void drawByte(byte data)
   {     
     for (byte pos=0; pos< 7; pos++)
     {
        if (isBitSet(data, pos)) 
        {
          if ((current_x+pos) < 63)  
          {
            if (current_y < 127)
            {
              screen_buffer[current_y][current_x+pos] = 1;
            }
          }
        }
     }
   }
   
   private Boolean isBitSet(byte b, int bit)
   {
      return (b & (1 << bit)) != 0;
   }
   
   void g_rect(int x1, int y1, int x2, int y2)
   {
    for (int x = x1; x <= x2; x++) {
       for (int y = y1; y <= y2; y++) {
          drawPixel((int)x, (int)y);
       }
    }
   } 
   
   
}