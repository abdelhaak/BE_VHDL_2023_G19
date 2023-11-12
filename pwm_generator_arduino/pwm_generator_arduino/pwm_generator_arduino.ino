#include <TimerOne.h>

const int pwmPin = 9; // Choose the PWM pin you want to use

void setup() {
  pinMode(pwmPin, OUTPUT);

  // Set up Timer1 with a frequency of 1 kHz
  Timer1.initialize(1000); // in microseconds -> 102ms => 9,8 Hz
  Timer1.pwm(pwmPin, 371); // 37% duty cycle (0 to 1023)
}

void loop() {
  //delay(2000);
  // Your main code goes here
}
