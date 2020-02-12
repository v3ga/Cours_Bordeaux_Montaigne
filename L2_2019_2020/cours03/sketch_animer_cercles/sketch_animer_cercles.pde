void setup() 
{
  size(400, 400);
  surface.setTitle("Cours 03 / Animer / Cercles");
}

void draw() 
{
  stroke(0,0,0,20);
  noFill();
  if (mousePressed)
  ellipse(mouseX,mouseY, mouseX-200, mouseX-200);
}

void keyPressed()
{
  saveFrame("export.png");
}
