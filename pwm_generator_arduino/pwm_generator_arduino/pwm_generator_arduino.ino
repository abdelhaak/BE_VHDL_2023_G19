#include <TimerOne.h>

const int pwmPin = 9; // Port de la sortie de signal PWM

void setup() {
  pinMode(pwmPin, OUTPUT);
  // Mise en marche le timer avec les valeurs de fréquence et DUTY
  Timer1.initialize(102000); // en microseconds -> 102ms => 9,8 Hz
  Timer1.pwm(pwmPin, 180); // 37% DUTY (0 à 1023)  -> 360º
}

void loop() {
  //delay(2000);
  // Your main code goes here
}
