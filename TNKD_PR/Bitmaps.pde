class Bitmaps
{
  
final char TeamARG_logo[] = {
  // width, height
  32, 40,
  //         ########                                                                                       ########
  //         ###########                                                                                   ##      ##
  //         ####    ##################                                                                   ##  #### ###
  //         #### ##    ################ ####################           #############         ######     ##  ##  # ####
  //         #### #####                #######################       ##################      ########   ##  ###  # #####
  //         #### ##  ######  ######## ##                   ###     ####            ####     ##     ## ##  ####### #  ###
  // ####### ####  #  ####### #####  #  # #################  ##    ###   ##########   ###   ##  ###  ###  ###  ### #   ### ##########
  //         ##### ##########  ####  ## #  ################# ##   ###  ##############   ##  ## #####  #  ###    ## ##  ###
  //         ##### ########### ######## #   ################  #   ##  #################  ####  ######   ####    ## ########
  // ##### # #####             ########     ################# #  ##  #######    ######## #### ######## ######  ### ########  # # ####
  // #  #    ###### ####################    ################# #  ## #######      #######  ##  #################### ########      #  #
  // #  # #  ###### ####################     #######          # ##  ######       ####  ## ## #################  ## ######## # #  #  #
  // ####    ######  #  ################     ##############   # ## #######       ####  ## #  #################  ## ########      ####
  // ####  # ####### #  #################  # ##############   ###  ######       ######### # ###################### ########  # # ####
  // ####    ####### ####################  # ###############  ### #######       ########    #####################  ########      ####
  // #### #   ######        #########      # ###############  ##  ######       #########   ###################### ######### # #  ####
  // ####     #####          ########     ##  ############## ### ######################    ###################### #########     #####
  // ##### #  #####          #########    ### ########        #  ######################   ####################### ########   #  #####
  // #####     ###            ########    ### ###############   ######################    ####################### ########      #####
  // ###### #  ###         #  #########  #### ################  #######      #########   ######## ############### ########  # # #####
  // ######    ##          #   ########  ####  ################  ######      ########    #######  ############### ########      #####
  // ####### #  #         ###  ######### ##### ################# #####       ########   ########   ###### ####### ######## # # ######
  // #######    #         ###   ########  #### #  ############## #####      ########    #######    #####  ####### ########     ######
  // ######## # ######## #####  ##  ##### #### #  ########                  ###  ###    #######     ###   ######  ########  #  ######
  // ########          # #####   #  ##### #### #####             #         ####  ##                 ##    ###  # #########     ######
  // #  ###### # # # # ########  #####    ####                ## #         ########           ##          ###  # ######### # # ###  #
  // #  ######          #######           ####                ## #     ###                     #            #### #########     ###  #
  // ########## # # # # #########         # ##                   #     ###             ##      ##             ## #########  # #######
  //                    ########         ## ##                   #    ####             ##       #                ########
  //         ###         #######         #  ##              ######    ####            ####      ##  #    #       ########
  // ######### ######    ######         ##   #       #####################            # ##       #  ##  ####      #######   #########
  //       ##   ##       ######         #    ################            ############## ######################     ######
  //      ##     ##   ## #####         ## ## #########                   ############    #######################    #####
  //     ## ##    ##  ##  ####         #  ##                                                  ##     #############   #### ##
  //     #  ##     #      ###         ##          ########    ##########      #########       ##     ##### #########  ### ##
  //     ##       ##      ###     #####          ##########   ###########    ###########           ######      ##########
  //      ##   # ##       #############         ############  ############   ###########          ####            #######   ###
  //       ##   ##   ###  ########  ####        ############  #####  #####  #####   ####       ## ####    ###               # #
  //        ## ##    # #            ####        #####   ####  #####   ####  ####               ##  ##     # #               ###
  //         ###     ###             ##         #####   ####  #####   ###   ####   ######                 ###
  //                                            ############  ##########    #####  ######
  //                                            ###########      ########      ########
  //                                            ########### #### ## ##### #### ######## ####
  //                                            #####   ### #  # ##  #### #  # ######## #  #
  //                                            #####   ### #### ##   ### #### ######## ####
  //
  //
  //
  // part 1
  0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x83, 0x3B, 0xFB, 0x93, 0x96, 0xF6, 0xE6, 0xEC, 0xEC, 0xEC, 0xEC, 0xCC, 0x0C, 0x6C, 0xEC, 0xEC, 0xEC, 0xEC, 0x2C, 0x2C,
  0xFE, 0xF2, 0xF2, 0xFE, 0x02, 0x88, 0x22, 0x00, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFC, 0xE1, 0x0D, 0x7D, 0x4D, 0x4D, 0x7D, 0x7D, 0x7D, 0x7D, 0xFD, 0xFD, 0xFC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xF8, 0xE2, 0x88, 0x20, 0x83, 0x1F, 0xFF, 0x8F, 0x83, 0x80, 0x80, 0x80, 0x80, 0x80, 0x00, 0x80, 0xE0, 0xF8, 0xE0, 0x83, 0x0F, 0x3F, 0xFF, 0xFF, 0x7F, 0x7F, 0xFF,
  0x4F, 0x49, 0x49, 0x4F, 0x4F, 0x4F, 0xCF, 0xCF, 0x6E, 0x28, 0x62, 0xC8, 0xC2, 0x48, 0x42, 0x48, 0x02, 0x08, 0x03, 0x1E, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0x38, 0x08, 0x03, 0x02, 0x02, 0x03,
  0x00, 0x00, 0x00, 0x00, 0x0E, 0x1B, 0x31, 0x66, 0xC6, 0x80, 0xD0, 0x60, 0x31, 0x1B, 0x0E, 0x00, 0xE0, 0xA3, 0xE3, 0x00, 0x01, 0x3F, 0x3F, 0x3F, 0x33, 0x30, 0x30, 0x30, 0x30, 0x18, 0x18, 0x78,
  // part 2
  0xEC, 0x8C, 0x38, 0xF0, 0x18, 0x58, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0x98, 0x38, 0xF0, 0xE0, 0x00, 0x00, 0x00, 0x80, 0xC0, 0xE0,
  0x7F, 0x7F, 0x7C, 0x61, 0x00, 0x00, 0xE0, 0x07, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xC7, 0x06, 0x00, 0xFF, 0xE0, 0x78, 0x1E, 0xC7, 0xF1, 0xFC,
  0xFE, 0xF8, 0xE0, 0x80, 0x38, 0xFF, 0xFF, 0xFE, 0xE0, 0x0F, 0xFF, 0x3F, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFD, 0xFD, 0xFD, 0xFD, 0x7D, 0x7D, 0x7C, 0x79, 0x73, 0x61, 0x0C, 0x7F, 0x7F, 0x7F, 0x7F,
  0x03, 0x01, 0x01, 0xC1, 0x70, 0x1F, 0x07, 0x3F, 0xFF, 0x80, 0x81, 0x81, 0x81, 0x81, 0x81, 0x80, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xE0, 0x60, 0x66, 0x66, 0x60, 0x7F, 0x40, 0x40, 0x40,
  0xF8, 0xFC, 0x67, 0x01, 0x00, 0x03, 0x03, 0x00, 0x01, 0x01, 0x01, 0xF1, 0xF9, 0xFD, 0xFD, 0xFD, 0x3D, 0x3C, 0x3C, 0xFC, 0xFC, 0xF8, 0xF0, 0x00, 0x00, 0xFC, 0xFC, 0xFC, 0xFC, 0xFC, 0x1C, 0x1C,
  // part 3
  0x70, 0x30, 0xB0, 0x98, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0xD8, 0x98, 0xB8, 0x30, 0x70, 0x60, 0xC0, 0x80, 0x00, 0x00, 0xC0, 0xF0, 0x38, 0x98, 0xD8, 0xD8, 0xD8, 0x98, 0x30,
  0xFE, 0xFF, 0xFF, 0x7F, 0x1F, 0x07, 0x03, 0x01, 0x01, 0x01, 0x81, 0xE3, 0xFF, 0xFF, 0xFF, 0xFF, 0xE7, 0xE7, 0xFE, 0x38, 0x03, 0x3F, 0x8F, 0xE3, 0xF8, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0x7F, 0x1F, 0x07, 0x07, 0x07, 0x07, 0x07, 0xC7, 0xFF, 0xFF, 0x7F, 0x7F, 0xFF, 0xFF, 0xFF, 0x3F, 0x0F, 0x03, 0x00, 0xE0, 0xF8, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0x3F, 0x0F, 0x07, 0x1F, 0x7F, 0xFF,
  0x40, 0x70, 0x7C, 0x7C, 0xFC, 0x80, 0x83, 0x83, 0x83, 0x83, 0x82, 0x82, 0x83, 0x83, 0x80, 0x80, 0x80, 0xE0, 0x38, 0xF8, 0xE0, 0x80, 0x80, 0x80, 0x80, 0x82, 0x8E, 0xB8, 0xE0, 0x80, 0x80, 0xE1,
  0x3C, 0xFC, 0xFC, 0xF8, 0x71, 0x01, 0x01, 0xE1, 0xF9, 0xFD, 0xFD, 0x3D, 0x1D, 0x1D, 0x9D, 0xBD, 0xBC, 0xBC, 0xB8, 0x80, 0x01, 0x01, 0x01, 0x01, 0x01, 0x07, 0x67, 0x61, 0x01, 0x31, 0x79, 0x79,
  // part 4
  0x60, 0xC0, 0x60, 0x30, 0x98, 0xCC, 0xE6, 0x73, 0x39, 0x3D, 0x65, 0xE5, 0xFD, 0x01, 0xFF, 0x9E, 0x1C, 0x38, 0xF0, 0xE0, 0xC0, 0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40,
  0xFE, 0xFC, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFC, 0xE4, 0xE6, 0xFF, 0x3F, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x88, 0x22, 0x88, 0x22, 0x00, 0xFE, 0xF2, 0xF2, 0xFE,
  0xFF, 0xFF, 0x7F, 0x3F, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7F, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x20, 0x88, 0x22, 0x08, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xC1, 0x80, 0x80, 0xC0, 0xE0, 0xC3, 0xC3, 0x87, 0x84, 0x0C, 0x0F, 0x00, 0x3F, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0x02, 0x48, 0x42, 0x48, 0x4F, 0x4F, 0x4F, 0x49, 0x49, 0x4F,
  0x3F, 0x0F, 0x0F, 0x0F, 0x07, 0xE3, 0xA7, 0xE7, 0x07, 0x07, 0x0F, 0x0E, 0x0E, 0x1C, 0x1C, 0x19, 0x1B, 0x1F, 0x1F, 0x1F, 0x00, 0x06, 0x06, 0x70, 0x50, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

final char TEAM_argPart5[] = {
// width, height
44, 8,
0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x07, 0x07, 0x07, 0x1F, 0x1F, 0x1F, 0x01, 0x1C, 0x14, 0x15, 0x1D, 0x01, 0x1F, 0x1F, 0x03, 0x07, 0x0F, 0x1F, 0x1F, 0x1E, 0x00, 0x1C, 0x14, 0x15, 0x1D, 0x01, 0x1F, 0x1F, 0x1E, 0x1E, 0x1F, 0x1F, 0x1F, 0x1F, 0x01, 0x1D, 0x14, 0x14, 0x1C
};  

final char menuText[] = {
  // width, height
  20, 8,
  // HELP
  0x7F, 0x41, 0x77, 0x77, 0x41, 0x7F, 0x41, 0x55, 0x55, 0x5D, 0x7F, 0x41, 0x5F, 0x5F, 0x7F, 0x41, 0x75, 0x75, 0x71, 0x7F,
  // PLAY
  0x7F, 0x41, 0x75, 0x75, 0x71, 0x7F, 0x41, 0x5F, 0x5F, 0x7F, 0x41, 0x75, 0x75, 0x41, 0x7F, 0x71, 0x77, 0x47, 0x71, 0x7F,
  // INFO
  0x7F, 0x5D, 0x41, 0x5D, 0x7F, 0x41, 0x7B, 0x77, 0x41, 0x7F, 0x41, 0x75, 0x75, 0x7D, 0x7F, 0x41, 0x5D, 0x5D, 0x41, 0x7F,
  // CONF
  0x7F, 0x41, 0x5D, 0x5D, 0x5D, 0x7F, 0x41, 0x5D, 0x5D, 0x41, 0x7F, 0x41, 0x7B, 0x77, 0x41, 0x7F, 0x41, 0x75, 0x75, 0x7F,
  // SFX
  0x7F, 0x51, 0x55, 0x55, 0x45, 0x7F, 0x41, 0x75, 0x75, 0x7D, 0x7F, 0x49, 0x77, 0x77, 0x49, 0x7F, 0x00, 0x00, 0x00, 0x00,
  // OFF
  0x7F, 0x41, 0x5D, 0x5D, 0x41, 0x7F, 0x41, 0x75, 0x75, 0x7D, 0x7F, 0x41, 0x75, 0x75, 0x7D, 0x7F, 0x00, 0x00, 0x00, 0x00,
  // ON
  0x7F, 0x41, 0x5D, 0x5D, 0x41, 0x7F, 0x41, 0x7B, 0x77, 0x41, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

final char[] tank1_bitmap = {
8,8,
(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("10101010", 2),
(char)Integer.parseInt("11101110", 2),
(char)Integer.parseInt("11000110", 2),
(char)Integer.parseInt("11000110", 2),
(char)Integer.parseInt("11101110", 2),
(char)Integer.parseInt("10111010", 2),
(char)Integer.parseInt("00000000", 2),

(char)Integer.parseInt("00010000", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("01111010", 2),
(char)Integer.parseInt("11100110", 2),
(char)Integer.parseInt("00100111", 2),
(char)Integer.parseInt("00011110", 2),
(char)Integer.parseInt("00001100", 2),
(char)Integer.parseInt("00001000", 2),

(char)Integer.parseInt("01111110", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("01100110", 2),
(char)Integer.parseInt("01000000", 2),
(char)Integer.parseInt("01100110", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("01111110", 2),
(char)Integer.parseInt("00000000", 2),

(char)Integer.parseInt("00001000", 2),
(char)Integer.parseInt("00001100", 2),
(char)Integer.parseInt("00011110", 2),
(char)Integer.parseInt("00100111", 2),
(char)Integer.parseInt("11100110", 2),
(char)Integer.parseInt("01111010", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("00010000", 2),

(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("01011101", 2),
(char)Integer.parseInt("01110111", 2),
(char)Integer.parseInt("01100011", 2),
(char)Integer.parseInt("01100011", 2),
(char)Integer.parseInt("01110111", 2),
(char)Integer.parseInt("01010101", 2),
(char)Integer.parseInt("00000000", 2),

(char)Integer.parseInt("00010000", 2),
(char)Integer.parseInt("00110000", 2),
(char)Integer.parseInt("01111000", 2),
(char)Integer.parseInt("11100100", 2),
(char)Integer.parseInt("01100111", 2),
(char)Integer.parseInt("01011110", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("00001000", 2),

(char)Integer.parseInt("01111110", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("01100110", 2),
(char)Integer.parseInt("00000010", 2),
(char)Integer.parseInt("01100110", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("01111110", 2),
(char)Integer.parseInt("00000000", 2),

(char)Integer.parseInt("00001000", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("01011110", 2),
(char)Integer.parseInt("01100111", 2),
(char)Integer.parseInt("11100100", 2),
(char)Integer.parseInt("01111000", 2),
(char)Integer.parseInt("00110000", 2),
(char)Integer.parseInt("00010000", 2)
};
//
final char[] tank2_bitmap = {
 8,8,
(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("00010000", 2),
(char)Integer.parseInt("11010110", 2),
(char)Integer.parseInt("10111010", 2),
(char)Integer.parseInt("10111010", 2),
(char)Integer.parseInt("11010110", 2),
(char)Integer.parseInt("01101100", 2),
(char)Integer.parseInt("00000000", 2),


(char)Integer.parseInt("00110000", 2),
(char)Integer.parseInt("01110100", 2),
(char)Integer.parseInt("11001000", 2),
(char)Integer.parseInt("10110110", 2),
(char)Integer.parseInt("10110110", 2),
(char)Integer.parseInt("01001100", 2),
(char)Integer.parseInt("00111000", 2),
(char)Integer.parseInt("00000000", 2),


(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("01100100", 2),
(char)Integer.parseInt("01011000", 2),
(char)Integer.parseInt("00111110", 2),
(char)Integer.parseInt("01011000", 2),
(char)Integer.parseInt("01100100", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("00000000", 2),


(char)Integer.parseInt("00011100", 2),
(char)Integer.parseInt("00100110", 2),
(char)Integer.parseInt("01011011", 2),
(char)Integer.parseInt("01011011", 2),
(char)Integer.parseInt("01100100", 2),
(char)Integer.parseInt("00111010", 2),
(char)Integer.parseInt("00011000", 2),
(char)Integer.parseInt("00000000", 2),

(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("00110110", 2),
(char)Integer.parseInt("01101011", 2),
(char)Integer.parseInt("01011101", 2),
(char)Integer.parseInt("01011101", 2),
(char)Integer.parseInt("01101011", 2),
(char)Integer.parseInt("00001000", 2),
(char)Integer.parseInt("00000000", 2),

(char)Integer.parseInt("00011100", 2),
(char)Integer.parseInt("00110010", 2),
(char)Integer.parseInt("01101101", 2),
(char)Integer.parseInt("01101101", 2),
(char)Integer.parseInt("00010011", 2),
(char)Integer.parseInt("00101110", 2),
(char)Integer.parseInt("00001100", 2),
(char)Integer.parseInt("00000000", 2),


(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("00100110", 2),
(char)Integer.parseInt("00011010", 2),
(char)Integer.parseInt("01111100", 2),
(char)Integer.parseInt("00011010", 2),
(char)Integer.parseInt("00100110", 2),
(char)Integer.parseInt("00111100", 2),
(char)Integer.parseInt("00000000", 2),


(char)Integer.parseInt("00001100", 2),
(char)Integer.parseInt("00101110", 2),
(char)Integer.parseInt("00010011", 2),
(char)Integer.parseInt("01101101", 2),
(char)Integer.parseInt("01101101", 2),
(char)Integer.parseInt("00110010", 2),
(char)Integer.parseInt("00011100", 2),
(char)Integer.parseInt("00000000", 2),

};

final char[] bullet_bitmap = {
 8,8,
(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("00011000", 2),
(char)Integer.parseInt("00011000", 2),
(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("00000000", 2),
(char)Integer.parseInt("00000000", 2),

};

final char wall_bitmap[] = {

8,8,
(char)Integer.parseInt("01111110", 2),
(char)Integer.parseInt("10000001", 2),
(char)Integer.parseInt("10111101", 2),
(char)Integer.parseInt("10111001", 2),
(char)Integer.parseInt("10110001", 2),
(char)Integer.parseInt("10100101", 2),
(char)Integer.parseInt("10000001", 2),
(char)Integer.parseInt("01111110", 2),

};
}