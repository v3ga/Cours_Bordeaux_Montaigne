// ------------------------------------
void setup()
{
  pinMode(9, OUTPUT);
  Serial.begin(9600);
}

// ------------------------------------
void loop()
{
  // Lecture de la luminsité sur l'entrée analogique A0
  int luminosite = analogRead(A0);
  // On imprime la valeur sur le port série
  Serial.println(luminosite);
  if (luminosite>800)
  {
    digitalWrite(9,HIGH);
  }
  else
  {
    digitalWrite(9,LOW);
  }
}

