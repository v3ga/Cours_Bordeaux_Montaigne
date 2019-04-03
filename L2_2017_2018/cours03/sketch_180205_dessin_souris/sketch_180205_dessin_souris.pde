void setup()
{
  size(500,500);
}

void draw()
{
  // noFill();
  // stroke(0,0,0,60);
  noStroke();
  fill(mouseX/500.0*255,0,0);
  ellipse(mouseX,mouseY, mouseX, mouseX);
}

// Gestionnaire d'évènements souris
void mousePressed()
{
  saveFrame("export.png");
}

// Gestionnaire d'évènements claviers
void keyPressed()
{
  background(100);
}