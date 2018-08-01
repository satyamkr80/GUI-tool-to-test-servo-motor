#include <Servo.h>

Servo servo1; Servo servo2; Servo servo3; 


void setup() {

  servo1.attach(9);
  servo2.attach(10);
    servo3.attach(11);

  Serial.begin(115200);
  Serial.println("Ready");

}

void loop() {

  static int v = 0;

  if ( Serial.available()) {
    char ch = Serial.read();

    switch(ch) {
      case '0'...'9':
        v = v * 10 + ch - '0';
        break;
      case 'a':
        servo1.write(v);
        Serial.println(v);
        v = 0;
        break;
      case 'b':
        servo2.write(v);
        Serial.println(v);
        v = 0;
        break;
      case 'c':
        servo3.write(v);
        Serial.println(v);
        v = 0;
        break;
    }
  }

} 
