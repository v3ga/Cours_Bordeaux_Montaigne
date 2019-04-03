void setup()
{
  size(500,500);
}

void draw()
{
  // Si la souris est "à droite" de la fenêtre
  //if ( mouseX > 250 )
  if ( dist(250,250,mouseX,mouseY) < 100 )
  {
    fill(200,0,0);
  }
  else
  {
    fill(0,200,0);
  }
  
  ellipse(mouseX, mouseY, 30, 30);
}