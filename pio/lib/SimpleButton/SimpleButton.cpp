#include "SimpleButton.h"

SimpleButton::SimpleButton(uint8_t pin) : pin(pin) {}

void SimpleButton::begin() { pinMode(pin, INPUT_PULLUP); }

bool SimpleButton::read() { return !digitalRead(pin); }

uint32_t SimpleButton::getDuration() {
    bool isPressed = read();

    if(isPressed && isPressed != prevStatus) {
        prevStatus = isPressed;
        prev = millis();
        return 0;
    } else if(!isPressed && isPressed != prevStatus) {
        prevStatus = isPressed;
        if(!prev) {
            return 0;
        }
        return millis() - prev;
    }
    return 0;
}
