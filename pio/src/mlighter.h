#pragma once

#include "config.h"
#include <Arduino.h>

#define WITHIN(value, th, delta)                                               \
    ((th - delta <= value) && (value <= th + delta))

#define DISP_BUFF_SIZE 8
#define DISP_BUFF_BITLEN (DISP_BUFF_SIZE * 8)
#define PULSE_WIDTH_A (33 * 1)
#define PULSE_WIDTH_B (33 * 3)
#define PULSE_WIDTH_C (33 * 6)
#define RESET_DURATION 800
#define PULSE_MARGIN 30
#define EEPROM_ADDR_BUFF 0
#define EEPROM_ADDR_BRIGHTNESS (EEPROM_ADDR_BUFF + DISP_BUFF_SIZE)
#define SCROLL_MARGIN 2 // Number of whitespaces

const uint8_t readModeIcon[8] = {0x0, 0x7f, 0x48, 0x48, 0x4c, 0x4a, 0x31, 0x0};

class MLighter {
  private:
    uint8_t dispBuff[DISP_BUFF_SIZE];
    uint16_t readCounter;
    uint8_t intensity;
    uint16_t scrollPos;
    bool isReadingMode;
    bool isScrollEnabled;
    void draw(uint8_t offset = 0);
    void scroll();
    void cycleBrightness();
    bool isBright();
    void read();
    void restartReading();
    void loadConfig();

  public:
    MLighter();
    void begin();
    void handle();
    void blink();
};
