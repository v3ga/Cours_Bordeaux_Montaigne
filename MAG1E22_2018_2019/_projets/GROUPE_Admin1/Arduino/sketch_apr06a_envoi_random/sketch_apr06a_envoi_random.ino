void setup()
{
  // Initialise la communication avec le PC
  Serial.begin(9600);
}

void loop()
{
  Serial.write(random(255));                             // print it out the serial port
  delay(1);
}
