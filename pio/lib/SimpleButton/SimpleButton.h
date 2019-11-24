#pragma once

#include "Arduino.h"

class SimpleButton {
  private:
    uint8_t pin;
    uint64_t prev;
    bool prevStatus;

  public:
    SimpleButton(uint8_t pin);
    void begin();
    bool read();
    uint32_t getDuration();
};
