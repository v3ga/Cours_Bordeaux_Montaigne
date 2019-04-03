// --------------------------------------
void setup()
{
  // On définit le pin 13 en tant que sortie -> on peut « écrire » une valeur dessus (HIGH or LOW)
  pinMode(13, OUTPUT);
  // On démarre l'écoute sur le port série de l'arduino
  Serial.begin(9600);
}

// --------------------------------------
void loop()
{
  // Si des données sont disponibles sur le port série
  if (Serial.available() > 0) 
  { 
    // On lit la valeur
    int valeurIn = Serial.read();   // read it
    // Si celle-ci est supérieure à 0
    // On place la valeur de la sortie 13 à HIGH
    if (valeurIn > 0)
      digitalWrite(13, HIGH);
    // Sinon à LOW
    else
      digitalWrite(13, LOW);
  }
}
