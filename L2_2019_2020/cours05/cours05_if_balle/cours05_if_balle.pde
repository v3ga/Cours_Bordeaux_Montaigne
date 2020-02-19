float positionx = 200;
float positiony = 200;
float vitessex = 10.0;
float vitessey = 0.0;
float diametre = 50;

void setup() 
{
  size(400, 400);
  surface.setTitle("cours 05 / if / balle");
  diametre = random(10,100);
}

void draw() 
{
  // background(220);
  positionx = positionx + vitessex;
  positiony = positiony + vitessey;
  if (positionx > 400)
  {
    positionx = 0;
    positiony = random(0,400);
    diametre = random(10,100);
    fill( random(0,255), 10 );
  }
  noStroke();
  ellipse(positionx,positiony,diametre,diametre);
}
