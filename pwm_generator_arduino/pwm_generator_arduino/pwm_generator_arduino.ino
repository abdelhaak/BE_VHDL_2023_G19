#include <TimerOne.h>

const int pwmPin = 9; // Port de la sortie de signal PWM

void setup() {
  pinMode(pwmPin, OUTPUT);
  // Mise en marche le timer avec les valeurs de fréquence et DUTY
  Timer1.initialize(4); // en microseconds -> 4ms => 255 Hz je pense
  Timer1.pwm(pwmPin, 512); // 50% DUTY (0 à 1023)  
}

void loop() {
  //delay(2000);
  // Your main code goes here
}
