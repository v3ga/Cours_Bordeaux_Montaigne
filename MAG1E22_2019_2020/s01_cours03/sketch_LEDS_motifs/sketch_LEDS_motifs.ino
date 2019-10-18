int d = 250;
int mode = 0;

void setup()
{
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
}

void loop()
{
  if (mode == 0)
  {
    allerRetour();
  }
  else if (mode == 1)
  {
    collision();    
  }
  else if (mode == 2)
  {
    collision();    
    allerRetour();
    collision();    
  }
}

void collision()
{
    allumeLEDS(HIGH, LOW, LOW, HIGH); // appelle la fonction
    allumeLEDS(LOW, HIGH, HIGH, LOW); // appelle la fonction
}

void allerRetour()
{
  allumeLEDS(HIGH, LOW, LOW, LOW); // appelle la fonction
  allumeLEDS(LOW, HIGH, LOW, LOW); // appelle la fonction
  allumeLEDS(LOW, LOW, HIGH, LOW); // appelle la fonction
  allumeLEDS(LOW, LOW, LOW, HIGH); // appelle la fonction
  allumeLEDS(LOW, LOW, HIGH, LOW); // appelle la fonction
  allumeLEDS(LOW, HIGH, LOW, LOW); // appelle la fonction

}

// définit un nouveau gestionnaire (une fonction)
void allumeLEDS(int a, int b, int c, int e)
{
  digitalWrite(13, a);
  digitalWrite(12, b);
  digitalWrite(11, c);
  digitalWrite(10, e);
  delay(d);
}
