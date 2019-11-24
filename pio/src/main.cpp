#include "mlighter.h"
#include <Arduino.h>

MLighter mlighter = MLighter();

void setup() { mlighter.begin(); }

void loop() { mlighter.handle(); }
