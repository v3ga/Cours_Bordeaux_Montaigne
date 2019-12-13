/* Sweep
  by BARRAGAN <http://barraganstudio.com>
  This example code is in the public domain.

  modified 8 Nov 2013
  by Scott Fitzgerald
  http://www.arduino.cc/en/Tutorial/Sweep
*/

#include <Servo.h>

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards
int incomingByte = 0; // for incoming serial data
int pos = 0;    // variable to store the servo position

void setup()
{
  Serial.begin(9600);
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object
  myservo.write(0);
  pinMode(13, OUTPUT);
}

void loop()
{
  if (Serial.available() > 0)
  {
    // read the incoming byte:
    incomingByte = Serial.read();

    // say what you got:
    Serial.print("I received: ");
    Serial.println(incomingByte, DEC);

    if (incomingByte == 0)
    {
      pos = 0;
      digitalWrite(13, LOW);   // turn the LED on (HIGH is the voltage level)
    }
    if (incomingByte == 1)
    {
      pos = 90;
      digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    }
    if (incomingByte == 2)
    {
      pos = 180;
      digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    }
    myservo.write(pos);              // tell servo to go to position in variable 'pos'

  }
}

