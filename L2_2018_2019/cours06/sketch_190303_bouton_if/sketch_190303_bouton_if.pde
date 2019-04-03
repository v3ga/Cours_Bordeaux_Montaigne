// position du bouton en x et y 
int xB = 10;
int yB = 10;

// dimensions du bouton
int wB = 100;
int hB = 20;

// Couleurs
color couleurFond = color(200);
color couleurOut = color(0); // couleur lorsque le bouton n'est pas survolé (état « roll out »)
color couleurOver = color(200,0,100); // couleur lorsque le bouton est survolé (état « roll over »)
color couleurTexte = color(255);

void setup()
{
  size(200,200);
}

void draw()
{
  background(couleurFond);
  if (mouseX >= xB && mouseX <=(xB+wB) && mouseY >= yB && mouseY <= (yB+hB))
  {
    fill(couleurOver);
  }
  else
  {
    fill(couleurOut);
  }
  noStroke();
  rect(xB,yB,wB,hB);

  fill(couleurTexte);
  textAlign(CENTER);
  text("click !",xB,yB+2,wB,hB);
}

void mousePressed()
{
  if (mouseX >= xB && mouseX <=(xB+wB) && mouseY >= yB && mouseY <= (yB+hB))
  {
    couleurFond = color( random(75,200) );  
  }
}