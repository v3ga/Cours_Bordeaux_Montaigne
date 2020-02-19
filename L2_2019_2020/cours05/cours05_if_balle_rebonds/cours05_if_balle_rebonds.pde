var positionx = 200;
var positiony = 200;
var vitessex = 10.0;
var vitessey = 5.0;
var diametre = 20;

function setup() {
  createCanvas(400, 400);
}

function draw() 
{
  positionx = positionx + vitessex;
  positiony = positiony + vitessey;
  diametre = mouseX;
  // Rebond à droite
  if (positionx > width)
  {
    vitessex = -vitessex;
  }
  // Rebond à gauche 
  if (positionx < 0)
  {
    vitessex = -vitessex;
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
  //noFill();
  circle(positionx,positiony,diametre);
}
