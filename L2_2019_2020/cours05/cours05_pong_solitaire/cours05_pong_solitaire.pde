float positionx = 200;
float positiony = 200;
float vitessex = 10.0;
float vitessey = 5.0;
float diametre = 10;
float raquettey = 200;
float raquettew = 10;
float raquetteh = 50;

void setup() 
{
  size(400, 400);
  surface.setTitle("cours 05 / pong solitaire");
}

void draw() 
{
  background(0);
  positionx = positionx + vitessex;
  positiony = positiony + vitessey;
  raquettey = mouseY;

  if (positionx > width)
  {
    vitessex = -vitessex;
  }

  // Rebond à gauche 
  if (positionx < raquettew)
  {
    // Rebond sur la raquette
    if (positiony > raquettey && positiony < raquettey+raquetteh)
    {
      vitessex = -vitessex;
    }
    // Sinon perdu et balle au centre avec vitesse positive aléatoire
    else
    {
      positionx = width/2;
      positiony = height/2;
      vitessex = random(2,10);
    }
    
    
  }
  // Rebond en haut  
  if (positiony < 0)
  {
    vitessey = -vitessey;
  }
  // Rebond en bas
  if (positiony > height)
  {
    vitessey = -vitessey;
  }
  fill(255);
  noStroke();
  ellipse(positionx,positiony,diametre,diametre);
  rect(0,raquettey,raquettew,raquetteh);




}
