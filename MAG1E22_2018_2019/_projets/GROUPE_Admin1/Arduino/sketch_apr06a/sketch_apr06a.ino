// http://www.manuel-esteban.com/arduino-capteur-de-luminosite/

void setup()
{
  // Initialise la communication avec le PC
  Serial.begin(9600);
}

void loop()
{
  int valeur = analogRead(A0);
  int valeurMapped = map(valeur, 0, 1023, 0, 255); // remap the pot value to fit in 1 byte
  Serial.write(valeurMapped); // print it out the serial port
  delay(1);

}
