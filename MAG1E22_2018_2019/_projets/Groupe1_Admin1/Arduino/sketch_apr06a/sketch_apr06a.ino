void setup() {
  // Initialise la communication avec le PC
  Serial.begin(9600);

}

void loop() {
 int valeur = analogRead(A0);
 Serial.println(valeur);
  delay(250);

}
