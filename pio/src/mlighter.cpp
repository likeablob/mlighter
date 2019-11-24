#include "mlighter.h"
#include "LedControl.h"
#include <Chrono.h>
#include <EEPROM.h>
#include <SimpleButton.h>

LedControl lc = LedControl(PIN_LED_DATA, PIN_LED_CLK, PIN_LED_CS, 1);
SimpleButton button(PIN_SW0);
Chrono scrollTask;

MLighter::MLighter() {}

void MLighter::begin() {
    lc.shutdown(0, false);
    lc.clearDisplay(0);

    pinMode(PIN_SENS, INPUT);
    button.begin();

    isReadingMode = button.read();
    if(isReadingMode) {
        lc.setIntensity(0, 8);
        memccpy(dispBuff, readModeIcon, sizeof(uint8_t), sizeof(readModeIcon));
        draw();
        blink();
        restartReading();
    } else {
        loadConfig();
        blink();
    }
}

void MLighter::handle() {
    if(isReadingMode) {
        read();
        return;
    }

    if(isScrollEnabled && scrollTask.hasPassed(100)) {
        scrollTask.restart();
        scroll();
    }

    uint32_t duration = button.getDuration();
    if(duration > 1000) { // On long press
        scrollPos = 0;
        isScrollEnabled = !isScrollEnabled;
        draw();
    } else if(duration > 100) { // On short press
        cycleBrightness();
    }
}

void MLighter::draw(uint8_t offset = 0) {
    // Transpose dispBuff for faster drawing
    for(size_t row = 0; row < 8; row++) {
        uint8_t rowByte = 0;
        for(size_t col = 0; col < 8; col++) {
            uint8_t buffCol =
                (offset + col) %
                (DISP_BUFF_SIZE + SCROLL_MARGIN); // Colum index of dispBuffer
            if(buffCol < DISP_BUFF_SIZE) {
                rowByte |= ((dispBuff[buffCol] >> (7 - row)) & 0b1)
                           << (7 - col);
            }
        }
        lc.setRow(0, row, rowByte);
    }
}

void MLighter::scroll() {
    draw((++scrollPos) % (DISP_BUFF_SIZE + SCROLL_MARGIN));
}
void MLighter::cycleBrightness() {
    intensity = (intensity + 5) % 16;
    lc.setIntensity(0, intensity);
    EEPROM[EEPROM_ADDR_BRIGHTNESS] = intensity;
}

void MLighter::blink() {
    for(size_t i = 0; i < 90; i++) {
        uint8_t tmp = sinf(i / 30.0 * PI) * 15;

        lc.setIntensity(0, tmp);
        if(tmp == intensity && i > 60) {
            break;
        }
        delay(10);
    }
}

bool MLighter::isBright() { return digitalRead(PIN_SENS); }

void MLighter::restartReading() {
    readCounter = 0;
    memset(dispBuff, 0, DISP_BUFF_SIZE);
}
void MLighter::read() {
    uint32_t start = millis();
    while(!isBright()) {
        if(millis() - start > RESET_DURATION) {
            restartReading();
        }
    }

    start = millis();
    while(true) {
        bool pulseEnd = true;
        for(size_t i = 0; i < 3; i++) {
            pulseEnd = pulseEnd && !isBright();
            delay(1);
        }
        if(pulseEnd) {
            break;
        }

        if(millis() - start > RESET_DURATION) {
            restartReading();
            return;
        }
    }
    int16_t pulse = millis() - start;
    bool isFinished = false;
    if(WITHIN(pulse, PULSE_WIDTH_A, PULSE_MARGIN)) {
        uint8_t bitPos = readCounter % 8;
        uint8_t bytePos = readCounter / 8;
        dispBuff[bytePos] |= 1 << (7 - bitPos);
        readCounter++;
    } else if(WITHIN(pulse, PULSE_WIDTH_B, PULSE_MARGIN)) {
        readCounter++;
    } else if(WITHIN(pulse, PULSE_WIDTH_C, PULSE_MARGIN)) {
        isFinished = true;
    } else {
        restartReading();
        return;
    }

    draw(); // Draw the intermediate data

    if(isFinished && !(readCounter % 8)) {
        readCounter = 0;
        for(size_t i = 0; i < DISP_BUFF_SIZE; i++) {
            EEPROM[i] = dispBuff[i];
        }
        blink();
        return;
    }

    if(readCounter > DISP_BUFF_BITLEN) { // Something went wrong
        restartReading();
        return;
    }

    static bool enableIndicator = false;
    lc.setLed(0, 7, 7, enableIndicator);
    enableIndicator = !enableIndicator;
}

void MLighter::loadConfig() {
    intensity = EEPROM[EEPROM_ADDR_BRIGHTNESS] % 16;
    lc.setIntensity(0, intensity);

    for(size_t i = 0; i < DISP_BUFF_SIZE; i++) {
        dispBuff[i] = EEPROM[EEPROM_ADDR_BUFF + i];
    }
    draw();
}
